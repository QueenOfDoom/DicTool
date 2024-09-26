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

### MDict
After looking into MDict, I discovered that it's a closed, proprietary format
that people claim to have good quality.
It has been [analyzed](https://bitbucket.org/xwang/mdict-analysis), as well as
[reverse-engineered](https://github.com/zhansliu/writemdict).

It appears, if 'opened' - to be a rather pleasant to work with format.
After editing it gets 'compiled', so: compressed and hashed into a custom
format.

The compression can also be used to argue in favor, namely the small file-size.

### StarDict
While StarDict is significantly more open and has
[an official GitHub repository](https://github.com/huzheng001/stardict-3/blob/master/dict/doc/StarDictFileFormat)
describing how it is structured, a
[Wikipedia Page](https://en.wikipedia.org/wiki/StarDict), a
[broken site](http://justsolve.archiveteam.org/wiki/StarDict)
with some interesting instructions on the usage of the tooling,
a [Russian Blogger's Article](https://dhyannataraj.github.io/blog/2010/10/04/Notes-about-stardict-dictionry-format).

And lastly, some free samples available on sites like:
- [Frama's Tuxor-Leet Page](https://tuxor1337.frama.io/firedict/dictionaries.html)

## Dictionaries

Some dictionaries are already in the correct formats.

Those that are not, that need to be translated to the proper formats,
will be listed here:

- Chinese <-> English
    - [CC-CEDICT](https://www.mdbg.net/chinese/dictionary?page=cc-cedict)

## Set-Up

As I notice that some things in this repo may become unnecessary,
and some may become more necessary - I'll first get to the crux of things:

the goal of this is to provide you with a great dictionary experience
after all, so why not document all the steps to take there...

**DISCLAIMER: This covers *my* set-up, yours may differ.**

1. Get [GoldenDict-ng](https://github.com/xiaoyifang/goldendict-ng)
2. Get [Japanese Morphology Dictionary](https://github.com/MrCorn0-0/hunspell_ja_JP)
    a. Set-Up the Morphology Search Path inside GoldenDict
3. Enable all Japanese Transliterations
4. Get [Sarasa Gothic](https://github.com/be5invis/Sarasa-Gothic/releases) and enable it in (`~/.config/goldendict`):
```css
body { font-size: 20px; }
.dsl_headwords p { font-size: 24px; }
:lang(ja), .gdlangfrom-ja {
    font-family: "Sarasa Term J Semibold";
    font-size: 20px;
}
.lang(zh), .gdlangfrom-zh {
    font-family: "Sarasa Term TC Semibold";
    font-size: 20px;
}
```
5. Get [JMDict+](https://jd4gd.com/files/JMDictplus.zip)

## Unrelated Notes

I use Neovim for Development and I found this video while developing...
And I'm not anywhere near my Nix Machine, so...
I'mma log it here so I watch it later:
- [Nix + Neovim](https://www.youtube.com/watch?v=T58Yr5igNGk)
