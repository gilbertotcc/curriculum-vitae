# Curriculum Vitae

Gilberto Taccari CV in LaTeX format.

## Usage

### Prerequisite

Some sensitive information are not explicitly written within the LaTeX sources. Instead they are
loaded from the environment and put in the document during the compilation. The following variable
must be set to properly create the CV.

- `CV_MOBILE`, mobile number.
- `CV_EMAIL`, personal email address.
- `CV_ADDRESS`, home address.
- `CV_BIRTH`, birth date and place.

### Create curriculum vitae via Docker

The repository provides a `Dockerfile` to build an Docker image with all the requirements for
compiling LaTeX files and creating the curriculum vitae in PDF format. Using Docker, having a
working LaTeX environment on local machine is not required. Instead, Docker is needed.

For compiling LaTeX files and create the curriculum vitae in PDF format, following commands have to
be ran from repository root directory. (These commands work on _macOS_ and _GNU/Linux_.)

```sh
$ docker build --rm --tag local/latexmk:latest .
$ docker run --rm \
    --env-file <ENVIRONMENT_FILE> \
    -v "$(pwd):/local/source" \
    local/latexmk \
    make pdf
```

If LaTeX compilation successes, PDF file `cv.pdf` with the curriculum vitae will be created on the
same folder.

### Create curriculum vitae via `Makefile`

The repository provides also a `Makefile` that can be used to create the curriculum vitae in PDF
format locally if a working LaTeX environment is configured and working. `Makefile` uses
[`latexmk`](http://personal.psu.edu/jcc8//software/latexmk-jcc/) to properly compile sources files.
To create the PDF file with curriculum vitae, following command has to be called from command line.

```sh
$ make
```
