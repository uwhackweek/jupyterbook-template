# Tutorials
## Organization

Each tutorial is a collection of jupyterbooks and files in its own subfolder under tutorials.
For example in this template we have the `tutorials/example/intro-ipyleaflet.ipynb`.
New tutorials need to be listed explicitly in the `_toc.yml` file to show up in the rendered documentation.

## Suggestions for tutorial development

1. Use small example datasets, or have notebooks start by loading source data from the data provider. This captures the full workflow from data acquisition to final analysis.

1. Increasingly there are ways to access data remotely in a streaming fashion so that you don't have to download lots of files at all! This is a good option as well to facilitate data management and portability of your tutorial to run on different machines (hackweek jupyterhub, your personal computer, the computers of collaborators, some temporary server on the Cloud like mybinder.org, etc...)

1. When adding new notebooks be sure to "Clear all Outputs" before saving. This keeps the book source code small, but outputs are still built for the HTML webpage by Jupyter Book.

1. Make tutorials interactive, by incorporating exercises, quizzes, and practice the timing to make sure you can get through the content in the allotted time.


## Listing of tutorials during the event
These tutorials consist of Jupyter Notebooks that can be run in our
{{ '[preconfigured software environment]({url})'.format(url=github_org_url) }}
If you are attending the hackweek, you have access to a JupyterHub environment
with all the necessary Python software packages installed that are needed to run
through these tutorials interactively. On JupyterHub, your home directory persists
so any changes you make to the tutorials will be saved and be there for you next
time you log in.

[![badge](https://img.shields.io/static/v1.svg?logo=Jupyter&label=Launch&message=SnowExJupyterHub&color=orange)](https://snowex.hackweek.io)


Anyone can run these tutorials interactively on a temporary server via [MyBinder.org](https://mybinder.org), but notebooks requiring authenticated data access will run into errors:

[![badge](https://img.shields.io/static/v1.svg?logo=Jupyter&label=MyBinder.org&message=gcp-central&color=blue)](https://gke.mybinder.org/v2/gh/snowex-hackweek/website/main?urlpath=git-pull%3Frepo%3Dhttps%253A%252F%252Fgithub.com%252Fsnowex-hackweek%252Fwebsite%26urlpath%3Dlab%252Ftree%252Fwebsite/book/tutorials%252F%26branch%3Dmain)


All live tutorial recordings available via UW eScience [YouTube Playlist](https://www.youtube.com/playlist?list=PLA6PlfxWZPLSTUaS0uR8FMcNC2wqztwjJ). Or see the table below for links to specific tutorial notebooks and recordings:


| Tutorial | Topics | Datasets |  Recording Link |
| -  | - | - |  - |
| [Open Science Tools](./jupyter.md) | Git, GitHub, JupyterHub | n/a | [Recording](https://youtu.be/rKhs5FLI5rc)  |
| [Open Science](./open_science.md) | resources, open source software | n/a | [Recording](https://youtu.be/CRkP70ouDsA)|
