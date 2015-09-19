#### Devices:
device dependend data:

##### local.magicshifter.net:
social networking functionality, chat, friends, forums, magicbitmap and magicfont share and maybe marketplace,

##### anydevice.local:
the functionality of this device, for example in the case of the magicshifter we get the led interface and the image drawing from it.

each of the apps is both self serving and to be used as an imported component in the other apps,
they are plugabble and become available depending on the devices in the network.

each device serves two files, an index.html file that includes all the dependencies needed for the functionality of this devices firmware, and an index.js file that includes the javascript needed to build the components that make up the functionality of this device without the surrounding boilerplate that is needed in index.html.
