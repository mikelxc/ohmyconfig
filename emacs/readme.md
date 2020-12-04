# Guide to emacs
In this guide, I will write about how I get to know emacs and build my current working environment.

## Why emacs?
I've been hearing good things about emacs since I was first introduced to programming. And I really want to try and see if it fits me.

## Instalations and distributions
I personally used the [emacs-plus](https://github.com/d12frosted/homebrew-emacs-plus) on my mac and uses the [doom emacs](https://github.com/hlissner/doom-emacs) configuration.
To install, we can use the homebrew tap method to manually add emacs-plus and install or use options to build a emacs-plus
`brew tap d12frosted/emacs-plus`
`brew install emacs-plus    [options]`
Doom-emacs has a [detailed introduction](https://github.com/hlissner/doom-emacs/blob/develop/docs/getting_started.org#with-homebrew) that has a better explanation. 
*Why not use the brew built-in emacs instead?*
- There's no stand-alone app for emacs with such instalation, and the icons don't seem to work on my particular configuration.
From my personal experience, after rebuilding the emacs-plus with x11 and x-widget support, the starting time for doom-emacs decreases dramatically from 3s to around 1s. 
But I'm not sure if it's due to a performance gain from those plugins or a recompile at my local machine. Doom-emacs might have also have an update that contribute to the faster loadtime, but I haven't found it in their release notes.
