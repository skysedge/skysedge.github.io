---
layout: post
title: A Catechism on Patents and Open Source Technology
author: Justine Haupt
---

Why is it that many devices are no longer available in a high quality form? Well made, reliable, basic bedside alarm clocks used to be available in any department store but can no longer be found. Yes, you can buy an alarm clock, but you'll find that the plastic is cheap, the buttons are unintuitively laid out and possibly unreliable, the display is too bright for a dark-adjusted eye, and the audio quality is poor.
 
Did they forget the recipe?
 
Yes, the recipes are lost because the companies that produced these went on to other things, or because each new generation of engineers wants to make their own version of [insert device here], so instead of benefiting from decades of refinement in engineering or user interface design, each new product line starts from scratch while countless excellent designs (the product of countless thousands of person-years of engineering effort) are locked away in the files of various companies, or lost to history. That alone is bad enough, but in the current era of compressed product development timelines and especially poor quality assurance, there's just no room for quality in anything but top-tier technology (smartphones, TVs, etc). Imagine if, instead, each company could learn from each other company and only make changes that objectively improve the user experience?
 
Now let's talk about patents. They actually suck, both for encouraging progress and for benefiting the inventor. I often get questions like "oh are you going to patent such and such" and my answer is NO. Even once awarded, all a patent does is to give the inventor the legal footing to prosecute alleged infringers. There are no "patent police" that will stand up for you and assure you have the right to your invention. If infringement is suspected a lawyer *needs* to be brought in.
 
What is the point of a patent? To give credit to the inventor as well as monetary incentive, yes?
 
The open source culture is actually much better at crediting inventors/originators than patents are. This is similar to scientific culture, in which discoveries are shared and there's usually no question as to who did the discovering. Contrast this with patents, which are extremely costly to obtain not only in dollars but also in time, and where not having one is often seen as a barrier to going to market. Consider what that means in competitive global economy with compressed development cycles where a competitor can sell tens of thousands of units and then exit before a cease and desist letter even gets drafted.
 
Now here's where the real blasphemy starts. Is it really right that a patent holder should have the exclusive rights to their invention for 17-20 years? This means that, by law, the best ideas are withheld from exactly the kind of widespread development that <u>all</u> of the best ideas have depended on. Imagine if the personal computer was prevented from being developed and sold beyond the walls of a single company. The success of the personal computer *depended* on the multiple agents working in parallel to explore the application space. What's the point of having an invention that's prevented from becoming a sensation? To quote Linus Torvalds:
 
> *I often compare open source to science. To where science took this whole notion of developing ideas in the open and improving on other peoples’ ideas and making it into what science is today and the incredible advances that we have had. And I compare that to witchcraft and alchemy, where openness was something you didn’t do.*
 
Corollary: None of the really *good* inventions are patent-able. None of them. None. Not one. If someone invents "X" next best thing, do you *really* think that other companies aren't going to try to produce their own versions of it? It's going to happen whether parts of the invention are protected or not. There's always, *always* a way around. Consider how many different companies are making robotic vacuums, not to mention the no-name ones made in countries that don't honor international patent law. Even when someone has some great new technology that they expect to make a big impact, usually they pursue patenting features *of* the invention and not the total idea because of how patent law works. In every way, the system is broken, useless, or unnecessary.
 
There's a good example of an invention that *was* effectively patented in a way that protected the company that invented it, and that's **3D printing**. Scott Crumb (co-founder of Stratasys) invented FDM printing in 1989. Let me repeat that. The technology behind desktop 3D printing was invented in 1989. **That's what patents do for the world.** Oh and now that 3D printing has become an open-source sensation, Stratasys is doing better than ever.
 
Even if you want to make an argument for patents, I would argue that it should be done differently. I would say that the period of protection should be in the range of 3 - 7 years, <u>not 20</u>,they should cost little or nothing to obtain for early-career inventors, and the protection should be handled by a government agency.
 
The good news is that there's an alternative that doesn't require waiting for the slow (and maybe impossible) process of having patent law changed, and that's releasing technology as open source. This is a hard pill to swallow for so many entrepreneurs who lean on the existence of IP when making pitches to investors, and for the investors who expect there to be IP, etc, but time and again it's been shown that allowing community involvement in new ideas drives widespread adoption so rapidly that the originator (person or company) of the idea benefits financially *more so* than with a patent, even without having exclusivity. It's one of those counter-intuitive things about how to do business.
 
But what if someone else swoops in and tries to copy what you'redoing? Firstly, I hate to say it, but most people don't want your idea. No one's going to find what you're doing on some lonely back-alley part of the internet and then go through the expense/effort of producing it from under you without first seeing that it's a successful concept that other people want and like. That is, you're almost guaranteed a grace period after first releasing anew idea. Only once it starts selling and becoming popular do you have to worry about copy cats. Secondly, if you're a true startup company with multiple employees and venture capital funding, you can just keep the design data secret until you go to market. Or keep it secret indefinitely, but rest assured, spending money on protecting the intellectual property will wind up a waste of money. And don't forget about patent trolls. Uff, patent trolls.
 
Open source hardware does work well, but perhaps you, as an entrepreneur, inventor, or investor, are not willing to go to that extreme. Like everything in life, this need not be absolute. Here are a few alternatives to "pure" open source:
 
* Option A (version priority) The developer only makes each previous version of the product or technology public. I don't really like this but feel it's vastly better than closed source, and possibly this is palatable to many companys that wouldn't otherwise consider open source.

* Option B (functional data only): The developer shares the schematic but not the PCB layout. I think this is a reasonable option, though hard to implement for mechanical or optical systems.

* Option C (stylistic variation): The developer maintains a version of the technology which is stylistically enhanced but functionally equivalent to the open source design. This seems reasonable to me for mechanical designs, or for software, where a back end may be open source but a GUI is proprietary.
 
# The Spirit of Open Source
 
What about me? Do I worry about copy cats? My own take on all this is that it would be wrong for someone else to take my designs and reproduce them for sale exactly as-is. That's just plain theft and not consistent with the spirit of open source. For me, publishing design data has two purposes:

1. To empower the user to truly understand their technology, giving them license to repair and maintain, or to produce the technology for their own use or experimentation without having to pay someone else for it.

2. To provide a springboard for other developers/companies/researchers. We want to stand on the shoulders of giants and make sure technology only gets better overtime. This should result in new and improved products, but which only get released after substantive changes have been made to the opensource reference design.
 
The philosophy I've outlined here would seem to suggest a specific kind of open source license which forbids the outright copying of a design for commercial use, but which encourages copying for R&D or for personal use, or for implementation as a sub-system as part of more complicated technology. I haven't found an open source license that does that, which is surprising to me considering everyone and their mom seems to have written an OS license just for the heck of it. So here's my own rather crude open source license, which applies to all Sky's Edge projects/products:
 
The Sky's Edge License

But, in releasing open source hardware, for God's sake do it right: If you decide to work up your own product based on an open source reference design, <u>give it a unique name</u> and <u>document it with care</u>.