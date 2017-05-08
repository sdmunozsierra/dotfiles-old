As a side note this was one of the hardest things to gasp the configuration till today.

#How to install and configure ST (Suckless Terminal) in Debian

Be aware: There is no sudo apt-get install of st so everything has to be done by your hand.

## Git your st

There are different versions of st out there. The vanilla version (the original) without any patches or fancy stuff can be find at: [suckess]
(http://st.suckless.org/). 
If you are going to need some more fancy features look on git or google orlatter on create your own version and fork it.

### Tarball
Extract and move to extracted folder and do sudo make clean install
Your program will be in /usr/local/bin/ by default

### Git
To get a git 'git clone github.com repositories/folder'
cd to your repos folder and then into the cloned st folder
after do a sudo make clean install

## Configure your ST
This was super misleading everywhere so for normal users here are the instructions:
st does not offer configuration on the fly, therefore, you have to recompile (reinstall) the program each time you make a configuration or a patch.

Edit config.h (in your repos folder if you did git) and then run 'make install' (might need sudo). And vuala!

If you need to change the font, you must recompile.
colors? -> recompile
patches -> recompile

After you understand that, then is fairly easy to make your st as you wish it to be, with scrollback, copy and paste patches, and themes such as solarized. At the end of the day is your opinion.

I recomend to create a git repo with your config.h for a latter recompilation you do not need to start from scratch and have everything you need there.

### Make a list of your patches and changes

It is always a good idea to have track of what the heck you have done to your programs in case something goes wrong, or you don't understand why are you having a certain bug.

PEACE OUT SERGIO
And happy coding :)
