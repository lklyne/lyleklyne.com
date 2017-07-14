---
layout:     project
title:      Relink
date:       2015-02-24 15:31:19
description: The freedom of hand written notes combined with the power of digital organization. A conceptual smartpen and companion app.
featured: true
category: portfolio
color: "#583C87"
background: portfolio-purple
modal: true
image:
  url:        
  bg_url:
  hero:     /images/projects/relink/relink-in-use.png
categories:
- blog
- web-development
overview: |
  How can the learning experience be improved in higher education? To answer this question, we worked directly with an industry sponsor, Karl Bakeman. As the Editorial Director for Digital Media at <a href="http://books.wwnorton.com/books/index.aspx" alt="W. W. Norton">W. W. Norton</a>, an independent publishing cooperative based out of New York, Karl was an invaluable resource in understanding trends and expected future of the educational publishing industry.
timeline: 10 weeks
role: |
  - Research<br>
  - Concept development<br>
  - Sketching & Storyboarding<br>
  - Interaction design<br>
  - Interface Design<br>
  - Videography<br>
---
<!--### Process-->
<!--<img src="../../../images/projects/relink/relink-process.png" alt="Canvas System Map" data-action="zoom">-->


## Research

#### Meeting with Karl Bakeman
  There are a lot of players and competing voices in the educational system. One would think students would be prioritized from a content and publishing perspective, but this is not the case. For the most part publishers target teachers and in some cases administrators and deans — students, the end users, are largely forgotten.

This is due to corporate consolidation of the educational publishing industry and the fact that most organizations are publicly traded and owned by private equity firms. Because the people paying for a product (students) are not the ones making the decision to purchase the product (teachers / administrators), the **educational publishing industry is very similar to the pharmaceutical industry.** Considering students are the ones paying for this content, it’s a shame that they are commoditized and their interests, receiving a quality and engaging education, are not the top priority.

#### Opportunity
Because textbooks are slow, expensive, and not directly tailored to students, there is a lot of opportunity to make them better. Digital and interactive knowledge compendiums are simultaneously more accessible, more engaging, more easily updated, and more transparent to teachers. Educational institutions seem willing to adopt changes to the standard textbook, but there are some challenges when creating new systems. Frequently accuracy of information is at odds with making the experience fun and engaging. **We wanted to improve the learning experience for students, and began researching to determine how.**

#### Interviews
  After meeting with Karl, we continued our research by speaking with teachers and students at the University of Washington. Initially, we were tasked with redesigning the music education experience, so we met with two PHD candidates in music education, a classically trained violinist, and a professor of computer music.

<!--![Interviewees](../../../images/projects/relink/interviewees.png)-->


#### Findings 
- Modern tools such as Youtube are widely used in music education, they are not recognized or embraced by the teaching community.
- Music students had a difficult time with note taking. 
- Music annotation was laborious with current software solutions, and note taking in general was lacking on ebooks.

#### Survey
 We were leaning towards improving the note taking experience and decided to conduct a survey to validate our idea that problems actually existed. We surveyed fourteen college students and graduates and asked how frequently they take notes in notebooks, on laptops, tablets, and in textbooks. Out of the fourteen people we surveyed, **all of them took notes by hand in some fashion.** Comments suggested that people enjoyed this experience, but despite this fact, everyone said they took notes on a laptop.

<p class="center"><b>How often do you take notes...</b></p>

![Hand-written notes survey](../../../images/projects/relink/notes-graph.png)

Despite the fact that people actively took notes by hand and enjoyed the experience, many expressed frustration that these notes were harder to maintain and organize than notes taken on a computer.

> “I've adapted to taking notes on my laptop because it’s easier to transfer them into a report later. ”

Participants mentioned that hand written notes allowed were easier and more flexible, but through secondary research we also found that they help with retention of information.


<blockquote>
    <p>
    “Students who write out their notes on paper actually learn more.”
    </p>
    <footer><cite title="Scientific American">— Mueller and Oppenheimer<br>
  SCIENTIFIC AMERICAN</cite></footer>
</blockquote>

#### Competative analysis

We had identified a key problem: people like to take notes by hand but make compromises to do so. The next step in our design process was to examine the current playing field.

![Note taking apps](../../../images/projects/relink/note-taking-apps.png)

#### Shortcomings

**Restrictive:** Current solutions don’t fully embrace handwriting. The user must learn new habits and write on a screen.

**Complicated:** Note taking apps such as notability provide plenty of features but are overly complicated. Simple tasks like highlighting require wading through several options for customization and then highlights don’t align with the text.

[Livescribe](https://www.livescribe.com/en-us/) is a smart pen that comes closest to emulating the hand writing experience. The way it works is a pen uses a camera to read an invisible grid of dots on a screen to determine where a user is writing. These notes are then digitized. It is quite a cool system, yet is not a perfect fit for the academic experience.

- Livescribe focuses mainly on interaction with a blank slate, not textbooks or other printed material.

- Livescribe also does not fully embrace the potential of a classroom-based learning environment by fostering interactivity.

<div class="center section-break"><h5>*  *  *</h5></div>

## Design

We began to design our own pen that would fit perfectly in the classroom and reading environment. The first step was to storyboard out hero scenario.

<img src="../../../images/projects/relink/storyboard.jpg" alt="Relink Storyboard" data-action="zoom">

This breaks down into four specific tasks.
1. Creation of artifacts (notes, diagrams) within the text.
2. Marking and highlighting information within the text.
3. Interacting with new media types within the text.
4. Reviewing, organizing, and searching captured information.

<img src="../../../images/projects/relink/scenarios.jpg" alt="Relink Scenarios" data-action="zoom">

Feedback was identified as a crucial aspect of the design. In addition to providing feedback via a nearby device, we opted to include an LED on the tip of the pen to reinsure the user that their notes and actions were being recorded.

 <img src="../../../images/projects/relink/pen-sketch.jpg" alt="Relink Scenarios" data-action="zoom">

### Gestural Language

We developed our gesture set through user studies. The study included four college students or recent graduates. The first step involved asking participants to take notes as they usually would with a pen. For the second step, we asked participants to imagine they had a smart pen and perform certain actions. We consolidated similarities in the gestures into a unified gesture set.

1. Highlight: underline
2. Highlight large block: brackets
3. Highlight important: star
4. Tag: hashtag + tag
5. Definte: touch + hold
6. Interact: touch icon

<img src="../../../images/projects/relink/gestures.png" alt="Relink Scenarios" data-action="zoom">

### Interface
For the companion app, we wanted information to be viewable in two views: overlayed on the textbook as it was captured, as well as in a consolidated view. When shifting between these two views, animation helps the user keep track of how their notes are consolidated.

<video width="100%" height="auto" autoplay loop>
  <source src="../../../images/projects/relink/relink-comp.mp4" type="video/mp4" />
  <source src="movie.ogg" type="video/ogg" />
  Your browser does not support the video tag.
</video>

<div class="center section-break"><h5>*  *  *</h5></div>


## Video
<div class="videoWrapper">
  <iframe src="https://player.vimeo.com/video/158553554" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

## Outcome
We presented Relink to Karl Bakeman of A. A. Norton. We were asked why there had to be a physical pen to accomplish this task instead of using a smartphone camera. Although a product relying on existing devices could be more cost effective and accessible, we felt that the direct feedback provided by the pen would be enough benefit to warrant a physical product. Also, based on our research of existing products we assume that this device could be manufactured on a large scale for relatively low cost.  

We had also pitched this product as a financial benefit for A. A. Norton. Our assumption was that since people would be marking up their textbooks, they would become a more personalized item the student would want to hold on to. This would provide the additional benefit of cutting down on the resale market, one of the biggest hurdles for textbook publishers revenue. Karl took a different approach. He said that if the textbooks were more like paperback workbooks, students wouldn't feel bad about marking them up and the resale market would still be eliminated.  

#### Next Steps
Due to time constraints, we spent the bulk of our time in concept development and focusing on the initial gestures. It would be interesting to further test and prototype new applications for this device. These could include interactive surveys, new approaches to composing music in a textbook, or access to interactive media.

<script type="text/javascript">

$('#video-modal').magnificPopup({
    items: {
      src: 'https://vimeo.com/158553554'
    },
    type: 'iframe' // this is default type
  });
  
</script>