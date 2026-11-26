# Heart Disease Project

This repo uses the UCI Heart Disease data (Cleveland site): https://archive.ics.uci.edu/dataset/45/heart+disease

## Contents
- `data/`: the data (`processed.cleveland.data`) and its data dictionary (`heart-disease.names`)
- `code/`: R scripts
- `output/`: generated table and figure files
- `report.Rmd`: the final report
- `Makefile`: builds the report

## How to generate the final report
Run this in the terminal from the repo folder:

    make report.html

## What the report contains
A short summary of the Cleveland data: a table of mean age, cholesterol, resting blood pressure, and maximum heart rate by heart disease status, and a boxplot of maximum heart rate by disease status.

## Where the code is
- Table: `code/01_make_table.R`
- Figure: `code/02_make_figure.R`
- Report rendering: `code/03_render_report.R`

## Synchronizing the package repository

This project uses `renv` to manage R package versions. To install the
exact packages used to create the report, run this from the repo folder:

    make install

This runs `renv::restore()` using the `renv.lock` file. After that, generate the report with:

    make report.html