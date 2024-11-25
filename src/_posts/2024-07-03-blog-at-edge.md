---
layout: post
title: A blog at the edge of the sky
author: imyxh
---


Hello world
-----------

I think anyone who has been following the Rotary Un-Smartphone project can
agree that it's about damn time Sky's Edge started providing more frequent
updates to the community. We put this off for a while; after all, a blog won't
help us produce phones any faster, or make the phone's firmware better, or
anything like that.

But that's not the point. If we really have this vision for Sky's Edge as the
community-centric organization that we want it to be, we better start acting
like it. So here we are. A blog. For updates.

This blog is [hosted on GitHub][thisrepo], and we plan on slowly migrating the
documentation to the same repository. That way, anyone who has notes to add, or
even wants to write a blog post about a cool project they've used the phone for,
can submit a [pull request][pr] for us to review and merge into this site.


Wait a minute, [who are you?][kazoo]
------------------------------------

I'm Ivy! I haven't been very visible to the project, and I don't particularly
wish to be. I've been newly-onboarded as a volunteer engineer. We all have
pretty broad sets of tasks at Sky's Edge, but I tend to focus on electronics and
firmware. I'm also one of the people who responds on the <support@skysedge.com>
email.

You all know Justine, but she has a lot on her plate right now, so we're going
through growing pains as we share the labor among more volunteers. Maybe I can
get the others to introduce themselves on this blog, too.


New firmware
------------

We [rewrote the firmware][fw] for the Rotary Un-Smartphone! It's still a work in
progress, and some features are currently missing (e.g. ePaper support), but it
has been tested to make and receive calls and place speed dials. We recommend
everyone with a kit to flash the new firmware using the Arduino IDE or CLI, and
absolutely encourage contributions or even for people to write their own
firmware altogether. This is what open source is all about.


Network connectivity
--------------------

Possibly the best news since Justine's last mass-email update is that with the
new firmware we have network connectivity "working" on the phones. I say
"working" in quotes because the process is rather opaque. Really it just comes
down to if mobile network operators (MNOs) will accept the IMEIs of our phones,
which isn't something that is well-documented. See table 37 in the [modem
datasheet][lara_datasheet] to see which MNOs have given explicit approvals. It's
also possible that an MNO could accept registration from a modem that it hasn't
explicitly approved on its own.

Many people have asked questions of the form "will the RUSP connect to X network
operator in Y country?" My answer to this is:

- **If you use AT&T in North America**, this is the one configuration so far
  that has been tested by us to work, so unless something weird happens, it
  should be a fairly safe bet.
- **If you use any other MNO in North America**, the phone *should* work but
  it's technically untested. I played around with T-Mobile in the early stages
  of firmware development and could at least ping cell towers, but we haven't
  done any thorough testing yet. Supposedly, the North American version of the
  modem has approval from AT&T, FirstNet, Verizon, and T-Mobile. The Global
  version has approval from AT&T and Verizon. Whether this approval is actually
  required is unknown to me. Whether the phones will work on virtual network
  operators (MVNOs) like US Mobile, which use the infrastructure from e.g. AT&T
  and T-Mobile, is similarly unknown to me.
- **If you are outside of North America**, the phone again *should* work, but
  it's similarly untested and may depend on the network operator. The "global"
  model of the RUSP has a modem that's compatible with LTE towers basically
  anywhere in the world[^1], and we've had one report of someone getting it
  working in the EU. However, most of the option A kits we've shipped have been
  the North American variant.

In other words: unless mobile network operators are up to some funny business we
don't know about with their own approval systems, the phones *should* work with
the network as long as the correct model is chosen for the region. We really
just need people to try it and report back. Note that it's possible to test the
phone without even assembling it, by sending [Hayes AT][lara_hayes] commands to
the modem from the serial port. You can even send text messages with this
method! I'll write up a tutorial on this soon and link it here.

<!-- *Ivy from the future here! The tutorial is here: TODO.* -->


Production status
-----------------

We had just gotten production ramped up, and were approaching our 100th "option
A"[^2] shipment, when we ran out of a single component—the FPC connectors for
the OLED display. Normally, we would just go on with production anyway, and
hand-solder the missing component once it arrives; unfortunately, it's not
efficient to do this with the FPC connector, since the plastic will melt if it's
soldered with a hot air station instead of our reflow oven. So for now,
production is stalled until more of those parts arrive.

Wise readers should be chastising us for letting this part run out unexpectedly!
Indeed, our inventory management is a little suboptimal. We've set up
[InvenTree][inventree], and it works great, but taking inventory of the parts on
our pick and place machine is not trivial. Some places actually have a whole
x-ray machine just to count the parts in each reel. We'll either have to do
regular checks on all the reels to see if any are getting low, or take on the
annoying task of keeping precise counts of every single part.

Either way, we will resume production for option A kits as soon as the part
arrives, after which we'll be sure to provide information on production rates.
As for option B, the timeline is even less certain; we have to get more
volunteers trained on assembling the phones before we can start shipping those
at any appreciable rate.

We appreciate everyone's patience as we sort out our production issues. It's
rather unheard of for a small collective devoted to open-source hardware to do
this much production on its own. Most places, instead of using a pick-and-place
machine and reflow oven in-house, will just contract out to a turnkey service in
some country with cheap labor. Justine decided not to do that, and the advantage
in the long run is that we have a good chance of becoming a makerspace that can
daringly produce technology while being as independent from modern industry as
possible.


Footnotes
---------

[^1]: See tables 1 and 37 of the modem's [datasheet][lara_datasheet] for
    regional compatibility information.

[^2]: As many of you know, we split orders into two options: option A, a kit
    that you can assemble yourself, and option B, a pre-assembled phone.


[fw]: https://github.com/skysedge/rusp_firmware
[inventree]: https://inventree.org
[kazoo]: https://youtu.be/cw9FIeHbdB8
[lara_hayes]: https://content.u-blox.com/sites/default/files/documents/LARA-R6-L6_ATCommands_UBX-21046719.pdf
[lara_datasheet]: https://content.u-blox.com/sites/default/files/LARA-R6_DataSheet_UBX-21004391.pdf
[pr]: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests
[thisrepo]: https://github.com/skysedge/skysedge.github.io

