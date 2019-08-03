#!/usr/bin/env bash
mkdir -p ./output/images
pandoc -s --toc 1_guide/*.md -o ./output/1_guide.html
pandoc -s --toc 2_roadmap/*.md -o ./output/2_roadmap.html
pandoc -s --toc 3_designs/*.md -o ./output/3_designs.html
pandoc -s --toc 4_decisions/*.md -o ./output/4_decisions.html
pandoc -s --toc 5_journal/*.md -o ./output/5_journal.html
pandoc -s --toc 6_modules/*.md -o ./output/6_modules.html
find . -type f -name "*.png" -exec cp {} ./output/images/ \;
