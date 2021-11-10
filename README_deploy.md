# To build this repo to static sites

Assuming you have `jupyter-book` and `cookiecutter` installed. Run the following in order:

1. Build book

    ```bash
    jupyter-book build book
    ```

2. Run cookiecutter

    ```bash
    rm -rf book/_build/html/assets
    cookiecutter . -f --no-input -o book/_build
    ```

3. Open the html file in `book/_build/html/index.html` from a web browser.
