#!/usr/bin/env bash
pandoc -s --toc 1_guide/*.md 2_roadmap/*.md 3_designs/*.md 4_decisions/*.md 5_journal/*.md 6_modules/*.md -o guide.html
