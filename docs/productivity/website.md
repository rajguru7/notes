# My Website

> inspired from <https://0ut3r.space/>

Since I am accustomed to using mkdocs for my personal notes, I will use it
instead of hexo.io which is used by outer.space. I will use material theme for
mkdocs since it has many custom features.

## Font

outer.space uses cactus theme of hexo which uses `Menlo` or `Meslo-LG` font.

Material for MkDocs uses `Roboto` font.

To make it look like Menlo font. I will use `Roboto Mono` font for body text.


## Color

Using `stale` palette with `black` as primary color for material for mkdocs.

## Logo

Used chatgpt 4 to generate a logo for my website.

```
Create an image of a logo depicting a blue digital fortress being attacked by a
dark red sea, symbolizing a cyber attack. The fortress should have a futuristic,
digital appearance with circuit-like patterns and pixel textures. The dark red
sea should look dynamic and aggressive. The entire image should have no
background, focusing solely on the contrasting colors and elements of the blue
fortress and the red sea attack.
```

Crop and remove background in Adobe Photoshop

![logo](res/img/digitalfortress_3_nobg_cropped.png)

## Email

Wanted a secure email provider. So, I chose tutanota.
Also used by outer.space.
Created pgp key for bluered@tuta.io

## PGP key

```bash
gpg --full-generate-key
# chose default options
gpg --armor --export bluered@tuta.io > public.key # export public key
```

uploaded private key in 1password as a secure note.

export to keyserver

```bash
gpg --export bluered@tuta.io | curl -T - https://keys.openpgp.org
```

## Social icons

Refer <https://squidfunk.github.io/mkdocs-material/reference/icons-emojis/>

## Rss feed and git revision dates

rss and git-revision plugin require complete git history to get created dates if
not manually configured. So, in workflow yaml for checkout action the following
line is added.

```yaml
- name: Checkout
  uses: actions/checkout@v4
  with:
    fetch-depth: 0
```
