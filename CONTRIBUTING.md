# Contributing

Contributions are welcome, and they are greatly appreciated! Every little bit
helps, and credit will always be given.

- Report bugs, request features or submit feedback as a [GitHub Issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues).
- Make fixes, add content or improvements using [GitHub Pull Requests](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)

Ready to contribute? Here's a quick guide

1. Fork this hackweek's website repo on GitHub.

1. Clone your fork locally:

    ```sh
    git clone {{website_url}}.git
    cd jupyterbook-template
    ```

1. Create a branch to add your changes:

    ```sh
    git checkout -b name-of-your-bugfix-or-feature
    ```

1. Create and activate the "hackweek" conda environment. NOTE: if you're running linux or windows use `binder/conda-linux-64.lock`:

    ```sh
    conda create --name hackweek --file binder/conda-osx-64.lock
    conda activate hackweek
    ```
    NOTE: if you want to add packages or change the environment, in the `binder` directory first edit `environment-EDITABLE.yml`, then generate updated "lockfiles" by executing `lock-environment.sh`

1. Make your desired changes and build the book locally

    ```sh
    jb build book
    ```
    NOTE: to preview the changes open `book/build/html/index.html`

1. Push your branch to GitHub when you're ready:

    ```sh
    git add .
    git commit -m "Your detailed description of your changes."
    git push origin name-of-your-bugfix-or-feature
    ```

1. Open a pull request through the GitHub website: {{website_url}}
