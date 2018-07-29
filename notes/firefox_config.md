# Firefox Notes
This is for setting a more secure and faster FF.

## Performance

### SDD FIX
__Recovery.js__ Used for saving tabs if crashes.
The following at the browser address: 'about:config:
'-browser.sessionstore.interval'
Set value from default (1500) to 1800000

### Turn off the disk cache
turn on the following
Preferences -> Advanced -> Network -> "Cached Web Content: Override ..."
specify 0
"Limit cache to"

### Immediate Rendering  (Create New field)
Not to be used on slow connections
CREATE
'about:config'
'nglayout.initialpaint.delay'  value = 0

### Enable Accelerated Azure Canvaz
in config
new boolean
gfx.canvas.azure.accelerated -> true
restart
about:support 
AzureCanvasAccelerated should be 1

### Disable Pocket (yeh)
in config
'extensions.pocket.enabled' = false

### Enable HTTP Cache
in config
'browser.cache.use_new_backend' from 0 to 1

### Turn off sponsored content and titles

## Fonts

### Configure DPI val
in config
layout.css.dpi -> 0

## Addons

These addons are the ones I have set for my laptop.

### uOrigin
This is an opensource adblock. 
Currently trying different configurations.
_Normal Mode:_ Enables blocking third party stuff. Like a noscript but inside uBlock.
_Enable Advanced:_ This enables a small uMatrix inside uBlock. Really usefull.

### Stylish
Continuo Manana :)

## Issues

### No audio for Alsa
Easy fix. Download AUR `pacaur -S apulse`
`cd /usr/bin/`
`vim firefox`
Inside the file 
before exec type apulse
That's it
