VAR report = false
VAR disease_progress = 0
VAR mood = 2
VAR intro = false
VAR outro = false
VAR vig1 = false
VAR vig2 = false
VAR climax = false
VAR firstvig = 0
VAR landscape = ""
VAR portrait = ""
VAR misc1 = ""
VAR misc2 = ""
VAR environment = ""
VAR infection = ""
VAR map = ""


->TheDescent

=== TheDescent ===

~ report = false
~ intro = true
~ infection = "infection0.png"
~ misc1 = "intro-misc1.png"
~ map = "intro-map.png"

When we were safely in the lift, catching our breath and going down the mining shaft, Roxanne turned to me and asked, “Don’t you think… Don’t you think that was a bit easy?”

* [Yes]

~ environment = "intro-environment.png"

“Yeah, maybe,” I replied, “But that guard didn’t seem up to much either.”

* [No]

~ environment = "intro-environment.png"

"Nah, that was nothing compared to last time," I replied, "Remember, they basically held the door open for us."

-<> “I suppose not. Although-” The clunk of the lift reaching the floor cut her off.

“Ah! Ground floor.” I tried a smile, but she didn’t respond. 

We stepped out and found ourselves in what looked like a metro tunnel going out for a few metres ahead of us, inky black darkness obscuring whatever lay further. 

No, not quite completely black. Our eyes got a bit more accustomed to the gloom, and we began to see that small, phosphorescent fungi were scattered around, lining the tunnel's edges.


*[It's beautiful]

~ landscape = "intro-landscape.png"
~ misc2 = "intro-misc2.png"

{mood != 3:
~ mood = mood + 1
}

"It's so... beautiful," I turned to Roxanne, "the lights, the mushrooms, they're amazing!"

"Yeah, you're right," She smiled and took a shot of the tunnel.

*[It's creepy]

~ landscape = "intro-landscape.png"
~ misc2 = "intro-misc2.png"

{mood != 1:
~ mood = mood - 1
}

"It's so... creepy," I turned to Roxanne, "It's the kind of light you'd get in a horror film."

"Yeah, you're right," She frowned and lifted her camera to take a shot, "Still, need to get one for the archives."

- The flash of the camera had an instant impact on the life in the corridor. Some of the fruiting bodies on the ground seemed to shrink away, but the phosphorescent lichen on the walls flared up, inviting us to come closer...

We walked over to the nearest wall and began to see patterns on the walls, glowing lichen tracing out something… almost like writing.

I knelt down to look at one of the fungi on the ground. It resembled a Clathrus Archeri, the devil’s fingers reaching out to me...

Soon it got too much. I reached out to touch it... But Roxanne looked as if she was about to say something. Her hand twitched.

* [Touch it anyway]

~ disease_progress = disease_progress + 1
~ infection = "infection1.png"
~ portrait = "intro-portrait.png"
{mood != 1:
~ mood = mood - 1
}

When I touched the mushroom on the ground, I could have sworn it bit me. 
* [Turn to her]

~ disease_progress = disease_progress + 1
~ infection = "infection1.png"
~ portrait = "intro-portrait.png"
{mood != 1:
~ mood = mood - 1
}

“What’s wrong?” I began turning to her, and the mushroom... bit me. That's the only way I can describe it. 

-<> I pulled my hand away as quickly as I could, but there were small scratches all along my fingers. The scratches glowed.

 “Are you OK!?” Roxanne shouted as I watched the glow spread through the veins in my fingertips.

“Fine, fine,” it took me a while to focus. I could feel the lichen in my blood, I could…. 

“Should we go back? We could probably sneak past the guard pretty easily?”

“No, we’ve already come this far,” I said, “And I want to see what else is down here.”

We started up along the tunnel, the soft light of the fungi and lichen leading the way, leaving the lift behind us.

*[CLASSIFIED]
~ intro = false
->TheDescentReport

=== TheDescentReport ===

~ report = true

21:03, 03/09. Intruders identified as JAMES PULLMAN (Journalist) & ROXANNE LAWREY (Photographer). No description given by the guard they evaded, but security camera footage from the lift provided a full ID for Pullman. Given the circumstances, it’s an easy assumption that Lawrey is his companion.

In the Site below, we found some traces of the intruders. Samples identified blood on the ground at one of the tunnel walls. Evidence suggests they walked for some time along the main corridor before turning...

*[Left]

->SomethingOutThere

*[Right]

->ExplorationTeam

=== SomethingOutThere ===

~ report = false
~ vig1 = true
~disease_progress = disease_progress + 1

~ misc1 = "vig1-misc1.png"
~ misc2 = "vig1-misc2.png"
~ environment = ""
~ landscape = "vig1-landscape.png"
~ portrait = ""

{ExplorationTeam:
~ map = "vig1-2-map.png"
~ infection = "infection3.png"
As we walked through the dim tunnels, I reached down and plucked one of the fungi from the ground. I slowly pulled back the cap's skin to reveal the gills underneath. I wasn’t so wary of the inhabitants anymore. After the initial shock, I realised they were just cautious. They didn’t attack out of malice, but in the way that a... an animal might try and ward off an unknown human, before realising that the human poses no threat... That they’ve...

“You should put that down,” Roxanne had seen that I was playing with the mushroom.

->why

-else:
~firstvig = 1
~ map = "vig1-map.png"
~ infection = "infection2.png"
We walked down the dimly lit tunnels, watching them turn from concrete-paved to bare rock.

->SomethingOutThere1
}

=why

*[Why?]

{mood != 3:
~ mood = mood + 1
}

"Why should I?" I asked, still inspecting under the mushroom's skin.

"You remember what happened last time? The cuts? We're already in deep enough; we don't want to risk any more..."

*[Do it]

{mood != 1:
~ mood = mood - 1
}

- "OK, OK," I set it down carefully on the tunnel floor and sensed its contentedness...

->SomethingOutThere1

=SomethingOutThere1

The glowing of the lichen had subsided here, so we had to rely on our torches. The beams of light revealed a larger cavern and what could only be described as a small forest of fungi, ranging from a few centimetres tall to shoulder height. Roxanne gasped.

~ portrait = "vig1-portrait.png"

“I need to get a picture of this.”

*[Cover eyes]
~ environment = "vig1-environment.png"

I covered my eyes from the flash. I heard the crackling of the flashbulb and the forest mutter its displeasure, releasing spores in response to the light. I heard something else, gravel being dislodged or...

*[Watch] 
~ environment = "vig1-environment.png"

I kept my eyes open through the flash. I saw the forest flinch from the light, muttering as it released spores in surprise. As my eyes recovered from the sudden brightness, maybe I saw something other than the mushrooms move...

- “Did you see that!” 

“See what?”

“Something moved out there.”

Roxanne was stabbing around the copse of fungi with her torch. The frantic movements of the torch beams made the shadows jump around but only revealed more of the giant fruiting bodies. 

*[Do the same]

{
- disease_progress > 2: I waved my torchbeam as wildly as Roxanne. But even without the light, I could sense what we were looking for. I could hear it in the blood rushing in my ears. It crouched at the back of the cavern, hiding from the glare, afraid we’d do something to damage the garden it tended here. 
-else: I tried to wave my torch around as gamely as Roxanne was, but it didn't help. I... sensed something, though, towards the back of the cavern, something trying its best to hide.
}

*[Listen]

{
- disease_progress > 2: Even without the light, though, I could sense what we were looking for. I could hear it in the blood rushing in my ears. It crouched at the back of the cavern, hiding from the glare, afraid we’d do something to damage the garden it tended here. 
- else: I stopped and listened, straining over Roxnne's worried breaths. I... sensed something, towards the back of the cavern, something trying its best to hide.
}

- "We should probably leave," {disease_progress > 2:I said this a shade too loud, hoping that the little symbiote would hear,}{disease_progress <= 2:I said to Roxanne,} "There's nothing here." 

"But I... You're probably right..." She took one more look around the cavern, "Which... was it this way?" 

My {disease_progress > 2:upper arm}{disease_progress <= 2:wrist} was beginning to feel... odd. Full of light.

"This way, I think."

*[CLASSIFIED]
~ vig1 = false
->SomethingOutThereReport

=== SomethingOutThereReport ===

~ report = true

{firstvig == 1:15:22, 04/09}{firstvig == 2:17.00, 04/09}. The two intruders came to a chamber which we've taken to calling the forest. Not much can be made of their activities here, though, as any traces of them have already been covered by fast-growing fungi.

Some members of the team were convinced that they heard a creature moving in the mass of fungi. At the time, I thought this unlikely, as there have never been any reports of any animal life other than insects down here, but recent evidence has made me re-evaluate this.

As they didn't turn back at this juncture...
*[The only way for them to go was forward]

{ExplorationTeam == false:
->ExplorationTeam
- else:
->TheAscent
}

->END

=== ExplorationTeam ===

~ report = false
~ vig2 = true
~ disease_progress = disease_progress + 1
~ misc1 = "vig2-misc1.png"
~ misc2 = "vig2-misc2.png"
~ environment = "vig2-environment.png"
~ portrait = "vig2-portrait.png"

{SomethingOutThere:
~ map = "vig2-1-map.png"
~ infection = "infection3.png"
As we walked, I ran my finger against the bare rock of the wall and wasn’t surprised to see the lichen painted on the stone behind me. Roxanne didn’t notice, and I don’t think I’d be able to explain to her if she did. What would I do if she ran...

I barely noticed as the rock turned to brick.

- else:
~firstvig = 2
~ map = "vig2-map.png"
~ infection = "infection2.png"
We walked down the dimly lit tunnels; the concrete began to wear down in some places, being digested by the strange life around us. In the larger holes, we began to see bricks. Old bricks; hand-shaped, not industrially moulded. 

Concrete made some sense, but brickwork? Hadn't the place only recently been discovered? 
}

-We soon came across something as out-of-place as... well, as us. A bright yellow roadblock with a biohazard symbol painted on it. Our torchlight blinked off the reflectors. I scratched my {disease_progress > 2:upper arm}{disease_progress <= 2:wrist}.
~ landscape = "vig2-landscape.png"
"Oh fuck!" Roxanne was pointing her torch at the floor. What I'd originally taken for some kind of green toadstool was revealed to be a helmet. Leering out from under the helmet was a skull.

*[Kneel down]

{mood != 1:
~ mood = mood - 1
}

I knelt down to look more closely at it. It was indeed a skull, nothing more, nothing less... Well, a little more. The glowing lichen had colonised it, spreading out from the eye sockets in spiraling patterns. It looked familiar.

"What are you doing?"

I glanced up at her.

"I... I don't know. There's something... familiar about it, and..."

I stood up and looked around the cavern.

*[Kick it]

{mood != 3:
~ mood = mood + 1
}

I kicked the skull. It flew off into the dark, and I saw glowing shards scatter around the cavern floor. 
"Why did you do that?{disease_progress > 2: You've been acting fucking weird for a while now. What the fuck is going on?}"

"I... I don't know. There was something... familiar about it, and..."

I glanced distractedly around the cavern.

-<> There were more skeletons and the remains of helmets and fatigues. 

"They sent the military down here?" Roxanne's torch flashed over discarded weapons and first-aid kits, "What even is this place?"

{disease_progress > 2:
->infected
-else:
->clean
}

=infected

*[Truth]
{mood != 3:
~ mood = mood + 1
}

"It’s been here forever. People keep finding it, keep trying to explore it, but it always fails. There are things here older than humanity, and they'll remain once we've gone."

*[Lie]
{mood != 1:
~ mood = mood - 1
}

"I don't know; it could be anything; maybe there's a lab down here somewhere where they're making new kinds of mushroom? Maybe there's a fungi worshipping cult that's taken over, or it's just naturally ocurring?" I tried to smile, though that took a lot of energy. I don't think she was convinced.

-->toreport
=clean 

*[Guess]
{mood != 3:
~ mood = mood + 1
}

"If I were to take a guess, I'd say it was natural. A lot of this is old, the bricks but also the... the life here."

*[Speculate wildly]
{mood != 1:
~ mood = mood - 1
}

"I don't know; it could be anything; maybe there's a lab down here somewhere where they're making new kinds of mushroom? Maybe there's a fungi worshipping cult that's taken over, or it's just naturally ocurring?"

-->toreport
=toreport

"{disease_progress > 2:See what I mean!? Fucking weird! }Whatever this place is, we need to leave, now," She looked around the cavern, disoriented. "Which way did we come?"

She didn't ask the most important questions, like how these people died or what had reduced them to skeletons.

"Follow me. I think I know which way to go."

*[CLASSIFIED] 
~ vig2 = false
->ExplorationTeamReport

=== ExplorationTeamReport ===

~ report = true

{firstvig == 2:15:22, 04/09}{firstvig == 1:17.00, 04/09}. The discovery of a military unit deep inside the Site is perplexing. The remaining scraps of uniform don't belong to any extant military, the closest match being to that of the defence force of a Soviet satellite state.

From here, they went deeper into the Site. We can speculate on Pullman's motivation, but it's hard to say even now why Lawry followed him.

*[The only way for them to go was forward]

{SomethingOutThere == false:
->SomethingOutThere
- else:
->TheAscent
}

=== TheAscent ===

~ report = false
~ outro = true
~ misc1 = "outro-misc1.png"
~ misc2 = "outro-misc2.png"
~ map = "outro-map.png"
~ portrait = "outro-portrait.png"
~ environment = ""
~ landscape = ""

I still walked with the torch on full beam, even though I saw entirely by the light of the lichen and the spores. It was difficult at first, like walking into a bright room after too long in the dark, but now I had adjusted to it, it was as natural as any of my old senses. 

I hardly noticed that Roxanne had stopped until she turned the torch on me.

“We’re not going back to the lift, are we?”

I blinked at her silhouette. I could make out her eyes, narrowed at me. 
~ landscape = "outro-landscape.png"
"{firstvig == 2:You saw something there, didn’t you}{firstvig == 1:How did you know all that?}"

My neck itched. There was something stuck there.

"{firstvig == 2:"Saw… No, I didn’t see anything. I felt it, though; it’s part of this ecosystem as much as anything else down here. Well, apart from you."}{firstvig == 1:Know all... About this place? I felt it, the... ecosystem here... You're a stranger here.}"

It was still itching, down my chest, down my arm to the scratches on my fingers...

"{firstvig == 2:And you}{firstvig == 1:So are you}."

If I just dug my nails in...

*[No...]

- ~disease_progress = disease_progress + 1
~ infection = "infection4.png"
~ environment = "outro-environment.png"
~ portrait = "outro-portrait2.png"
~ climax = true

I do not know what she saw. Her eyes widened, locked on me, on my chest. 

I didn't try to say anything. I knew it would be pointless. 

{
-mood == 2:
The itching stopped. A lot of sensations stopped, or changed. 

I realised I wasn't even using my lungs anymore.

I didn't feel disappointed, or angry, or abandoned when she turned and ran.

I didn't feel anything.
- mood == 1:
The itching stopped. A lot of sensations stopped, or changed.

I realised I wasn't even using my lungs anymore.

I still felt a crushing sadness when she turned and ran.

-else:
The itching stopped. A lot of sensations stopped, or changed.

I realised I wasn't even using my lungs anymore.

When she turned and ran, I felt elated! Finally, some action around here!
}

She even dropped her torch.

{
-mood == 2:
I felt her through the tunnels, watching after her, making sure nothing got in her way.

She knew what this place was now; she deserved to remember...

To tell others.
- mood == 1:
I felt her through the tunnels, watching after her, knowing there was nothing I could do to slow her down.

There was some small comfort, though, that when she reached the lift she would be banished from here. 

She would never return...

-else:
I followed her, floating with her as light as air as we chased each other down the tunnels!

She knew this place now and would tell others, and they would come to visit me! 

What an incredible thought!
}

*[APPENDIX]
~outro = false
~climax = false
->TheAscentReport

=== TheAscentReport ===

~ report = true

APPENDIX: We found Lawrey, the photographer. She was slumped up against the service elevator she and Pullman used to gain access. We brought her back up with us and sent her straight into quarantine. 

The Site requires much more investigation than we initially thought. Her testimony, fragmented as it is, has been instrumental in the writing of this report. Despite some of its more... fantastical elements, I truly believe that she is  telling the truth.

*[CONCLUDED]->END
