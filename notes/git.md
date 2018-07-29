#Some Notes About Git

#Do not ask for password in one hour

In Terminal, enter the following:

`git config --global credential.helper cache`
__set git to use the credential memory cache__

To change the default password cache timeout, enter the following:

`git config --global credential.helper 'cache --timeout=3600'`
__Set the cache to timeout after 1 hour (setting is in seconds)__
