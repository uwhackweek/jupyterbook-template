# eScience Hackweek Jupyterbook Template GitHub Actions

## Actions

the `actions/` subfolder contains common [composite actions steps](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) that workflows can use.

#### [setupconda](./actions/setupconda/action.yaml)
Steps to configure conda environment required to build the website.

#### [buildresources](./actions/buildresources/action.yaml)
Steps to build the hackweek landing webpage and JupyterBook.


## Workflows

The `workflows/` subfolder contains continuous integration workflows

#### [binder-badge.yml](./actions/workflows/binder-badge.yaml)
Create [binder](https://mybinder.readthedocs.io/en/latest/howto/gh-actions-badges.html) badges with links to test tutorial notebooks

#### [deploy.yaml](./actions/workflows/deploy.yaml)
Render and publish the website to GitHub Pages

#### [manual.yaml](./actions/workflows/manual.yaml)
Bypass usage of the cache to manually trigger a full rebuild of the Jupyterbook

#### [netlifypreview.yaml](./actions/workflows/netlifypreview.yaml)
Creates public preview, via [netlify](https://jupyterbook.org/publish/netlify.html), of changes by building from a PR

#### [qaqc.yaml](./actions/workflows/qaqc.yaml)
Quality assessment and quality control.
Standardizes formatting including spell check, hyperlink check, and clearing notebook outputs

#### [repo2docker.yaml](./actions/workflows/repo2docker.yaml)
[Build a Docker image](https://github.com/jupyterhub/repo2docker-action) based on binder/ configuration files for JupyterHub/BinderHub

#### [test.yaml](./actions/workflows/repo2docker.yaml)
Build the websites (JupyterBook and front page). Run on Pull Requests against every commit and via a 'cron' schedule to maintain caching [since otherwise the cache expires if untouched in 7 days](https://docs.github.com/en/actions/advanced-guides/caching-dependencies-to-speed-up-workflows#usage-limits-and-eviction-policy)


## Security

It's desirable for hackweek websites to have contributions from anyone, so the website repository should allow for changes via pull requests from forks. By default workflows running off forked repositories do not have access to secrets, but [following security best practices](https://securitylab.github.com/research/github-actions-preventing-pwn-requests/) you can require adding a label to a pull request in order to run a workflow that requires secrets. We do this in [netlifypreview.yaml](./actions/workflows/netlifypreview.yaml):

```yaml
on:
  pull_request_target:
    types: [labeled]

jobs:
  add-preview:
    runs-on: ubuntu-20.04
    if: contains(github.event.pull_request.labels.*.name, 'preview')

    steps:
    - name: Checkout repository
      uses: actions/checkout@v2
      with:
        ref: ${{ github.event.pull_request.head.sha }}
```
