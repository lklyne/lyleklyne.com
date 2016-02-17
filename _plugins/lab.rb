/ Duplicate of the portfolio.rb plugin converted to create lab.html /


module Jekyll
  class LabIndex < Page
    def initialize(site, base, dir)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'lab.html')
      self.data['projects'] = self.get_projects(site)
    end

    def get_projects(site)
      {}.tap do |projects|
        Dir['_labs/*.yml'].each do |path|
          name   = File.basename(path, '.yml')
          config = YAML.load(File.read(File.join(@base, path)))
          projects[name] = config if config['published']
        end
      end
    end
  end

  class SingleLabIndex < Page
    def initialize(site, base, dir, path)
      @site     = site
      @base     = base
      @dir      = dir
      @name     = "index.html"
      self.data = YAML.load(File.read(File.join(@base, path)))

      self.process(@name) if self.data['published']
    end
  end

  class GenerateLab < Generator
    safe true
    priority :normal

    def generate(site)
      self.write_portfolio(site)
    end

    # Loops through the list of project pages and processes each one.
    def write_portfolio(site)
      if Dir.exists?('_labs')
        Dir.chdir('_labs')
        Dir["*.yml"].each do |path|
          name = File.basename(path, '.yml')
          self.write_project_index(site, "_labs/#{path}", name)
        end

        Dir.chdir(site.source)
        self.write_portfolio_index(site)
      end
    end

    def write_portfolio_index(site)
      portfolio = LabIndex.new(site, site.source, "/lab")
      portfolio.render(site.layouts, site.site_payload)
      portfolio.write(site.dest)

      site.pages << portfolio
      site.static_files << portfolio
    end

    def write_project_index(site, path, name)
      project = SingleLabIndex.new(site, site.source, "/lab/#{name[4..-1]}", path)

      if project.data['published']
        project.render(site.layouts, site.site_payload)
        project.write(site.dest)

        site.pages << project
        site.static_files << project
      end
    end
  end
end
