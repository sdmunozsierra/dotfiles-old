# Vim Notes

This is a document that will have information about VIM.config and also about shortcuts or annotations for my personal use.

## Comands
### --> Find an istance:
Typing / followed by a phrase searches foward.

## Plugins

### YouCompleteMe
This is for autocompletion which you will need a lot.
Add to bundle by `Valloric/YouCompleteMe`
(Deprecated) Download libclang from llvm.org `wget http://releases.llvm.org/4.0.0/clang+llvm-4.0.0-aarch64-linux-gnu.tar.xz` or check if a new version is available.
Use pacman -S clang  
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --system-libclang
