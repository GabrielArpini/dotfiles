# L’heure bleue / Soir Bleu

A dark Omarchy desktop inspired by Edward Hopper’s *Soir Bleu* (1914).
The final selected theme is `heure-bleue`: midnight `#051626`, muted sea-glass
`#5F919B`, and ivory `#DFE1D5`, with IBM Plex Mono and Cormorant Garamond.

## What is included

- `omarchy/themes/heure-bleue/`: final palette, app overrides, shell styling,
  self-contained Neovim colors, and the darkened painting as its only wallpaper.
- `omarchy/themes/soir-bleu/`: earlier palette and both wallpaper versions.
- `omarchy/plugins/arpoca.workspaces/`: small workspace dots, with a brighter
  active dot and tighter spacing. Click and scroll behavior is retained.
- `omarchy/plugins/arpoca.lock/`: Cormorant clock, date, and compact password
  field. The upstream authentication logic is unchanged.
- `omarchy/shell.json`: bar layout and enabled user plugins.
- `hypr/looknfeel.lua`: 18px outer gaps, 9px inner gaps, 1px borders, 5px corners.
- `foot/`, `starship.toml`, `herdr/`, `nvim/`: coordinated terminal, prompt,
  workspace manager, and editor styling.
- `gtk-3.0/`, `gtk-4.0/`, `icons/HeureBleue/`: midnight GTK surfaces and outlined
  folder icons, falling back to Adwaita for other icons.
- `previews/`: standalone HTML palette comparisons and eight desktop mockups.
  Fonts and images are embedded for offline viewing; mockups are design studies.

## Use the final theme

Install IBM Plex Mono and Cormorant Garamond first. Then:

```bash
mkdir -p ~/.config/omarchy/themes ~/.local/share/icons
cp -a omarchy/themes/heure-bleue ~/.config/omarchy/themes/
cp -a icons/HeureBleue ~/.local/share/icons/
omarchy theme set heure-bleue
omarchy font set "IBM Plex Mono"
```

The other directories mirror `~/.config`. Back up existing files before copying
those overrides. The shell configuration references the two `arpoca.*` plugin
copies as well as the separately installed Superwhisper plugin. Copy the user
plugins with the shell configuration, and preserve local plugin preferences.
The GTK stylesheet files are loaded by their adjacent `gtk.css` imports.

The original `install.sh` remains the legacy Nighthawks installer.
`install-soir-bleu.sh` installs the earlier Soir Bleu theme and Walker companion;
it does not deploy the final whole-desktop setup. Existing Nighthawks assets and
history are preserved.

New Foot windows pick up font sizing and padding. Reopen GTK applications for
CSS changes and Neovim for plugin changes. The cloned shell plugins are based
on the installed Omarchy version and should be reviewed after shell updates.

## Artwork and fonts

Painting source: [Edward Hopper, Soir Bleu — Whitney Museum](https://whitney.org/collection/works/6081).
`00-soir-bleu-hopper.jpg` is the downloaded reproduction; `soir-bleu-dark.png`
is an AI-edited darker derivative used as wallpaper. Original reproductions
are retained outside the final theme’s selectable `backgrounds/` directory.
`download-soir-bleu-art.sh` refreshes the original image in the earlier theme.

The HTML previews embed fonts served by Google Fonts. Their original license
notices are in `previews/font-licenses/`. The custom folder SVGs are original;
cloned QML files retain their upstream Omarchy authorship.
