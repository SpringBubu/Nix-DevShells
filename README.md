# Nix-DevShells
Collection of my Nix DevShells I use in combination with direnv in my projects. Repo exits mainly for better portability.

## How to use
### Prerequisites
- Obviously having Nix(OS) installed is necessary to use Nix DevShells, also see (unofficial) NixOS Wiki for more information: https://nixos.wiki/wiki/Development_environment_with_nix-shell
- Additionally, I recommend using direnv for convenience, see https://github.com/nix-community/nix-direnv

### Setup
Just drop the desired flake.nix wherever you want your environment and run the following command to activate it:
```
echo "use flake" >> .envrc && direnv allow
```
Now all the necessary packages should be downloading and you are done with the setup :)
