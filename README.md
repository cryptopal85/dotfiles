# dotfiles

Managed using GNU Stow with a setup similar to the one presented in [Managing your dotfiles with GNU Stow](http://codyreichert.github.io/blog/2015/07/07/managing-your-dotfiles-with-gnu-stow/).

## Installation

Files are managed using stow. Install stow using Homebrew.

```bash
brew install stow
```

## Usage

Dotfiles are stored relative to the home directory, `~`. Each directory in the root of the repository "simulates" the home directory.

To stow a directory, run `stow` followed by the directory name, e.g. `stow git`. This will put the dotfiles in the previous directory (`cd ..`). To specify a target directory, use `stow -t ~/ git`.

### Notes

This section contains notes on setting up specific tools.

#### iTerm2

iTerm2 can be [downloaded here](https://iterm2.com). Follow the steps below to use the settings stored in this repository with iTerm2.

1. Open Preferences (CMD + ,)
2. Select General.
3. Select Preferences.
4. Check "Load preferences from a custom folder or URL" and select the dotfiles folder as shown in the screenshot below.
5. iTerm2 may have saved the local settings in the plist file. Quit iTerm2, revert the changes in the dotfiles repository and open iTerm2 again.

<img width="600" src="https://raw.githubusercontent.com/simonbs/dotfiles/master/iterm2preferences.png"/>
