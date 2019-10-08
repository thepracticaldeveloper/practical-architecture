# The Practical Architecture Process - Resources

## Intro

This repository contains all the documentation templates and examples that are described in the book [The Practical Architecture Process](https://leanpub.com/practical-software-architecture). 

## Contents

There are six folders in which you can find multiple markdown files. Each file has some summarized information about what you should include there.

1. Guide. An evolving set of documents explaining your Software Architecture and related topics like common patterns and operations.
2. Roadmap. The 'Make it happen' section. Includes the planning over time.
3. Designs. Each team should populate this section with new feature designs.
4. Decisions. Keep your Architecture Decision Records here. Includes the template and an example.
5. Journal. Holds meeting notes, whiteboard pictures, etc.
6. Modules or Teams. Contains documents and designs that have a local impact.

## The Process

The main idea of [the book](https://leanpub.com/practical-software-architecture) is that you produce these artifacts based on a collaborative, lightweight, efficient process. 

**You shouldn't hide in a corner and write all this by yourself.**

## Exporting to HTML

This repository also contains a script to generate a single HTML version of the Guide: `generate-guide.sh`. You can use this script manually or include it as part of an automated process. A good practice is to use it from a pipeline to publish a new version of this guide every time you merge a work-in-progress documentation branch into master.

The scripts requires [Pandoc](https://pandoc.org/installing.html) to generate the Guide in HTML.

Your guide will be exported to the `output` folder after running the script, in two different formats:

* All in one page: that's the `index.html` file. You can copy this file, `pandoc.css` and the `images` folder and you have your documentation website ready to be published.
* One section per page: those are the `1_guide.html` file and others. You can use this approach if your sections get too big. The script also generates a file `index_multipage.html` for your convenience.

## Rendering Diagrams

If you work with PlantUML and keep your `.puml` files in this repo, you can use a command to automatically render all your files to PNG images: `render-puml-images.sh`. Then you can include the images in your markdown documents. 

You can either run this script manually or setup a pipeline that triggers it automatically when generating the output documents.

The script used in this repository requires [Java](https://www.java.com/en/download/) to convert `.puml` files to PNG images. 

## Feedback

Please send me any feedback or question you may have by opening an Issue in this repository.  
