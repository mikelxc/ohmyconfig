# So you've got a new Mac, wow!
### I've just purchased a new MacBook pro 16' to replace my good old MacBook pro 15' 2015, so I just went on to write this documentation that guided me through my reinstallation of all my apps and settings. This guide will skip most information that can be found anywhere throughout the internet (including but not limited to apple id registration, set up facetime/imessage etc.)
### Why not just use time machine?
- That's a really great question since it is also my original plan; however, after using my computer for almost 5 year, there are countless old configurations and outdated applications that I no longer want. I did try it in the beginning, only to find that I've got countless useless apps, and the launchpad is a complete disaster. The system and "other" ended up taking over 100GB of disk space, so I've decided to run over everything again.
0. Back up the old computer

You are gonna need a spare external hard drive (or SSD which is better due to its faster speed). Open the system preference and go to time machine, select your drive and start backing up. This might take a really long time, so please get prepared before you got your new computer.

1. Initial setups

Join your Wi-Fi, log in your apple ID, run through all the settings, you know the drill.

2. Install Softwares

Here's a list of all the applications I've been using and where I got them

- Mac App Store Essentials
*Most of the Apps are purchased in China, so the links are sending you to the Chinese MAS*
  - [Xcode](https://apps.apple.com/cn/app/xcode/id497799835?l=en&mt=12)
  - [Evernote](https://apps.apple.com/cn/app/evernote/id406056744?l=en&mt=12)
  - [Office](https://office.com)
    - [OneDrive](https://apps.apple.com/cn/app/onedrive/id823766827?l=en&mt=12)
    - [Word](https://apps.apple.com/cn/app/microsoft-word/id462054704?l=en&mt=12)
    - *It's true that they also offers a direct installation on their official website, but I just find it more convenient to keep everything in a place. I have to admit, the auto upgrade feature for MAC is at another level.*
  - iWork and iLife from apple, *this should be built in and come with your new Mac. But I had a fresh installation, so I have to install everything again.*
- [Final Cut Pro](https://apps.apple.com/cn/app/final-cut-pro/id424389933?l=en&mt=12)
- [Logic Pro X](https://apps.apple.com/cn/app/logic-pro-x/id634148309?l=en&mt=12)
- [Permute](https://apps.apple.com/cn/app/permute-3/id1444998321?l=en&mt=12)
- [Boom 3D](https://apps.apple.com/cn/app/boom3d-volume-booster-and-eq/id1233048948?l=en&mt=12)
- [Day One](https://apps.apple.com/cn/app/day-one/id1055511498?l=en&mt=12)
- [iA Writer](https://apps.apple.com/cn/app/ia-writer/id775737590?l=en&mt=12)
- [Notability](https://apps.apple.com/cn/app/notability/id736189492?l=en&mt=12)
- [Good Notes](https://apps.apple.com/cn/app/goodnotes-5/id1480793815?l=en&mt=12)
- [PDF Expert](https://apps.apple.com/cn/app/pdf-expert-edit-and-sign-pdf/id1055273043?l=en&mt=12)
- [Fine Reader OCR pro](https://apps.apple.com/cn/app/finereader-ocr-pro/id687301476?l=en&mt=12)
- [IconFly](https://apps.apple.com/cn/app/iconfly/id556381974?l=en&mt=12)
- [Drop](https://apps.apple.com/cn/app/drop-color-picker/id1173932628?l=en&mt=12)
- [Expressions](https://apps.apple.com/cn/app/expressions/id913158085?l=en&mt=12)
- [Jump Desktop](https://apps.apple.com/cn/app/jump-desktop-rdp-vnc-fluid/id524141863?l=en&mt=12)
- [Pixelmator pro](https://apps.apple.com/cn/app/pixelmator-pro/id1289583905?l=en&mt=12)
- [Polarr](https://apps.apple.com/cn/app/polarr-photo-editor-pro/id1058273036?l=en&mt=12)
- [Data Graph](https://apps.apple.com/cn/app/datagraph/id407412840?l=en&mt=12)
- [MWeb](https://apps.apple.com/cn/app/mweb/id1403919533?l=en&mt=12)
- [TexPad](https://apps.apple.com/cn/app/texpad-latex-editor/id458866234?l=en&mt=12)
- [iStudiez Pro](https://apps.apple.com/cn/app/istudiez-pro-legendary-planner/id402989379?l=en&mt=12)
### System Extensions
- [Moom](https://apps.apple.com/cn/app/moom/id419330170?l=en&mt=12)
- [Hyper Dock](https://apps.apple.com/cn/app/hyperdock/id449830122?l=en&mt=12)
- [Haze Over](https://apps.apple.com/cn/app/hazeover-distraction-dimmer/id430798174?l=en&mt=12)
- [Drop Zone](https://apps.apple.com/cn/app/dropzone-3/id695406827?l=en&mt=12)
- [Unclutter](https://apps.apple.com/cn/app/unclutter/id577085396?l=en&mt=12)
- [PopClip](https://apps.apple.com/cn/app/popclip/id445189367?l=en&mt=12)
### Safari Extensions
- [DarkReader](https://apps.apple.com/cn/app/dark-reader-for-safari/id1438243180?l=en&mt=12)
- [Cascadea](https://apps.apple.com/cn/app/cascadea/id1432182561?l=en&mt=12)

3. Setup Command Line
Automatic installation: you can get every packages and configs I have by running the bash script.
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/mikelxc/ohmyconfig/master/setup-mac-terminal.sh)"`
