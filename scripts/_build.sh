#!/bin/sh

set -ev

# add the update to fix ctexbook too old issue
tlmgr update --self --all --reinstall-forcibly-removed
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
# make gitbook the last target to add the links to pdf and epub
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
