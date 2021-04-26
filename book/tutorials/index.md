# Tutorials

## Organization

Each tutorial is a collection of jupyterbooks and files in a its own subfolder under tutorials. For example in this template we have the `tutorials/raster/into-ipyleaflet.ipynb`. New tutorials need to be listed explicitly in the `_toc.yml` file to show up in the rendered documentation.

## Suggestions for tutorial development

1. Use small example datasets, or have notebooks start by loading source data from the data provider. This captures the full workflow from data acquisition to final analysis.

1. Increasingly there are ways to access data remotely in a streaming fashion so that you don't have to download lots of files at all! This is a good option as well to facilitate data management and portability of your tutorial to run on different machines (hackweek jupyterhub, your personal computer, the computers of collaborators, some temporary server on the Cloud like mybinder.org, etc...)

1. When adding new notebooks be sure to "Clear all Outputs" before saving. This keeps the book source code small, but outputs are still built for the HTML webpage by Jupyter Book.

1. Make tutorials interactive, by incorporating exercises, quizzes, and practice the timing to make sure you can get through the content in the allotted time.
