# macOS setup for Development

Sometimes, I have to reinstall everything I need on brand new Macs or Hackintoshes. After getting tired of doing it – especially tweaking macOS manually, I decided to regroup everything here.

**IT'S A WORK IN PROGRESS!**

**Don't run everything blindlessly.** I reunited these scripts for my own use, a lot of commands or packages may not suit you. Please fork the project or review the files to comment things you don't want.

## Full Installation

If you want to install _everything_, just do:

```sh
git clone git@github.com:kinoute/macos-setup.git
cd macos-setup
bash install.sh
```

If you can't run the script, you might have to change its attributes. Just do:

```bash
chmod +x install.sh
```

When started, you will be asked for your password just once in order to install/edit several things on macOS.

This script basically calls a few sub-scripts that do their own business listed below.

## Manual Installation

If there are some packages or applications you don't want to install, you have two choices:

* Either you edit the installation files and remove the things you don't want ;
* Either you run manually the only installation sub-scripts you're interested in.

Here are all the sub-scripts that are called when running the full installation:

### brew.sh

This [script](scripts/brew.sh) first checks if you have [homebrew](https://brew.sh) installed on your machine. If not, it downloads and installs it. Then it installs a lot of binaries through homebrew.

To only run this script, do:

```sh
cd macos-setup/scripts
bash brew.sh 
# you might need to do chmod +x brew.sh before to run this script
```

The comments inside the file speak for themselves but to sum up, this script installs:

* A few languages (python, php, zsh) ;
* Updated tools (vim, grep, openssh, screen) ;
* GNU tools (sed, find, locate, xargs...) ;
* Useful binaries (git, imagemagick, pv, rename, tree, jq, ffmpeg, ripgrep, wget, htop, watch...) ;
* Some macOS dev-related apps (iTerm2, Sublime Text, VirtualBox, Brave, Miniconda, VSCode..) ;
* Some random macOS apps (flux, Spotify, VLC, Lulu, Onyx, Transmission, Slack..) ;
* Some Safari extensions (Adguard, Nightlight) ;
* Docker and lazydocker to manage easily our containers/images ;
* The Roboto-Mono font and its powerline version for iTerm 2 / Zsh ;
* macOS Quicklook plugins (markdown, video, csv, zip, Jupyter notebooks, json..) ;
* Tools to fix codes automatically (php-cs-fixer, rubocop, autopep8..) ;
* _Optional:_ Hackintoshes stuff if needed (Karabiner Elements to modify keys).

### conda.sh

This [script](scripts/conda.sh) only copies some useful Deep Learning environments to `~/.conda`. You can create an environment based one of these files with `conda create`.

### git.sh

This [script](scripts/git.sh) checks if you have already set up a `.gitconfig`file. If not, it copies a `.gitignore` file containing famous and useful files/folders to ignore on your projects. it also copies a `.gitconfig` file.
