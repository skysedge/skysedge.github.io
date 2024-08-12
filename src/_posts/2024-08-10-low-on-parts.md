---
layout: post
title: We will eventually run out of parts
author: imyxh
---


Production has been going slowly, but it has been going. We did a run on the
pick-and-place last weekend, and managed to finish nine panels of three
motherboards each. We accidentally placed the E-Paper connectors upside down on
two of those panels, and some of the others failed quality control, but that's
okay because we've been needing to replenish our supply of development boards
anyway.

{% include blog-inline-image.html
    url="/assets/20240810-production.jpg"
    alt="A photo of part of our production process. Eleven RUSP motherboards sit in on a wooden table in front of a vase of flowers after passing the initial stage of quality control."
    caption="we salute the four fallen boards from this batch that failed QC 🫡"
%}

We also have another 27 panels that are half soldered. Whatever; point is,
production is happening. But there are some details that I think we need to
fill everyone in on.


A parts issue near miss
-----------------------

In the end of 2022, mobile network operators started [sunsetting the 3G
network][3g]. This was very bad for us, because the U-blox TOBY, the modem
Justine was using at the time, relies on 3G.[^1] So Justine redid the design,
swapping the TOBY for the newer LARA modem. However, the LARA has a minimum
baud rate of 115200, which the old chips (ATmega2560V) weren't able to
communicate at. So Justine had to also scrap the ATmega2560V for an ATmega1280.
This is the chip we use in the Rotary Un-Smartphone now.

This means that we have a bunch of U-blox TOBY modems and ATmega2560V chips
just sitting in storage, because neither chip is currently used for the Rotary
Un-smartphone. And by a bunch, I mean dozens of thousands of dollars worth. So
you can imagine that our budgeting from there on out has been pretty screwed.

When I first started drafting this post, I was prepared to lament that (apart
from those half-soldered panels) we were now completely out of the ATmega1280.
Technically, this is still true. However, I realized that a baud rate of 115200
is very much achievable using the 2560V—just not at the 8 MHz clock speed
that we were using. Thankfully, DigiKey carries some 7.37 MHz oscillators
that fit in the footprint of our current design. I swapped one in, and it
works.[^2]

{% include blog-inline-image.html
    url="/assets/20240810-oscillator.jpg"
    alt="A photo through a microscope of a 7.37 MHz ceramic oscillator placed on the black RUSP motherboard. It is a small, beige, rectangular prism, soldered to the board by three contacts on its underside."
    caption="small ceramic rectangle saves open-source collective from certain bankruptcy? tune in next time to find out!"
%}

In other words: many years ago we bought a bunch of chips (2560V), which then
had to get swapped out for another chip (1280). We just ran out of the new
chip, but I found a fix to make the original chips work again. Phew. What this
means for phone buyers is just that they might receive a phone with an
ATmega2560V chip at 7.37 MHz instead of the current ATmega1280 at 16 MHz. This
is likely a good thing, because the ATmega2560V has more flash memory
and uses less power.


An actual parts issue
---------------------

Worried by the whole ATmega1280 situation, I finally forced myself to do a
rough recount of all our spools on the pick-and-place machine, and I have some
grim news. We will eventually run out of parts. Not every part—we still have
plenty of the more critical ones, like the modem and the mega16U2s and whatnot.
But when it comes to the more pesky, smaller components, like surface-mount
resistors, LEDs, and protection diodes, we're running out.

If we maintain our current rate of income (and refund requests), I don't think
we'll be able to get past the 400th Rotary Un-Smartphone pre-order. There are
plenty of excuses we can name for this: the 3G sunset costing us our TOBYs, the
humidity here causing a high drop rate for the pick-and-place, a bunch of
quality assurance issues ... I could go on. But I know you don't want to hear
it.

Virtually no community project of comparable size does PCB assembly at the
scale and complexity we do, and we're beginning to see why.


We're not giving up
-------------------

Of course, we have options. We need to increase our revenue and minimize our
costs, so we can afford to buy more parts to finish the pre-orders.

One option is to sell more non-RUSP products. We still have thousands of those
ATmega2560 chips and TOBY-R2 modems from before Justine had to redesign for the
3G sunset. We also have the existing NearZero 2 project, which is nearing a
working prototype, and the RoboWheels.

This is a good time to mention that Justine had quietly designed another
product: an Arduino-compatible **stand-alone rotary dial**. It's basically the
rotary dial part of the RUSP, but it simply emits the numbers typed in over USB
serial. It also has GPIO and an OLED. I'm playing with a prototype as I write
this, and it works pretty well. If you have any fun projects that you'd like to
slap a rotary dial onto, then look no further!

{% include blog-inline-image.html
    url="/assets/20240810-sard.jpg"
    alt="A photo of a stand-alone rotary dial and a bin labeled &quot;SARD PROTOTYPES :3&quot; atop a wooden table. The stand-alone rotary dial is a black PCB populated with components and a transparent plastic rotary dial as its front face."
    caption="for this prototype justine accidentally connected the reset pin on the 2560v to the reset pin on the oled, so whenever i tried to write to the oled the whole thing rebooted. had to cut a couple traces to fix that"
%}

Of course, we do recognize the value of community trust, and that it looks bad
to be taking more pre-orders while we haven't completely delivered on the
phones. As such, we will only sell from stock for non-RUSP products, including
the SARD. No more waiting on us for indeterminate amounts of time. Once we make
something, we'll increase the stock of it on our store, someone buys it, we
ship it.


How to help
-----------

We recognize that there are many community members that want to see Sky's Edge
survive just as much as we do. Please, we need your help!

If you'd like to contribute your skills, we would love to work with you. We
can't pay anyone a salary—after all, our whole team is unpaid—so any work would
be simply on a volunteer basis like the rest of us. We could use help with
engineering, production, customer support, firmware improvement, and pretty
much everything else.

If you have spare money and want to contribute donations, we will start
accepting these in the form of [auctioning off some keepsakes][ebay]. Old
prototypes, rejected boards, you name it. If Sky's Edge and the Rotary
Un-Smartphone project ever make it big, you'll have the privilege of owning one
of the stepping stones we laid in the very beginning. And, well, if we fail,
you'll have something interesting to frame on your wall, just beneath the
words: *here lies Sky's Edge, the makers who tried.*

If you don't want to donate but one of our auxiliary products catches your eye,
by all means, feel free to buy one! Any profit will go towards costs like RUSP
parts, feeding our organization so we can continue to try—ever so slightly—to
fix the relationship between humans and technology.

As always, we are happy to hear your thoughts, suggestions, and questions on
the [forum]. Making rotary cellphones was never a particularly profitable
business model. If it was, someone would've ripped us off by now. As a result,
we have never been able to do things the "normal" way—no full-time employees,
just a bunch of nerds getting together on evenings and weekends. It's gotten us
this far, but now we need help.

Thank you all for your unrelenting support. It means the world.


Footnotes
---------

[^1]: Technically, the TOBY is supposed to support LTE, and is even approved by
    AT&T, but the towers are denying our registration attempts for some reason.

[^2]: I've had some frustrations with the 2560V at 7.3728 MHz because for some
    reason I can't get it to program over USB at any baud rate other than 9600.
    I'm not sure if this is the Arduino firmware's fault or if I'm doing
    something wrong. Will be investigated.


[3g]: https://www.fcc.gov/consumers/guides/plan-ahead-phase-out-3g-cellular-networks-and-service
[toby]: https://content.u-blox.com/sites/default/files/TOBY-L2_DataSheet_UBX-13004573.pdf
[ebay]: https://ebay.com/sch/i.html?_ssn=justinehaupt
[forum]: https://forum.skysedge.com

