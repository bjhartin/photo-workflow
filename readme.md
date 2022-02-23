# photo-workflow

It's a dockerized IDE-like environment for managing photos using [ranger](https://github.com/ranger/ranger).

I needed to comb through a few tens of thousands of photos recently for a family event.  Traditional photo management software was too slow.  I needed an IDE for photos!

## Disclaimer

This is a work-in-progress for my own use so no guarantees are made.  Always, always, always start with a good backup method and backup monitoring.  This tool is lightning-fast and optimized for operations performed on batches of files.  So, you can screw things up really fast. 😜

## Details

Ranger is a VIM-inspired, terminal based file manager which is highly customizable and can show image previews.  This repo dockerizes it with some additional scripts, key bindings, installs necessary for image previews, etc.

The image preview feature is notoriously finicky and it took a while to get it working, so Dockerizing that made sense.

It uses X11 event forwarding so that it can render images in the host system's terminal.

## Testing

I've tested this on LUbuntu 20.04 using both the included QTerminal and [Kitty](https://sw.kovidgoyal.net/kitty/) terminal emulators.

## Usage

```bash
docker build . -t photos
./photos DIR (has the `docker run` command with the necessary X11 args)
```

## Tools Used

- Ranger: terminal-based, vim-inspired file manager which allows extreme customization and automation
- ImageMagick: Image manipulation from the CLI

## TODO

- Remove keyboard shortcuts for destructive commands
- Add shortcuts and commands as desired 
- Incorporate:
  - fdupes for exact duplicate detection
  - ??? for fuzzy duplicate detection
  - ??? for face detection
  - ??? for backups, backup monitoring, snapshots and summaries of the entire set (for confidence)
  - ??? for tagging (currently use symlinks, but think this is not good as the only method)
  - ??? for auto-renaming files when they filename exists (useful for various scripts which link or move files from different dirs into one)
  - ??? for auto-rotation (probably ImageMagick)
  - script to delete in smart way, e.g. move to trash, probably aliasing 'rm'
  - possible to preview exif info on image or status bar?
  - commands
    - rotate left, right
    - open in editor
    - crop (possible?)
      - possible to enter aspect ratio?
    - auto-correct
    - trash
    - prepare for print
- Font change? 
