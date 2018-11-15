# Atom init

By rvantonisse

Used to quickly reinstall most used packages and configs.

## Usage

Clone this repo into `~/.atom`.

Install listed packages in `packages-list.txt`:
```bash
$ apm install --packages-file ~/.atom/packages-list.txt
```

## Update packages-list.txt

```bash
# With apm list:
$ apm list --installed --no-dev --bare > ~/.atom/packages-list.txt

# Or add manually:
$ atom ~/.atom/packages-list.txt
```
