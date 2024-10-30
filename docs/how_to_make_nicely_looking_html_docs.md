# how to make nicely looking html docs
You don't need to use Microsoft Word to create manuals and documentations - use Markdown and `pandoc` instead![^1]

## prerequisities
To get use of this ultimate lifehack, you need to have `pandoc` installed and you need to not fear of commandline interface. You also need to know Markdown syntax, duh.

## how to
Steps are easy:

1. create your `.md` file
1. open *PowerShell* or *cmd* in the directory where the Markdown file is
1. run command `pandoc -s --embed-resources -o OUTPUT_FILE_NAME --metadata title='TITLE' --toc INPUT_FILE`
	1. `OUTPUT_FILE_NAME` must have a proper extension (here: `.html`)
	1. `TITLE` is a title of `.html` file which shows on top of a document
	1. `INPUT_FILE` must include `.md` extension
	1. `--toc` creates table of contents on right after the title
		1. If you don't want ToC, omit this parameter
1. your file is ready ✌

## extra spices
If you want some extra style in your output `.html` file, you can use additional parameter `--include-in-header .\some_file.html` right before `INPUT_FILE`, where `some_file.html` is a file with `.css` stylings described as HTML `<style>` elements.

### exemplary style header
```html
<style type="text/css">
code:not(pre > code) {
    background-color: #e1e1e1;
    font-weight: bold;
    color: #AD0000;
}

pre code {
    background-color: #e1e1e1;
    padding: 10px; /* Adds space inside the rectangle */
    display: block; /* Ensures the code is displayed as a block */
    margin: 10px 10px; /* Adds vertical and horizontal space outside the rectangle */
    /*white-space: pre-wrap; Maintains whitespace formatting 
    word-break: normal;*/
    border: 1px solid black;
    border-radius: 8px; /* rounded corners */
    box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.4);
}

body {
    width: 100%;
    max-width: 20cm;
    margin: 0 auto; /* Centers the content */
}

p {
    text-align: justify;
}

img {
    border: 1px solid black;
    border-radius: 8px; /* rounded corners */
    box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.4);
}
</style>
```

[^1]: if you are Microsoft Word fan - sorry!