#### nodejs globally installed executable toolchain:

##### ncu 
updates dependencies of your project and writes the changes to package.json

###### Usage:
```
sudo npm install -g ncu

ncu (looks for updates)
ncu -u (updates package.json as well)
```

##### nodewebkit
used to create standalone desktop applications

###### Usage:
```
sudo npm install -g nodewebkit
nodewebkit (starts the application specified in package.json of the current directory)
```


##### nw-builder
build executables for linux, macos and windows from a nodewebkit app source

###### Usage:
```
sudo npm install -g nw-builder
nwbuild --run . (first downloads)
```

##### svnm
node version manager to use multiple versions of nodejs

###### Usage:
```
svnm install v*.*.*
svnm use v*.*.*
```

##### babel
can build ecmascript 7 to 5, also comes with an executable:

###### Usage:
```
babel-node file.js //executes the file with babel's ecmascript 7 engine
```
