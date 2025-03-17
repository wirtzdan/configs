# Dotfiles

This repository contains my personal dotfiles and configuration files.

## Usage

I'm using GNU Stow to create symlinks from a central location. The structure of the folders mirrors the target directories where the configuration files should be placed.

Install GNU Stow:
```bash
brew install stow 
```

### Deploying Configuration

To deploy specific configurations, run the following commands from within the dotfiles directory:

```bash
stow -t ~ vscode
stow -t ~ zsh
stow -t ~ git
```

The `-t ~` flag tells Stow to create symlinks in your home directory. 

Make sure that you delete the excisting file in the target folder, otherwise Stow throws an error.

### Removing Symlinks

To remove symlinks for a specific configuration:

```bash
stow -D vscode  # Removes symlinks for vscode configuration
```

## Adding New Configurations

1. Create a new directory in the root of this repository
2. Add your configuration files maintaining the desired directory structure
3. Deploy using `stow -t ~ new-config-name`

## License

Feel free to use and modify these configurations as you see fit.
