---
layout:     post
title:      Making Sausages (Blogs)
date:       2015-08-14 11:42:19
summary:    <b>An  overview of how I built this website</b> and some of the resources I consulted during construction. In this post I'll talk about using the Jekyll blogging platform, modifying it to serve as a portfolio generator, picking and styling type, and what's coming next for this website.
categories: 
- blog
- web-development
---

<p class='regular' markdown='1'>
 **An  overview of how I built this website** and some of the resources I consulted during construction. In this post I'll talk about using the [**Jekyll**](http://jekyllrb.com/) blogging platform, modifying it to serve as a portfolio generator, picking and styling type, and what's coming next for this website.
</p>

<p class="center"> * * * </p>

I fixed the front logo/menu for mobile devices! This was relatively easy, but it involved some grunt work making everything line up with [Tumult Hype's](http://tumult.com/hype/) adaptive-layouts, as well as wrestling with what seem to be some strange glitches in Hype.   

With this small hurdle cleared it seems like a fitting time to talk about how I built this site – to give a behind the scenes look into how I made this little sausage. This website has gone through several iterations. Initially, it was just a rotating background image with a logo. It looked nice but had no content (a major problem). I quickly solved this with (several) Wordpress websites, but these felt clunky and left a lot to be desired.



## Platform
I searched for a platform that was easy to update and scale yet fast and flexible. Wordpress has far outgrown its roots as a CMS and blogging platform resulting in significant bloat. Other options like [Cargo Collective](http://cargocollective.com/) and [Squarespace](http://squarespace.com) are faster yet lack the level customizability I wanted.

After some research I settled on [Jekyll](http://jekyllrb.com/), a blogging platform built on Ruby. Jekyll generates static HTML pages that don’t rely on database requests. It’s blazing fast and completely flexible. It also afforded the opportunity to cut my teeth Shopify’s Liquid and get more comfortable with Terminal and Github.

## Construction
I separated the website into three sections. A landing page that houses the blog roll after the fold, a portfolio section, and a simple about me section. The blogroll is baked-in to Jekyll and required little setup.

The front page features five rotating images that I took with my iPhone. I had the images, CSS, and Javascript for rotation ready to go from version 1.0, but I wanted to incorporate some interactivity into the logo. The menu I discussed at the beginning of this post provides this interactivity. It serves as a gateway to the rest of the site, and slowly shifts opacity in hopes of enticing the user to click on it. I built it with [Tumult Hype 3](http://tumult.com/hype/).


![Portfolio Titles](/images/blog/making-sausage/splash.jpg)
 

For the portfolio, I used (surprise surprise) the [Jekyll portfolio plugin](https://github.com/flatterline/jekyll-plugins) written by Flatterline (now called [Velocity Labs](http://velocitylabs.io/)). They created a plugin that allowed me to style custom HTML and CSS templates for the portfolio page and individual items, which autogenerate as I add new projects. **Cool!**

This section still needs some CSS fine tuning. The necessity to hover to see project titles is less than ideal on desktop and useless on mobile. I’m looking for an elegant solution:  

![Portfolio Titles Hover Problem](/images/blog/making-sausage/portfolio-hover.jpg)

Also, the titles and navigation on individual projects are inconsistant. <strike>This will be an easy fix:</strike> Fixed!  


![Portfolio Controls Problem](/images/blog/making-sausage/portfolio-controls.jpg)

## Type & Color

For the type, I decided to stick with free web fonts. A [Smashing Magazine](http://www.smashingmagazine.com/2014/03/taking-a-second-look-at-free-fonts/) article states that “free fonts don’t have a good reputation, and often they are knock-offs of thoroughly crafted, already established typefaces.” In many cases, this is true, and this is obviously a strong deterrent for using them, but there is quality among the rough.

I found these resources especially useful for typography basics:


1. [Typography in Ten Minutes](http://practicaltypography.com/typography-in-ten-minutes.html) by Matthew Butterick  
— A brief yet solid foundation in typography. There is also an in-depth, free ebook if you want to go more in depth.

2. [Typewolf](http://www.typewolf.com/)  
	— An excellent reference for quality typefaces and font pairings. It’s also great to see how other people set type with the “Web Fonts in the Wild” section.

3. [Incredible Types](http://incredibletypes.com)  
— Good inspiration.  


### Headings
The headings are set with [Lato](https://www.google.com/fonts/specimen/Lato), a free and widely used Google Webfont. Lato was designed to be transparent (lacking distinguishing characteristics) at smaller font sizes but have some originality at larger sizes with friendly and rounded forms. The large, ultra-bold headings used in this site highlight these originalities. Lato was part of the Pixyll template in addition to being a Google Webfont so implementation was a total breeze.  


### Body
Lato has a free companion font to Lato called [Aleo](https://www.behance.net/gallery/aleo-free-font-family/8018673). I wanted a clean serif that was readable at smaller sizes, and so Aleo was an easy choice. I increased character spacing 0.02 *rem*, set the body margins to 44 *rem*, and font size to 1.4 *rem*. This yields breathable and readable copy with roughly 70 characters per line.

The implementation was more difficult for Aleo as it is not a Google Webfont. I’m hosting the web fonts locally using separate versions of Aleo to achieve true **bold** and *italics*. I found these articles helpful in understanding how to do this:  


Metal Toad:  
[How to use @font-face to avoid faux-italic and bold browser styles](http://www.metaltoad.com/blog/how-use-font-face-avoid-faux-italic-and-bold-browser-styles)  

Smashing Magazine:  
[Setting Weights And Styles With The @font-face Declaration](http://www.smashingmagazine.com/2013/02/setting-weights-and-styles-at-font-face-declaration/)  


### Blockquotes
Blockquotes required some streamlining and styling from their Pixyll roots. They are nice now, so lets take them for a spin:

<blockquote>
  <p>
    Today you are You, that is truer than true. There is no one alive who is Youer than You.
   </p>
  <footer><cite title="Dr. Suess">— Dr. Suess</cite></footer>
</blockquote>

### Color
The accent color used througout the site is [International Klein Blue](https://en.wikipedia.org/wiki/International_Klein_Blue). It was developed by Yves Klein, who worked directly with a chemist to create this brilliant blue in the 1950's. I feel the resulting monochrome painting highlights this collaboration while idiolizing the tools of creation. I like that, and I feel a kinship with Yves because we share a last name (albeit a different spelling). It's also damn pretty on screens, although nothing like the canvas. 

![Portfolio Titles](/images/blog/making-sausage/klein-blue.jpg)


## Whats Next?

This is an ongoing project. Here are some of the next steps.

1. CSS refinement  
— The styling improvements to the Portfolio addressed above.

2. Adding a "Lab" section  
— This will be a catch all for works in progress and freebies to download.

3. Blog and Portfolio updates  
— As learning and projects progress.

4. Implement a search bar  
— If the site gets big enough.

5. "Read More" button on blog  
— Right now I'm doing post preview manually -- it would be great to automate it and add a "Read More" button.

Thanks for reading!

<a class="center" href="http://lyleklyne.com/#blog">> Back to the blog</a>


