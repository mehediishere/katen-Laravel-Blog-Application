-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2022 at 07:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katen`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `category`, `tags`, `post_details`, `publish_date`, `feature_image`, `view_count`, `created_at`, `updated_at`) VALUES
(2, 'There’s Another Shot Dead', 'side story', 'history,drama', '<p>CW: Gun violence, death</p><p>The air hung heavy with the foggy dew of a February morning.&nbsp;</p><p>Through\r\n the single-pane window, dampened though it was, could be heard the \r\nregimented tramp of a platoon of British Lancers. The melodic jingle of \r\nthem was harmonised by the footfall of their heavy boots. They passed \r\nby, unseen in the fog.&nbsp;</p><p>The well-worn sound of sirens echoed down \r\nthe street as they had done from early morning but neither of us paid \r\nheed. Nothing new for a Belfast morning.&nbsp;</p><p>I sat rigid at the \r\ntable, uncomfortable in the starched school shirt that was too small but\r\n ‘would see me through to the end of the year’, whilst Ma poured the \r\ncornflakes into the bowl before me. The tinkle of them played merrily \r\nagainst the threatening chorus outside.&nbsp;</p><p>A little milk splashed \r\nfree onto the table as she filled the bowl, seeping its way down the \r\ntables grains before a cloth could had.&nbsp;</p><p>“Hurry yourself up or \r\nyou’ll be late,” Ma said before dragging the hairbrush through my \r\ntattered mane, the futility of it lost on her - though her annoyance was\r\n clear when I ran my fingers through it, immediately undoing her hard \r\nwork.&nbsp;</p><p>From the counter, the little radio spat and crackled out a \r\nsong my mother liked and she hummed to herself as she flitted from \r\nmother-job to mother-job; cleaning and wiping, hanging the wet clothes, \r\nfolding the dry.&nbsp;</p><p><img style=\"width: 998px;\" src=\"https://static01.nyt.com/images/2022/06/22/opinion/22argument-crime-image/22argument-crime-image-videoSixteenByNine3000.jpg\"><br></p><p>I shovelled in a mouthful. The crunch drown out the world around me.&nbsp;</p><p>“Ma, sugar please,” I said, mouth still full, sending a burst cornflake shrapnel into the air.&nbsp;</p><p>She whisked the sugar over to me and wiped down the table once more, humming out the dying notes of the song.&nbsp;</p><p>Da’s absence wasn’t even registered by Ma and I. He was never there in the mornings.&nbsp;</p><p>He\r\n was the milkman, passing through the local streets in his van before \r\nthe cocks had time to clear their throats, swapping empty bottles for \r\nfull ones, often with only the dawning sun for company. <br></p><p></p>', '2022-09-19', NULL, 0, '2022-09-19 02:34:40', '2022-09-19 02:34:40'),
(3, 'Long Distance Phone Call', 'technology', 'fiction,technology', '<p>You can talk to the dead on the pay phone in front of Seventh Street Market in West Oakland.&nbsp;&nbsp;</p><p>There\r\n is also a donut store where they sell burgers, and a check cashing \r\nstore in the small strip mall, but everybody references the market when \r\ntalking about the Phone.&nbsp;I didn\'t tell my Dad we were going to \r\nCalifornia so he could talk to his dead wife, my Mom, until we hit \r\nOlympia, Washington.&nbsp;</p><p>“That is the stupidest goddamn thing I have ever heard of! We are driving to <em>Oakland</em>\r\n to have a seance on a pay phone?” He said when I told him our actual \r\ndestination. \"I thought we were going to a baseball game!”&nbsp;</p><p>“Dad, \r\ncome on, I want to do this. Please, come along and we’ll see how it \r\ngoes. And then we’ll see your Mariners play the Oakland A’s.”&nbsp;</p><p></p><p>Although\r\n I always think of him as so much bigger than me, we were about the same\r\n size now, he had lost so much weight from stress over the past year. He\r\n spent all day on his recliner, alone, he even stopped working in his \r\ngarden. My dad had nothing else to do, and no matter what he said, he \r\nhas always loved car trips.&nbsp;He needed something to shake him up, and I \r\nknew speaking to Mom again would do it.&nbsp;&nbsp;&nbsp;</p><p></p><p>He looked over \r\nat me, “Don’t you have work? Did you lose your job again!”&nbsp;His face was \r\nturning red under his battered Seattle mariners cap.</p><p></p>', '2022-09-19', NULL, 0, '2022-09-19 02:36:09', '2022-09-19 02:36:09'),
(4, 'The Chandelier', 'side story', 'fiction,drama', '<p class=\"ql-align-justify\">There were gems in the chandelier right past\r\n the door of my home. I wasn’t supposed to touch the glimmering stones \r\nas they hung, but I would push up a chair and scramble on the rickety \r\nwood to brush them with my fingers anyway. It was addictive to paint the\r\n lines of my fingerprints along the surface. I would flick on the lights\r\n and watch them sway, imagining my mother on the dance floor, conjuring \r\nimages of date nights when Mama walked out of the house with a black \r\ncocktail dress and her best pearls along with the smokey scent of her \r\nexpensive perfume.&nbsp;</p>\r\n<p class=\"ql-align-justify\">	There was no helping how they reminded me \r\nof Mama; the clacking as they collided with one another was the same \r\nnoise her heels left on the ballroom floor. It was my favorite time to \r\nwatch the dance lessons she took, hand in hand with a gentleman that \r\nsmelled of the ocean and spoke with an accent—watching her dance, even \r\npracticing, left me with pangs in my heart, and there was nothing I \r\nwanted more than to be able to move as she did.&nbsp;</p>\r\n<p class=\"ql-align-justify\">	And, if I could get away with it, I would \r\npick up the little hook that clasped the jewel and tuck it in my palm, \r\nmarveling at the punctures it left—red lines that showed their beautiful\r\n marks on me. Oh, the way the gold shone, like the breath of a setting \r\nsun against indigo waves, orange and bright as a flame. I wanted those \r\nmarks because they made me more like Mama, with the angry indent from \r\nher bra that she stripped off with a sigh, the scars across her stomach \r\nfrom where the skin had pulled and made me. My god, I would’ve cut them \r\nmyself. I never dared to use her lotion, never dared to do more than \r\nscrew off the smeared cap and smell, but I would dig through the \r\nmedicine cabinet until I found the tape and wrap my flat torse. I would \r\ngo into her bathroom. I would take her razor and try my best to shave my\r\n limbs as she did, and when she came home to three red lines on my skin,\r\n she always knew.&nbsp;</p>\r\n<p class=\"ql-align-justify\">	I kept everything in a little corner of my \r\nbedside drawer, in the jewelry box she had gotten me. She never found \r\nit; she never looked. But she would sit down on my bed. Unwrap the tape \r\nwith careful fingers. Bandage my cuts, and after, hug me to her chest, \r\nsurround me with the softness of her skin, pressing her lips into my \r\nhair. <br></p><p></p>', '2022-09-13', NULL, 1, '2022-09-19 02:37:08', '2022-09-27 18:46:58'),
(5, 'Moonlight and Madness', 'side story', 'fiction,drama', '<p>Your eyes pour the moonlight on my path as I turn my back to you. In \r\nthe dead of the night, I walk with my family, away from my home, my \r\nstreet, my town, and what was till yesterday- my country.</p><p>There \r\nare other families with us. Snaking their way to Lahore railway station.\r\n In fear, pain, and certainty that their lives are not theirs anymore. \r\nIt can be cut, morphed, or smoked out within a matter of seconds. Even \r\nif they get on that train to Amritsar and arrive there in one piece, \r\nthey would just be a wisp of what they once were.</p><p>I walk. With a \r\nvolcano in my chest where my heart used to be. My heart is left crying \r\non that terrace. The terrace where we used to meet under the moonlight. \r\nWhen it was still the moon that lit up the night. When your head covered\r\n in hijab<em> </em>was still in my reach. And the moon in my cupped hands was still in your reach.</p><p>I\r\n carry a small load on my back as others. It will help us in getting to a\r\n new nation that is about to be my nation. And build a new life. From \r\nthe ruins of a life that has been uprooted.</p><p>The air is still. A \r\nrare gust of wind brings the acrid smoke. And wails. From people \r\nunknown. From the far end of the town that I can no longer call mine. I \r\ndoubt if it would ever be yours either. You may be too numb to its \r\nembrace.</p><p>My family moves in a huddle. Alone, amongst a sea of \r\npeople. Clutching each other’s hands. As if we could be more lost than \r\nwe already are. My father, mother, brothers, and sisters are watchful, \r\nlooking back every now and then-half expecting the earth they are \r\nwalking on to swallow them.</p><p>We cross the end of the road, the edge\r\n of the town, and the border of the wilderness beyond. But I know you \r\nare still watching me. With your eyes as dry as mine, your spirit as \r\nbroken as mine, and your heart trying to console itself on that terrace.</p><p>The terrace I can never go back to. And you may never go back to.</p><p>All\r\n because a man drew a line. Quashing the hearts to choose a side; \r\npulling the threads it had formed till they snapped, shattering it. \r\nBrushing the fragments under the carpet of darkness.</p><p></p>', '2022-01-08', NULL, 0, '2022-09-20 03:33:22', '2022-09-20 03:33:22'),
(6, 'The Overalls', 'programming', 'python,java,fiction,brainstrom', '<p>Snip, snip, snip. I’m becoming something new. I was a bolt of fabric,\r\n long and wonderful and wrapped many times around myself, hugging my own\r\n form. I had once been thread, a multitude of threads, and maybe even \r\nsomething else before that, but who can be expected to remember that \r\nfar? Those threads were stretched tight and woven one over the other, \r\nagain and again. Woven so tightly I became a taut impenetrable thing, \r\nnot a hole to be seen. But now, I’m learning I am not as indestructible \r\nas I had thought. For one snap of those sharp knife-jaws and I am torn \r\nasunder. One could be worried at such a development. Perhaps I should be\r\n worried, but it has never been in my nature to let things get me down.&nbsp;</p><p>Maybe\r\n it was that great long hug that I had given myself for so long that \r\nfortified me enough to let this thing happen and remain unworried. \r\nWhatever the reason, I am glad for it. For in my patience and courage I \r\nhave found myself formed into a new shape. I have been cut away from the\r\n rest of my great length and now I am a number of much smaller pieces. \r\nThe pieces come together with more thread, this time stitching my halves\r\n together. Gentle but deft hands work to make me what I am. I have some \r\nadornments added, including beautiful metal buttons. They hook into \r\nholes along my long straps at the top. I don’t have the right words for \r\nwhat my new shape might be, so I will call it leggy-half-top.&nbsp;</p><p>I \r\nam folded up and tossed into a box with a number of similar-looking \r\ndesigns that are made from that same bolt of fabric that I was once, but\r\n am no longer. Our threads have been severed, but I feel cozy with them \r\nstacked all around me. I don’t see light again for a long time. Then my \r\nbox-house is upturned and I, along with my twin designs that are not me \r\nbut were once me, tumble out onto a chair. We are hung up in a tidy row \r\ninside a room whose walls are lined with other colorful items. This \r\nplace is important, for it is here that I meet my people. A tall person \r\nand a small person are exploring the room, running their hands along the\r\n other designs that hang on the walls. The small one jumps excitedly \r\nwhen the tall one pulls me from my rack and holds me up. I learn my name\r\n then. Overalls. I may still privately call myself leggy-half-top.</p><p>The\r\n tall person and the small person bring me to their home, and I have a \r\ntiny and lovely new room where I hang next to soft, vibrant creations in\r\n a rainbow of colors. It becomes clear that the small person is to be my\r\n best friend and I hers, for she and I spend more time together than any\r\n of my companions who reside in my room with me. Sometimes I am kept so \r\nbusy with the small person that I don’t see my room for long stretches \r\nof time. I have frequently been tossed on my floor-bed at nighttime only\r\n to be put to use again the following day. This is where the tall person\r\n comes in. She is a great curator and care-taker of all of the lovely \r\nitems that live with me in the tiny room.&nbsp;</p><p>We are a great team, \r\nthe three of us. For my part, I keep the small person warm and mostly \r\ndry (except when she jumps us into puddles or goes sloshing through the \r\nstream). The small person is my adventure-gifter, taking me along on \r\nevery great new exploration. And certainly, any adventurer worth their \r\nsalt is bound to get some scuffs on the knees or dirt on their cuffs. \r\nThat’s where the tall person comes in. She’s always washing both of us \r\noff, the small person and me. Now I will say that the small person’s \r\nwashing does seem to be a bit more pleasant than my own. She sits in a \r\nwhite tub with water and bubbles and toy boats. From my vantage point on\r\n the floor, it certainly looks fun. My washing happens inside a large, \r\ndark machine. Usually I’m thrown in with other garments. I am proud to \r\nsay, I am always the filthiest. My first trip through this machine was \r\ntraumatic, but I aim to be upbeat and I am used to it now. It’s all part\r\n of our adventure lifestyle. Get messy, get clean, repeat.</p><p></p>', '2022-09-07', NULL, 1, '2022-09-20 03:35:23', '2022-09-27 09:30:18'),
(7, 'Foretold in Smoke', 'technology', 'technology,city,building', '<p><em>Vivienne is incredible! My life has completely changed since my \r\nvisit. It’s like a light came on and she’s somehow unlocked all this \r\nhidden potential. She’s the best, seriously just go. Call today!</em></p><p><strong><em>Bradley J. 5/5</em></strong></p><p><em>Worth every penny. Highly recommend.</em></p><p><strong><em>Kevin R. 5/5 Stars</em></strong></p><p><em>I\r\n never thought I’d come to a place like this, but when I was at an \r\nall-time low, I just needed someone to tell me if life was worth \r\nsticking around for. I wanted to know if it ever got better. Vivienne \r\nmade me believe that it would. She told me true love was right in front \r\nof me, and now I’m dating my best friend and am the happiest I’ve ever \r\nbeen. She’s the real deal.</em></p><p><strong><em>Linda K. 5/5</em></strong></p><p><em>Vivienne showed me the most beautiful future and now I am not afraid to go after my passions.&nbsp;Life changing.﻿</em></p><p></p><p>I\r\n know your type. You’re all the same. You come to me, seeking something \r\nyou believe life has withheld from you. Desperation hangs on you like a \r\ngarment; you wear insecurity like a second skin. You shift and fidget in\r\n my doorway, hoping no one will recognize your car in the street and \r\nspread the word that you’re seeking wisdom from a godless heathen and \r\nher crystal ball. Yet, here you are.</p><p>My polished greeting pulls \r\nyou a few steps closer into the dimly lit room, where you stare at the \r\nartwork on the wall, trying to decipher its abstraction. You fumble over\r\n a compliment when I admit I painted it myself. Your nose twitches at \r\nthe cloud of earthy smoke hanging in the stagnant air, and your ear \r\ntilts toward the sharp plucking of unfamiliar instruments—music trilling\r\n softly from a hidden speaker. The sound is heady, exotic, and makes the\r\n hair on your arms rise. The caricaturistic experience you expected is \r\nsomething different—its alive, <em>sacred</em>, and it smells like singed aloeswood.</p><p>I\r\n sense the conflict within you—to stay or to flee, to grasp hold of your\r\n future and drag it into today, or to return to life as normal and \r\nsubmit to the natural process of discovery. You twist and wring your \r\nhands, afraid you’re damning yourself, or cursing your bloodline by \r\nsetting foot in this den of witchcraft, or whatever it is they’re \r\ncalling it these days. But I am no one to fear; I am a respectable \r\nbusinesswoman. But you must make your own choice, so I remain silent, \r\nwaiting for you to remember whatever it is that brought you here.</p><p>At\r\n last, you move. You approach me like I am an oasis in the desert, \r\ndoubting what you see, but desperately wanting it to be real. You are \r\nafraid to ask, afraid of the answers. I sense your struggle; I see your \r\nsoft heart, your goodness and warmth, your suppressed potential \r\nsuffocating under self-doubt. You are afraid to know what lies ahead \r\nbecause you have grown comfortable letting life rush by you. It is a \r\nriver, coursing where it wills, and you are a leaf at its mercy. What I \r\ntell you will alter the course of your life, not because the words on my\r\n lips drip with inherent power, but because you will believe them.&nbsp;</p><p><em>You</em> are the river. <em>You</em>\r\n are the force that cuts a path through the unknown, that courses where \r\nit wills. You are a rush of life, pure and sweet, with the power to \r\nshape and form and forge your own future.</p><p>My gift to you is no \r\nparlor trick, my predictions are not conjecture; I simply tell you what \r\nyou are, and what to look for, and you will find it every time.</p><p>I do not spin the threads of fate, but occasionally, I give the threads a gentle <em>pluck</em>.</p><p><code></code></p>', '2022-09-07', '340.jpg', 3, '2022-09-21 00:28:58', '2022-09-27 09:29:43'),
(8, 'After the Rock', 'technology', 'technology,building', '<p>Humans can transform from solid to spirit in about half a second. I just found this out. Just a half-second ago.&nbsp;</p>\r\n<p>I might be shocked if I weren’t so dead.</p>\r\n<p><span style=\"background-color: rgb(255, 156, 0);\">“Huh,” is all I have to say about it.</span></p>\r\n<p>“Yep,” my wife agrees, equally shockless.</p>\r\n<p>She is standing beside me along the sun-baked shoulder of a two-lane \r\ncountry highway, and we are both staring down into the drainage ditch. \r\nAt the bottom are scattered piles of junk — a nasty trail of breadcrumbs\r\n — all leading to a battered tomb.&nbsp;</p>\r\n<p>The tomb used to be a car. For a while, it was <em>our</em> car. But that was before the rock.</p>\r\n<p>“How long have we been standing here?” I ask.&nbsp;</p>\r\n<p>“I think…” My wife’s hand becomes a vapor before reforming into \r\nfingers. She points at the junk in the ditch. A tire is still spinning.&nbsp;</p>\r\n<p>“…not long.”</p>\r\n<p><font color=\"#00FF00\">Time seems off. I count to five, but can’t tell if five seconds or \r\nfive hours go by. We point out the broken pieces of what became our soul\r\n cocoon, transforming us from flesh into … whatever we are now.&nbsp;</font></p>\r\n<p>“See there? Mirror. Hubcap. Bumper…Shoe?”</p>\r\n<p>“<em>My</em> shoe,” she confirms, “Is there a foot inside?”</p>\r\n<p>“Looks empty,” I tell her. I notice my hands are balled into fists. I open them. “Do we just…<em>stay here</em>?”</p>\r\n<p>My wife says, “I’m pretty sure that…” and another pause that’s either a second or a century “…we can do whatever we want.”&nbsp;</p>\r\n<p>“Well then.” I sound motivated, but I don’t move. “I’m gonna have a look at the wreck. Coming?”</p>\r\n<p>“No,” she tells me. “I don’t want to.”</p>\r\n<p>Something like a laugh springs from my mouth. It sounds like a \r\nfrother steaming mud. I feel funny and I laugh again because I’m so \r\nrelieved to feel anything. It feels normal and good. <em>Feeling</em> feels good.&nbsp;</p>\r\n<p>I know it’s because of her.</p>\r\n<p>And for the first time since we found ourselves standing on the side \r\nof the road, I look her way. I can tell my eyebrow has lifted. “<em>You </em>don’t want to see your own corpse? Bullshit.”&nbsp;</p>\r\n<p>She shrugs. At least I think she does.&nbsp;</p>\r\n<p>“It’s <em>gruesome</em>,” I tell her with the voice of a carnival barker. “It’s macabre! It’s the sum of a thousand nightmares. It’s…so <em>you</em>.”&nbsp;</p>\r\n<p>“I’m different.”</p>\r\n<p>“Nooo…Remember when you collected my blood from a nosebleed to make cake?”</p>\r\n<p>“I did not.”</p>\r\n<p>“You <em>wanted</em> to.”</p>\r\n<p>“True,” she says, “But I’m just not interested in empty shells.”</p>\r\n<p>And then she looks at me for the first time with the same eyebrow raised. “You want to see our dead bodies? Bullshit.”</p>\r\n<p>Now I’m shrugging. “I can take the gore.”&nbsp;</p>\r\n<p>“The sight of your own veins makes you queasy.”</p>\r\n<p>“I like scary movies.”</p>\r\n<p>“You like cartoon anatomy,” she clarifies. “But if it gets real...”&nbsp;</p>\r\n<p>She squeezes her eyes shut, covers her ears, and goes “la-la-la” to \r\nmake her point. It’s a good point. Clinical butchery makes me black out.\r\n But not anymore. Not after the rock.&nbsp;</p>\r\n<p>The rock changed me in more ways than one.</p>\r\n<p>“I’m still me,” I say, smiling. “I think you’re still you.”</p>\r\n<p>“I guess we are. But who were we? What did we do?”</p>\r\n<p>I move. I think I’m walking. But there’s no tensing in my muscles, no\r\n popping in my knees. It’s weird and slow, but good. I’m still smiling. I\r\n say, “Baby, anything we forget is probably not worth remembering!”&nbsp;</p>\r\n<p>While I walk, she’s saying, “I remember what it feels like to hear a \r\nknock at the front door, knowing there’s a hot pizza waiting on the \r\nother side. I remember trees turning red and yellow and orange. Not like\r\n this.” She sounds disgusted. “All <em>green</em>…”&nbsp;</p>\r\n<p>“I remember that,” I say.</p>\r\n<p>She goes on, “I remember the first sip of great wine out of the \r\nbottle and how it changes when it’s the last sip. I remember purring \r\ncats and photographs and staying home and seeing no one. I remember our \r\nwedding vows.”</p>\r\n<p>“Forever and then some,” I recite.</p>\r\n<p>The mangled car-tomb is upside down and far too crumpled to look \r\ninside. I slip below the earth without digging, spying buried rocks and \r\nburrowed worms, all without dirtying my skin or clothes.&nbsp;</p>\r\n<p>What other tricks will I discover after the rock?</p>\r\n<p>My head wafts up into what’s left of the front seat.&nbsp;</p>\r\n<p>“We’re not as gory as I thought!” I shout from the rubble.</p>\r\n<p>“Not so loud,” my wife tells me. “I can hear you just fine.”</p>\r\n<p>“Your eyes are open,” I say with a softer voice, just above a whisper. “You’re looking right at me.”</p>\r\n<p>“Am I looking at you or…<em>you</em>?”</p>\r\n<p>“Uh…<em>dead</em> me.”</p>\r\n<p>“Both of you are dead. Try again.”</p>\r\n<p>“Uh…the me that <em>isn’t</em> a ghost?” The G-word feels funny to \r\nsay. I laugh a little. It sounds less frothy and more like it used to. \r\n“Your hair’s in your eyes.”</p>\r\n<p>“It’s not mine anymore.”</p>\r\n<p>“I just brushed it back. And touched your face. I think your skin is \r\ncold already, but I don’t know what cold feels like with these new \r\nfingers.”</p>\r\n<p>“I was always cold.”&nbsp;</p>\r\n<p>“And you were always beautiful. Even now. <em>Hauntingly </em>beautiful.”</p>\r\n<p>My wife pretends to snore from the roadside. It’s what she does whenever I get cheesy.</p>\r\n<p>“I’m not kidding,” I say, louder again. “You wear death like it’s Chanel.”</p><p></p>', '2022-09-23', '8810After the Rock.jpg', 3, '2022-09-21 00:34:37', '2022-09-27 09:33:21'),
(9, 'Survival of the Hopeful', 'programming', 'technology,programming,study', '<p><span style=\"background-color: rgb(0, 255, 255);\">Wind </span>whipped over the dunes, blowing sand into every nook and cranny \r\nit could find. Kiera gazed over the barren landscape and sighed. She \r\nglanced behind at the haul which would keep her alive through the \r\nharshest part of the winter, attached to the Muta Beast she rode. It was\r\n precious cargo for scavengers like herself. \r\n</p><p>	The Beast between her legs snorted and shook its massive head; he \r\nhad used up his fat reserves over the winter months and was eager to \r\nreach the feeding grounds. Kiera tapped his sides lightly with her \r\nheels, and let her body roll along with the forward motion. </p>\r\n<p>	They lumbered forward until the sun reached the highest point in the\r\n sky. Normally she would stop and set up a shelter to protect her and \r\nthe beast during the hottest part of the day, but today was not a normal\r\n day. She didn’t have to urge him on. He could sense they were close to \r\nhome.</p>\r\n<p>	<span style=\"background-color: rgb(0, 255, 255);\">Kiera </span>consulted her navigator pad—they were approaching the \r\ncoordinates. Some of the older scavengers claimed to be able to navigate\r\n with only the dunes as a guide, but she was not so confident in her \r\nabilities. The flashing light on the screen was a beacon she preferred \r\nto trust. </p>\r\n<p>	As they topped the last dune, a large dome jutted up out of the sand\r\n like an ugly scar in the otherwise uniform wasteland. It was the only \r\nsign of civilization for a hundred miles. The lives of ten thousand \r\nsouls, including her own, depended upon the structure. </p>\r\n<p>	As she picked her way down, something sticking up out of the sand \r\ncaught her eye. Three pale fingers protruding from the shallow grave \r\nwere the only indication of what it was. A shiver ran down her spine. \r\nDeath came quickly in the dunes and life was cheap.</p>\r\n<p>	As unsettling as it was, it would be an unforgivable sin to waste \r\nwhatever treasures the corpse might hold. She swallowed hard and halted \r\nher reluctant beast. He bellowed in protest at stopping in sight of \r\nhome, but he too well trained not to obey the command. </p>\r\n<p>	Kiera slid down and began the exhumation, starting at the \r\nfingertips. As a right hand emerged, she was surprised the wrist was \r\nbare—her own right wrist was branded by the mark of her town. She’d \r\nnever seen anyone without a brand.</p>\r\n<p>	The face, covered by goggles and a bandana, appeared and Kiera kept \r\nexcavating the sand around the torso. It wasn’t too deep yet; they \r\nmust’ve fallen recently. She examined the folds of fabric, grateful that\r\n the goggles blocked her from seeing their eyes. </p>\r\n<p>	Her deft fingers were rewarded with a nothing. Grumbling, she yanked\r\n out the left arm, again pulling up the sleeve to look for a brand. </p>\r\n<p>	The forearm was marked, not but a crude brand, but by the most \r\nbeautiful tattoo Kiera had ever seen. The swirling lines captivated her,\r\n and she found her fingers tracing the design. There was something \r\nfamiliar about the pattern, as if she’d seen something similar before. </p>\r\n<p>	Realization clicked in her brain. Kiera knew little of the world, but she recognized the pattern. It was a map. </p>\r\n<p>	Only governors were allowed to have maps showing the locations of \r\nother communities. Kiera had never seen one, other than the crude \r\nsketches of the scavengers. Based on the scale, it had to span hundreds \r\nof miles. </p>\r\n<p>	She pulled out the knife from her belt and took a deep breath, \r\nswallowing her revulsion. A map like this was too valuable to leave \r\nbehind. Skinning a person’s forearm wasn’t the worst thing she’d ever \r\ndone to survive, but it was up there. </p>\r\n<p>	The blade of the knife pressed down on the skin, blood welling up \r\naround it. That was odd…blood shouldn’t still be flowing. Then the \r\nfingers twitched. </p>\r\n<p>	Kiera jerked back, cursing under her breath. Her heart pounding in \r\nher chest, she pulled down the bandana, revealing the face of a young \r\nman, and held the blade up against their nose. The metal fogged up \r\nimmediately; he was still breathing. </p>\r\n<p>	A groan escaped her lips. It was one thing to cut up an already dead\r\n guy, but now…she knew the smart thing would be to slit his throat and \r\nkeep going. He was mostly dead anyway. Just a quick flick and it would \r\nbe over. </p>\r\n<p>	She looked at the face of the boy, blissfully unaware of the danger.\r\n Cursing again, Kiera shoved the knife back into her belt. The heat must\r\n be boiling her brain. She linked her arms under his armpits and across \r\nhis chest and strained to heave him out from the shallow grave. </p>\r\n<p>	It was a struggle, but eventually she squeezed his lanky frame onto \r\nthe sled, rearranging her wares to cover his gangly limbs. By the time \r\nthe tarp was pulled back tight, it was like he didn’t exist. </p>\r\n<p>	The Muta Beast made up for the detour, getting her to the town wall \r\nin record time. She punched in the code on her pad and held her breath. \r\nThe gate began to open with a grinding noise. Kiera didn’t have to \r\ncommand the Muta; he lumbered through the opening and into safety. </p>\r\n<p>	Kiera breathed a small sigh of relief. This was the place of her \r\nbirth, and while it wasn’t much, it was a shelter in the desert. She \r\npushed away thoughts about how it would also be the place of death one \r\nday. This life was all there was and it did no one any good daydreaming.</p>\r\n<p>	The gate clanked shut behind her, and a guard approached. She \r\nremoved her goggles, blinking at the sudden shift from bright light to \r\nthe artificial dimness the dome produced. </p>\r\n<p>	A quick transfer of few trinkets to the guard, and an understanding \r\nwas stuck to skip this inspection. The bargain made, she led her Muta \r\ntoward the feeding pastures. </p>\r\n<p>	It didn’t take long to negotiate the return of the beast with the \r\nboy watching over them. He had been taught well; he bartered her down to\r\n half her deposit, despite the fact the beast had no injuries or signs \r\nof sickness. But it was to be expected. Renting a Muta Beast was an \r\nexpensive investment, but well worth it if a scavenger could bring back \r\nenough prizes. </p>', '2022-09-21', '9389Survival of the Hopeful.jpg', 13, '2022-09-21 00:38:19', '2022-09-27 19:31:29'),
(10, 'El Cerrajero', 'web development', 'web development,dev talk', '<p>Of Miguel’s many talents, the one he liked least was his ability to \r\nbe underestimated by everyone he met.&nbsp;He thought it would help in his \r\ncareer, but really it was just annoying. Of average height and weight, \r\ncurling light brown hair with stooped shoulders and a paunch, he was not\r\n attractive, nor a threat. Always ready with a quick joke, he was \r\nremarkable only for being unmemorable.&nbsp;His light brown complexion could \r\nbe of several nationalities, and his voice was lost in crowds. He was a \r\ncypher in more ways than one.</p><p></p><p>The last morning of his \r\nregular life, he stepped onto the bus on the way to work like he did \r\nevery day. Miguel scanned everyone as he was trained to, but no one was \r\nnew. The older woman who always wore a scarf gave him a suspicious look,\r\n like she did each morning. The two young women, one blonde and one \r\nbrunette, ignored him as usual. The gentlemen in the porkpie hat finally\r\n gave him a head nod. It only took two years for that.&nbsp;</p><p></p><p>The\r\n bus suspension wooshed air and then rolled side to side as it moved off\r\n to the next stop. His legs matched the roll from years of practice. He \r\ntook his usual seat in the middle of the car and pulled out the \r\nnewspaper, unfolded, then re-folded it carefully to expose the crossword\r\n puzzle. He rarely did not finish in the 30 minute commute to his \r\noffice.&nbsp;At the next stop Miguel did not even look up at the new riders \r\nuntil the bus moved again.&nbsp;</p><p>&nbsp;The crossword clue was ‘unexcited’.&nbsp;Five letters, starting with B.</p><p>&nbsp;<em>Blase.&nbsp;</em></p><p>Just like his life. He looked up out of habit, and saw a new face.</p><p>The\r\n young man in the light gray jacket appeared too fit, too well dressed \r\nfor this commuter bus.&nbsp;&nbsp;Miguel quickly looked down, his mind raced. \r\nCould it be? But why now? He retraced his steps that morning, then from \r\nthe last few days. Nothing out of the ordinary.&nbsp;Just to be safe, he \r\nexited the bus before his regular stop to see what would happen. He \r\nstood alone watching the bus continue on, the crossword only half \r\ncompleted.&nbsp;&nbsp;</p><p></p><p>Miguel began the walk to his office.&nbsp;Was he \r\njust paranoid? He worked hard to get this job, expecting high stakes \r\nadventures, beautiful women and car chases.&nbsp;But no. All he does is sit \r\nin a cubicle and move letters and numbers around.&nbsp;He walked through the \r\nrevolving doors of the huge circular headquarters of the global tech \r\ncompany, the bright sun shining through the curved windows.&nbsp;Past the \r\nmodern art and large water fountains and then into the elevator. \r\nArriving on his floor he walked down a small corridor, and then through \r\nthe inconspicuous door into his actual job. Dim lighting and dark \r\nfurniture greeted him, torpor floating in the air with the dust.&nbsp;The \r\nCIA’s office decorating budget did not compare to an international \r\ncorporation’s.</p><p></p>', '2022-09-21', '9701ElCerrajero.png', 7, '2022-09-21 00:59:34', '2022-09-27 18:46:48'),
(11, 'Blissful Ignorance', 'side story', 'drama,history', '<p>In a dilapidated historic, tiny, dark house in Baku\'s ancient inner \r\ncity, Asghar Quliyev was busy eating dinner with his mother and \r\nchildren. At the same time, his wife pulled up a chair after serving the\r\n meal. Everyone was eating in silence.</p>\r\n<p> </p>\r\n<p>Today\'s meal consisted of Dolma (rice, minced filled capsicum) and a drink of Feijoa for the week\'s revelry.</p>\r\n<p> </p>\r\n<p>Feijoa used to cost 20 manats which were very expensive. There was a \r\nmysterious silence at the dining table. Nigar Quliyeva, Asghar\'s wife, \r\nlooked before her while taking small sips.</p>\r\n<p> </p>\r\n<p>This silence was very awkward. Asghar broke it with his words.</p>\r\n<p> </p>\r\n<p>\"Today, I don\'t feel like my house is small.\"</p>\r\n<p> </p>\r\n<p>His mother stared at her son through her old eyes. Then, looking at \r\nthe Feijoa floating in his glass, she smiled and said: \'When your \r\nfavourite drink is in front of you, then you don\'t think anything is \r\nsmall, neither the house nor the glass.\'</p>\r\n<p> </p>\r\n<p>\"Not even your vision\". His wife also gave him a bite.</p>\r\n<p> </p>\r\n<p>\'What happened? Are you taunting me Nigar?\" He placed the glass \r\nfirmly on the table without caring about the splash of the drink and \r\nsaid.</p>\r\n<p> </p>\r\n<p>\"I\'m just saying.\" Seeing him getting worse, Nigar wanted to change the subject, but it was too late.</p>\r\n<p> </p>\r\n<p>\"Look Nigar! You call me narrow-minded? I brought you from a small \r\nvillage and settled in Baku. And allowed you to wear short dresses. I \r\ntake you to the theatre with my limited income. We live a good life. You\r\n are no less than a lady. Then how did I become narrow or \r\nshort-sighted?\" Asghar spoke as if his trust had been hurt, which he had\r\n built in years.</p>\r\n<p> </p>\r\n<p>\"Oh God, you just loading things! I was just giving a poetic commentary.\", Nigar retorted.</p>\r\n<p> </p>\r\n<p>\"Poetry was not being presented here. It was a happy family gathering\r\n which you ruined.\", Asghar shouted. And then left the unfinished food, \r\npicked up the cigarette box, and slammed the door by humming.</p>\r\n<p> </p>\r\n<p>\"It is tough to entertain silkworms and women.\"</p>\r\n<p> </p>\r\n<p>On a cold night in the cobbled streets of the ancient city, where \r\ntourists strolled, he was busy blowing away his sorrows in cigarette \r\nsmoke. Walking like this, he reached the shore. Seeing the couples \r\nholding hands, smiling, and talking on the beach, a tingle rose on the \r\nleft side of Asghar\'s chest even though he was living a happy married \r\nlife. Or just what he thought he had. Nigar\'s view was different.</p>\r\n<p> </p>\r\n<p>Asghar was a chef in an old traditional food restaurant in Baku. He \r\nlearned these dishes from his grandmother and mother. And now he was a \r\ncooking expert. A parallel of his pilav was hardly available. A job in \r\nthe magnificent restaurant of Qabala Khanlar was also a matter of honour\r\n and glory.</p>\r\n<p> </p>\r\n<p>Local and foreign presidents, diplomats, ministers, elites, etc., \r\ncame here. But his family never came. When he put a rib cage in the \r\noven, he knew how delicious meat would come out forty minutes later. The\r\n city of Baku was a great mystery, a beautiful combination of poverty \r\nand affluence. Middle-class people like Asghar pretended to live joyful \r\nlives and passed on stories to their generation. And like those rich \r\nkids and their parents who didn\'t know where to spend their money. Women\r\n selling socks, men selling vegetables, children selling bread, and old \r\npeople sweeping around were also the state\'s responsibility. But much, \r\nif not everything, was wrong at the highest level. Bribery was at its \r\npeak. Cruelty was common. Might was right, and minor was crushed like a \r\npeanut. When Asghar returned home late at night, his mother was awake, \r\nturning her hand over the family tree paper, their family heirloom. When\r\n Asghar came, she kissed his forehead and went to sleep, and Asghar \r\nspread the paper and sat in the corner of the old sofa.</p><p></p>', '2022-09-22', NULL, 33, '2022-09-21 04:48:45', '2022-09-27 10:11:57'),
(12, 'The Runaway', 'side story', 'fiction,drama,mystery', '<p>I sit and stare out the window of the train car. </p><p>There she is.\r\n Fall in all her glory. My absolute favorite season. And I have to admit\r\n she\'s even more beautiful in this part of New England. Rich vibrant \r\nshades of scarlet, gold, orange and emerald green saturate every strand \r\nof landscape. It comforts me to know that as I embark on this journey, \r\nthe world itself has decided to transform too. It seems fitting that as I\r\n change, grow and embrace my dreams mother nature has come along for the\r\n ride.</p><p>I have never been to Vermont. I\'m more excited than \r\nanxious. Honestly, I\'ve never been off Long island. Wait that\'s not \r\nentirely true, I went New Jersey six years ago.</p><p>***</p><p>It was \r\nfor my husband\'s brother\'s birthday party. We drove almost three hours \r\nto get to some strange sounding town in South Jersey. I liked Michael, \r\nmy husband\'s brother. He is calm, mild mannered and has a great sense of\r\n humor. The complete opposite of Jack, the man with whom I have chosen \r\nto spend my life. We sat in Michael and Carols backyard and I wondered \r\nif Carol even know how lucky she was? Jack brought me over a drink. He \r\nsmiled at me so I smiled back. I was so grateful to be out of the house \r\nthat I even subjected myself to Jack\'s cousin Milly. Once she had your \r\near there was little chance of escape. I continue to nod and pretend \r\nlike I\'m interested as Milly goes on and on and on about her spoiled son\r\n and how ungrateful he was at Disneyland.</p><p>***</p><p>The train \r\nstation is hectic. More people than I had anticipated. My mind wonders \r\nto the money I was able to withdraw from the bank. Its safely tucked \r\ninside my long leather boots but this is all that I have in the world. I\r\n gather up my one big duffel bag along with my purse and search for the \r\nladies room. At the mirror I take in my reflection. My hair is filthy. \r\nBut I will be changing it anyway. My eyes have matching dark circles and\r\n my complexion is gray. I\'ve never looked so awful. I turn on the water,\r\n lather my hands and scrub away. I reach into my duffel and retrieve the\r\n blonde wig I packed the day before. After I brush through the tangled \r\nmane on my head, I\'m able to secure it under the wig with bobby pins. I \r\nposition the blonde bob carefully. I take a moment to admire myself. I \r\napply false eyelashes, bright red lipstick and a birthmark (applied with\r\n eyeliner) onto my left cheek.</p><p>\"Hi, my name is Morgan.\"</p><p>***</p><p>I\r\n had one of the worse migraines of my life, so I slept past eight. Jack \r\nhas called my phone three times. I listen to his last voicemail.</p><p>~Rachel,\r\n where are you? You better be home. If I find out you\'ve done something \r\nstupid like the last time, I don\'t have to tell you what\'s going to \r\nhappen, because you already know. Answer your phone! ~</p><p>I stare at the clock on the wall its only 8:27 but that wont matter.</p><p>I call his office. I drag my hand through my hair and try to buy myself time as his receptionist transfers the call.</p><p></p>', '2022-09-21', NULL, 18, '2022-09-21 04:49:57', '2022-09-27 10:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'web development', '2022-09-19 10:10:55', '2022-09-19 10:10:56'),
(2, 'programming', '2022-09-19 10:11:08', '2022-09-19 10:11:08'),
(3, 'technology', '2022-09-19 10:11:23', '2022-09-19 10:11:23'),
(4, 'side story', '2022-09-19 10:11:39', '2022-09-19 10:11:40'),
(5, 'other', '2022-09-19 10:11:44', '2022-09-19 10:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2022_09_17_095750_create_blogs_table', 1),
(17, '2022_09_17_165035_create_blog_categories_table', 2),
(18, '2022_09_20_090429_create_tags_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `total`, `created_at`, `updated_at`) VALUES
(1, 'fiction', 9, '2022-09-20 03:33:22', '2022-09-25 02:07:22'),
(2, 'drama', 5, '2022-09-20 03:33:22', '2022-09-21 04:49:57'),
(3, 'python', 1, '2022-09-20 03:35:23', '2022-09-20 03:35:23'),
(4, 'java', 1, '2022-09-20 03:35:23', '2022-09-20 03:35:23'),
(5, 'brainstrom', 1, '2022-09-20 03:35:23', '2022-09-20 03:35:23'),
(6, 'history', 2, '2022-09-20 09:36:55', '2022-09-21 04:48:45'),
(7, 'technology', 4, '2022-09-20 09:37:18', '2022-09-21 00:38:19'),
(8, 'city', 1, '2022-09-21 00:28:58', '2022-09-21 00:28:58'),
(9, 'building', 2, '2022-09-21 00:28:58', '2022-09-21 00:34:37'),
(10, 'programming', 1, '2022-09-21 00:38:19', '2022-09-21 00:38:19'),
(11, 'study', 1, '2022-09-21 00:38:19', '2022-09-21 00:38:19'),
(12, 'web development', 1, '2022-09-21 00:59:34', '2022-09-21 00:59:34'),
(13, 'dev talk', 1, '2022-09-21 00:59:34', '2022-09-21 00:59:34'),
(14, 'mystery', 1, '2022-09-21 04:49:57', '2022-09-21 04:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
