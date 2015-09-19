#### first page load:

1. the user connects to any one of our devices/servers: magicshifter.local, magiclightsensor.local, local.magicshifter.net, what.evs
2. the user loads the index.html from that server/device.
3. start connecting to other devices, using the settings of the device loaded first, localStorage, config.js and whatever data we have to connect. once a server answers we can use the profile of the user from that server to get additional data.
4. if possible we broadcast using mdns (desktop apps only, maybe ios and android)
5. index.js files from each device come, each of them gets initialized and the component becomes available in the client that loaded the initial index.html page.
6. yay, the user can use all of the features of all his devices. since now we have a cached set of devices and data we can next time startup much faster.
