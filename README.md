# Mac OS setup
My MAC Setup.
  - Settings (my preferences - skip the ones you don't like)
  - Basic, dev and nice stuff to install (with script)

#Settings
  - General :
    - Appearance: Dark
  - Dock :
    - Size - Small-ish  
    - Magnification -  Max
    - I check all the options at the bottom except for Show recent applications in Dock
  - Mission Control :
    - Unckeck Automatically rearrange Spaces based on most recent user
    - Unckeck Group windows by application
    - The other 2 are checked
  - Users & Group
    - Make sure Guest User is off
  - Securirty and Privacy:
    - General: Check Require password
    - File Vault: Make sure is Turned ON
    - Firewall: Leave the default option for corporate MAC.

#First thing!

Before running the install_basic.sh script, you will need to manually install some items.
- Office
- Skype for Business
- XCode

Be aware, there are things you need to install after running the installation script too.

## Office365 , Skype for BUsiness and XCode

Open App Store.
It will prompt you to login with your AppleID.
If you use a corporate MAC don't use your personal AppleID.
Create a new AppleID with your corporate e-mail and use that AppleID.

Once logged-in, search for `Office 365`, `Skype for Bussiness` and `XCode`,
Open and Install each of them.
For XCode it will take some time...

After that, we move to Terminal.

## Homebrew and cask
This is the package manager for MAC
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask
brew tap cask/cask-upgrade
```
Next, to make sure that we just use the apps installed with Homebrew run this in terminal.

```bash
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
```

## Mac App Store
`mas` is used to install App Store apps from command line.

```bash
brew install mas
```

##Install Basic and Dev Tools

### Edit the script install_basic.sh
Edit the script install_basic.sh to add your git name and email and to comment out items you might not want to install

View install_basic.sh for a list of applications installed.
Each item is quick explained in the sh file and you can use Google to get more info

Some applications will require you to enter you admin password.

###Run install_basic.sh

After installation is complete, you might need to close the terminal completely and re-start it.

If you installed iTerm2, launch iTerm2 from Launcher.

If you chose to install `zsh` shell you will imediatly see the huge difference between bash with Terminal and iTerm2 with zsh.

The work on oh-my-zsh installation is still in progress so, until a config file is ready, please use a config file from web to configure the iTerm2 even more, with oh-my-zsh and all the plugins.

### Install node  and npm using nvm

Unless you didn't choose to don't install nvm, now it is time to manually install  node and npm using nvm

```bash
nvm ls
nvm install --lts
```

If `nvm` complains for not being installed, open your profile file (~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc)
 and manually add the following lines:

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```
