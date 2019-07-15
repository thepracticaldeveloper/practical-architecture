#!/usr/bin/env bash
pandoc -s --toc 1_guide/* 2_roadmap/* 3_designs/* 4_decisions/* 5_journal/* -o guide.html
