#!/usr/bin/env bash
mkdir -p ./output/images
mkdir ./output/fragments
cp -a ./.pa/guide_tools/*.css ./output/
pandoc -s --toc -c pandoc.css 1_guide/*.md -o ./output/1_guide.html
pandoc 1_guide/*.md -o ./output/fragments/1_guide.html
pandoc -s --toc -c pandoc.css 2_roadmap/*.md -o ./output/2_roadmap.html
pandoc 2_roadmap/*.md -o ./output/fragments/2_roadmap.html
pandoc -s --toc -c pandoc.css 3_designs/*.md -o ./output/3_designs.html
pandoc 3_designs/*.md -o ./output/fragments/3_designs.html
pandoc -s --toc -c pandoc.css 4_decisions/*.md -o ./output/4_decisions.html
pandoc 4_decisions/*.md -o ./output/fragments/4_decisions.html
pandoc -s --toc -c pandoc.css 5_journal/*.md -o ./output/5_journal.html
pandoc 5_journal/*.md -o ./output/fragments/5_journal.html
pandoc -s --toc -c pandoc.css 6_modules/*.md -o ./output/6_modules.html
pandoc 6_modules/*.md -o ./output/fragments/6_modules.html
pandoc -s -c pandoc.css ./.pa/guide_tools/index.md -o ./output/index_multipage.html
pandoc -s --toc -c pandoc.css -B ./.pa/guide_tools/header.html -A ./.pa/guide_tools/footer.html ./output/fragments/*.html -o ./output/index.html
sh render-puml-images.sh
find . -type f -name "*.png" -exec cp {} ./output/images/ \;
