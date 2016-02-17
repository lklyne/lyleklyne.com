module Jekyll
  class LabIndex < Page
    def initialize(site, base, dir)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'lab.html')
      self.data['labs'] = self.get_labs(site)
    end

    def get_labs(site)
      {}.tap do |labs|
        Dir['_labs/*.yml'].each do |path|
          name   = File.basename(path, '.yml')
          config = YAML.load(File.read(File.join(@base, path)))
          labs[name] = config if config['published']
        end
      end
    end
  end

  class LabsIndex < Page
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
      self.write_lab(site)
    end

    # Loops through the list of lab pages and processes each one.
    def write_lab(site)
      if Dir.exists?('_labs')
        Dir.chdir('_labs')
        Dir["*.yml"].each do |path|
          name = File.basename(path, '.yml')
          self.write_lab_index(site, "_labs/#{path}", name)
        end

        Dir.chdir(site.source)
        self.write_lab_index(site)
      end
    end

    def write_lab_index(site)
      lab = LabIndex.new(site, site.source, "/lab")
      lab.render(site.layouts, site.site_payload)
      lab.write(site.dest)

      site.pages << lab
      site.static_files << lab
    end

    def write_lab_index(site, path, name)
      lab = LabIndex.new(site, site.source, "/lab/#{name}", path)

      if lab.data['published']
        lab.render(site.layouts, site.site_payload)
        lab.write(site.dest)

        site.pages << lab
        site.static_files << lab
      end
    end
  end
end
