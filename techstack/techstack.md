
#### Frameworks:

##### local.magicshifter.net:
two alternative paths:
1. Meteor, React

  ###### Pros:
  * Meteor offers lots of server and client side functionality, we basically would only have to hook up our custom react functionality to make everything work.
  ###### Cons:
  * Meteor forces us to use a certain tech stack, including mongodb. We basically force ourselves into the Meteor way, which has a bigger con than it offers pros.

2. Relay, React

  ###### Pros:
  * Relay, React, Graphql, Flux and all those other buzzwords, complete toolchain maintained by either facebook, yahoo or some other big player. basically guaranteed to be future proof for a few years.
  ###### Const:
  * We have to build a lot of the server code ourselves to get most of the functionality of Meteor
  * The frameworks are open source for a very short time, so the whole infrastructure changes rapidly.

##### anydevice.local
  needs a module for the firmware that serves the files we need served, thats the only c part we have in the toolchain.
  there are multiple projects that are building percompilation toolchains to use it on the esp, but this will take a few months until they are usable. (find list of projects and link them)


##### magic/manager

1. node-webkit, React

  ###### Pros:
  * In line with the rest of our toolchain, node-webkit allows a lot of freedom and runs a real nodejs server.
  ###### Cons:
  * Not a key project of a company. team paid by intel, but not a significant part of their toolchain obviously.

2. electron

  ###### Pros:
  * Uses github's electron so we have the full atom functionality built in, including all plugins
  ###### Const:
  * We have to do everything the electron way.
  * I do not know how easy it will be to connect this to our toolchain.
  * most electron plugins focus on macos and windows, lots of the apps do as well, often there is no linux port available.

##### magic/db

1. rethinkdb

  ###### Pros:
  * uses json file for storage
  * build for distributed clusters.
  ###### Cons:
  * did not test it

2. postgres:

  ###### Pros:
  * its postgres
  ##### Const:
  * its postgres

3. ????
