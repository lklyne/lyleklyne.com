---
layout:     post
title:      Help Systems
date:       2017-06-05 10:50:13
summary:    Exploration of patterns for delivering help and user education.
categories: 
- prototyping
- process
- physical
---
Software should be so well designed that it needs no explanation! If it's well made then you don't have to explain it! These are the goals of a software designer, but they are often unrealistic ones. With a wide array of poeple using something comes a wide set of needs. Inevitably you will need to provide some sort of education or help. 

Providing help and documentation is one of the [The Neilson Norman Group's 10 usability heuristics](https://www.nngroup.com/articles/ten-usability-heuristics/). 



> Even though it is better if the system can be used without documentation, it may be necessary to provide help and documentation. Any such information should be easy to search, focused on the user's task, list concrete steps to be carried out, and not be too large.  



I wanted to explore some patterns for how help and educational material are **delivered** to people. The delivery is interesting because it's a bit of a balancing act. You never want to see it, but you always want it to be there when you need it. The Neilson Norman group puts it this way: Good help should be "available without interfereing, succinct yet descriptive, and unintrusive."



All these examples fall somewhere along a spectrum of being system-initiated to user-initiated. Ideally, the system can infer when to provide help based on it's understanding of the user. Although this is the ideal, you will inevitably find yourself where you have to provide feedback non-conditionally.



![2017-06-05-adaptive-help](../images/blog/adaptive-help/2017-06-05-adaptive-help.png)



### 🚚  Delivering help

These are quick prototypes used to illustrate common patterns. They are displayed in the context of a mobile web form, but a lot of these patterns can be applied in a variety of contexts. 


**System Initiated: Inline**
<img src="../images/blog/adaptive-help/adaptive-help-1-inline.gif" class="project-hero-img" alt="Adaptive Help - Inline" data-action="zoom">

**User-Initiated: On Select**
<img src="../images/blog/adaptive-help/adaptive-help-2-on-select.gif" class="project-hero-img" alt="Adaptive Help - On select" data-action="zoom">

**User-Initiated Overlay**
<img src="../images/blog/adaptive-help/adaptive-help-3-user-initiated-overlay.gif" class="project-hero-img" alt="Adaptive Help - User-initiated overlay" data-action="zoom">

**Conditional: On Error**
<img src="../images/blog/adaptive-help/adaptive-help-4-only-after-error.gif" class="project-hero-img" alt="Adaptive Help - User-initiated overlay" data-action="zoom">

**User-Initiated: Communication**
<img src="../images/blog/adaptive-help/adaptive-help-6-communication.gif" class="project-hero-img" alt="Adaptive Help - User-initiated overlay" data-action="zoom">

**Mixed: Expandable Overlay**
<img src="../images/blog/adaptive-help/adaptive-help-5-expandable.gif" class="project-hero-img" alt="Adaptive Help - User-initiated overlay" data-action="zoom">
