# README for eScience Hackweek Jupyterbook Template GitHub Actions

### binder-badge.yml
Create binder badges with links to test tutorial notebooks

### cron.yaml
This Jupyterbook uses a cache to ensure that once multiple tutorial notebooks are added, only those with changes are rebuilt (otherwise build times could be over 20 minutes!).
This cron action makes sure the cache is always present by rebuilding periodically (since otherwise the cache could expire).

### deploy.yaml
Render and post the website.

### manual.yaml
Bypass usage of the cache to manually trigger a full rebuild of the Jupyterbook.

### netlifypreview.yaml
Creates public preview, via netlify, of changes by building from a PR.

### qaqc.yaml
Quality assessment and quality control.
Standardizes formatting including spell check, hyperlink check, and clearing notebook outputs.

### repo2docker.yaml
Build a Docker image based on binder/ configuration files for JupyterHub/BinderHub

### test.yaml
GitHub recommended method to enable website builds using GitHub secrets when an admin adds the preview label to a PR.
