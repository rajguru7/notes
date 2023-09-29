# Tips

## Attaching screenshot
To attach a screenshot from mac.
Enter the below in the command mode in the vim file you are editing
:!mv
Once done drag and drop the image to the file you are editing in vim. The path will be added automatically.
Now just add the destination path and image name.
So it becomes:
```
:!mv <screenshot drag and drop> <dest_folder/image_name>
```

Originially Markdown was about rendering to HTML. Hence HTML is favoured.
Pandoc is about converting to diff docs, hence it discourages HTML and provides other, non-HTMLish ways of representing important document elements like definition lists, tables, mathematics, and footnotes.

Markdown does not hyperlink a URL. It needs proper syntax []().  gfm is Github Flavoured Markdown (This is what Github uses in its READMEs.)

--resource-path needs to be set to the folder where images have to be found for Pandoc. If not set it takes PWD as the default. Refer [[2.1]][ext2.1]

Write good alt texts for images. They are indexed by search engines and are read by screen reader software. They are rendered in the output if the image fails to load.
For mkdocs the image path is relative to the location of the md file.
For pandocs the image path is relative to the location where you are executing the pandoc command from.

When using reference links add the description of URL in () instead of "" so that you can use % to jump between () in vim

---

## Difference between Marked 2 and Pandoc

In gfm you can directly paste a link and it will be hyperlinked.
This is not the case with Pandoc's md and md. To enable this, add extension 'autolink_bare_uris'.
The reference links in Marked 2 can put in the end without starting a new paragraph.
This is not the case in Pandoc. A blank line has to be put before defining the reference links.

In Marked 2 - you can have Multimarkdown or Discount (by default: line break in paragraph is preserved. Setting can be changed from preferences)
Discount = gfm + alpha lists
In pandoc there are multiple markdown formats: gfm, Multi, pandoc(its own md format) etc.
pandoc markdown = gfm + alpha lists and much more (by default: line break in paragraph is not preserved. Setting can be changed by adding hard_line_breaks extension)

Intra-document links in exported PDFs (As tested they are working in HTML export only)
Marked's PDF export currently uses WebKit's print features. One consequence of this is that intra-document (internal) links, including those in a Table of Contents, will not jump to other points in the document. This doesn't appear to be something Apple has any intention of fixing in the version of WebKit that Marked 2 uses.

### Mkdocs

line break in paragraph had to be enabled by adding nl2br in mkdocs.yaml file.
The URLs are not getting hyperlinked by default.

**Since bare URLs are not supported in OG md, I will be using <> for bare urls in all docs (pandocs as well as Marded 2) since that is supported in OG md and it can be used easily by adding <>**

When running Mkdocs it checks the working dir for any changes and builds the site in realtime. Vim creates temporary files while it is being edited which leads to some files coming and going and mkdocs server can stop with an error due to that. [[4]][ext4]
To resolve this, added a plugin mkdocs_exclude [[5]][ext5], to enable ignoring files

For adding reference style links, I will use the below format
> [[<ref_no>]][<int/ext ref_no>]
Only external links will be repeated in Reference section so that they can be read on the document.

When using numbered list and you want to put content for one point. Use indentation of 4 spaces for the content.
If you want to use an indented code block then use 8 spaces.
If you want to use fenced code block in numbered list, use 6 spaces. (Because GFM (pandoc and github) use 6 spaces)

### Reference

[1] <https://marked2app.com/help/>
[2] <https://pandoc.org/MANUAL.html>
[2.1] <https://pandoc.org/MANUAL.html#general-writer-options>
[3] <https://www.mkdocs.org/user-guide/configuration/>
[4] <https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f>
[5] <https://github.com/apenwarr/mkdocs-exclude>

[ext1]: https://marked2app.com/help/
[ext2]: https://pandoc.org/MANUAL.html
[ext2.1]: https://pandoc.org/MANUAL.html#general-writer-options
[ext3]: https://www.mkdocs.org/user-guide/configuration/
[ext4]: https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
[ext5]: https://github.com/apenwarr/mkdocs-exclude
