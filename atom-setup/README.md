# Atom init

By rvantonisse

Used to quickly reinstall most used packages and configs.

## Usage

Clone this repo into `~/.atom`.

Install listed packages in `atom.packages.txt`:
```bash
    apm install --packages-file ./atom-setup/atom.packages.txt
```

## Update atom.packages.txt

```bash
    # With apm list:
    apm list --installed --no-dev --bare > ~/.atom/atom.packages.txt

    # Or add manually:
    atom ~/.atom/atom.packages.txt
```
