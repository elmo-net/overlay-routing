# Functional Specification

Hans Meyer

Last update: 28.02.2015

This document is also available at http://elmo-net-router.rtfd.org/

*This document is not complete and will updated often. This is to answer
questions about how things are supposed to work only once in a way for all
contributors available. Besides, it documents decisions and provides the details
for everyone involved. The actual look and feel will be developed over time with
iterative user feedback and research getting into it.*

## Overview

The router component of Elmo-net is a way to interconnect users through the
internet. It aims to provide a fast foundation for services in the games
industry.

## Scenarios
In designing products, it helps to imagine a few real life stories of how actual
(stereotypical) people would use them.

### Scenario 1: Glenn
Glenn is still in school. He likes to play computer games and doesn't care about
his mom telling him to take a break from that more often. As with all teenagers,
he's not listening to anybody, has a bad memory and is the opposite of
well-organised.

One day he saw a video at Youtube late at night about making games for toddlers.
The video discussed how to early on get those kids to stare at video screens so
it would be easier later for the developers to take over the world. On that day,
Glenn decided to take over the world before the video-producers can and got into
developing games. His mom was not amused...

### Scenario 2: Arthur
When Arthur started programming, personal computers cost thousands of dollars.
And the only ways to get one was being the manufacturer, or killing someone.
Programming also meant to have an intimate relationship with your hardware.
Structure, practice, trucks of coffee and a lot of waiting for the compilers,
brought Arthur to a top-paid position in the games industry.

### Scenario 3: Suzy
Suzy got into the industry through her phone if you will. When she graduated
from her design master, she was interested in developing apps for saving the
apes in the rain forest. She's all into the open source movement and likes to
interact with a lot of people on different issues, like apes and rain forests.

## Non-goals

This spec will mention words like peer-to-peer network, distributed game and
service discovery, but be warned: *this project is not about filesharing!*

The router component also is not intended to provide higher-level services like
shared world state in MMOGs or launching nuclear weapons from invisble trucks in
Afghanistan. If you want to implement such things, you will need to grab the
tools on top of this library and compose them to your need.