#### Applications

##### magic/manager
this is a desktop application which starts a nodejs server and provides any kind of functionality we need without external plugins, serial connection, no browser sandboxing, mdns.
this is the central hub to control all your devices and settings. It will be the most feature rich environment,
including all the features of our toolchain that exist.
the infrastructure we build to connect to devices will also be used as the way to install plugins for the manager.
the manager can also be used to add server connections. local.magicshifter.net, local.myserver.yes. this allows the user to install third party apps or devices and set them up.

#### magic/mdns
this includes the mdns bindings to do broadcasts, can only be used in desktop apps, not in the browser.

#### magic/serial
nodejs serial connection library.

##### magic/publisher
this app builds docker images, then connects to the joyent cloud and uploads the newest built image to a freshly spun up instance (price per instance 2.4$ in a month, calculated per minute.) this instance then comes online at a certain hostname and can be used to run tests on the system running on a life data snapshot that is only minutes old. once tests pass and everything works smoothly this image can then be replicated over the whole cloud. once we have a nice userbase over all our apps we can start publishing images to a certain threshold of users and use the gathered data to see if it works, once we are confident it does we push to all clients.

##### magic/builder
this will be a collection of gulp tasks and other build process dependencies,
at the moment it builds static pages only but the functionality will extend to cover react apps.
also handles watching and spinning up local dev servers.

##### magic/server
serves static pages, one page at a time. will soon serve pages for any hosts it finds,
then evolve to be used as our production server.

##### magic/dev-env
this app is a plugin used in the magic/manager that adds dev functionality.
this means that we will be able to both browse the file structure of all installed magic/react applications and change the source code and see the preview of the changes and tests from the same application.


##### magic/db
database application, standalone docker images for whichever database we use,
using graphql for queries, json as response.

