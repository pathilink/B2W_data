
# E-commerce data analysis

![ecommerce](mark-konig-Tl8mDaue_II-unsplash.jpg)

Photo by <a href="https://unsplash.com/@markkoenig?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Mark König</a> on <a href="https://unsplash.com/s/photos/ecommerce?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>

## Project description

Analysis of the sales of an ecommerce with fictitious data.

## To extract the data

1 - Installation for Linux user

```bash
sudo apt-get install unrar
```

2 - Extract data

```bash
unrar e desafio_-_analista_de_dados.rar 
```

## PostgreSQL

To create the unified database use:

```file
create_tables.sql
```

PS: Make sure that pgAdmin (or another tool) has read and write permission on the destination folder.

## To run the notebook

```bash
jupyter notebook
```

## To print the notebook

1 - Install [nbconvert](https://nbconvert.readthedocs.io/en/latest/install.html).

2 - Create a HTML version without code:

```bash
jupyter nbconvert B2W_report.ipynb --no-input
```

3 - With the right mouse button select "Print" to generate a PDF.

## Made with

<p>

<img alt="Python" src="https://img.shields.io/badge/-Python-27e2c7?style=flat&logo=python&logoColor=white" />

<img alt="Jupyter" src="https://img.shields.io/badge/-Jupyter-27e2c7?style=flat&logo=Jupyter&logoColor=white" />

<img alt="PostgreSQL" src="https://img.shields.io/badge/-PostgreSQL-27e2c7?style=flat&logo=PostgreSQL&logoColor=white" />

</p>

## Author

[![Linkedin Badge](https://img.shields.io/badge/-Patrícia-blue?style=flat&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/pathilink/)](https://www.linkedin.com/in/pathilink/) 

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-27E2C7.svg)](https://opensource.org/licenses/MIT)