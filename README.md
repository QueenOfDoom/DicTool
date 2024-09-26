# DicTool

Tool for Dictionary Conversion and Updating and such...

## Format

I want to adapt different dictionary formats for use with
[GoldenDict-ng](https://xiaoyifang.github.io/goldendict-ng).

That's why the 'interesting-to-me' formats are the following
as per [docs](https://xiaoyifang.github.io/goldendict-ng/dictformats):

- MDict (`.mdx/.mdd`)
- StarDict (`.ifo/.dict/.idx/.syn`)
- DSL: (ABBYY Lingvo source files - `.dsl`, `.dz`)
- ABBYY Lingvo Sound Archives `.lsa/.dat`
- XDXF: `.xdxf(.dz)`
- Zim: `.zim`
- Slob (Aard 2): `.slob`
- Aard: `.aar`
- DictD `.index/.dict(.dz)`
- EPWING
- SDictionary `.dct`
- Babylon Glossary Builder Source Files `.gls(.dz)`
- Bayblon Dictionaries `.bgl`

I will likely end up choosing a single format that suits all or at least
most of my needs, which is at the same time - simple to convert to.

I prefer not having to work with binary blobs, so (compressed) human readable
dictionary formats will be favored in the decision making process.

## Dictionaries

Some dictionaries are already in the correct formats.

Those that are not, that need to be translated to the proper formats,
will be listed here:

- Chinese <-> English
    - [CC-CEDICT](https://www.mdbg.net/chinese/dictionary?page=cc-cedict)

## Unrelated Notes

I use Neovim for Development and I found this video while developing...
And I'm not anywhere near my Nix Machine, so...
I'mma log it here so I watch it later:
- [Nix + Neovim](https://www.youtube.com/watch?v=T58Yr5igNGk)