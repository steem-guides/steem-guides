#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
tlmgr update --self --all --reinstall-forcibly-removed
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"