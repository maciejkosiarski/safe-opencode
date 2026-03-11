# Safe OpenCode

Docker image for running opencode in an isolated environment.

## Build

```bash
make build
```

## Run

```bash
make run
```

## Shell Alias

To run `safe-opencode` from anywhere with a simple command, add this alias to your shell config (`~/.bashrc` or `~/.zshrc`):

```bash
alias safe-opencode='docker run --rm -it \
  -v "$HOME/.config/opencode/opencode.json:/home/coder/.config/opencode/opencode.json:ro" \
  -v "$(pwd):/workspace:rw" \
  safe-opencode'
```

Then reload your shell:

```bash
source ~/.bashrc  # or source ~/.zshrc
```
