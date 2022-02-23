# photo-workflow

This is a docker container which combines a few tools I find useful in managing photos.

It uses X11 event forwarding so that it can render images in the host system's terminal.

## Tools Used

- Ranger: terminal-based, vim-inspired file manager which allows extreme customization and automation
- ImageMagick: Image manipulation from the CLI

## Usage

```bash
docker build . -t photos
./photos (which has the `docker run` command with the necessary X11 args)
```

## TODO

- Remove keyboard shortcuts for destructive commands
- Add shortcuts and commands as desired 
