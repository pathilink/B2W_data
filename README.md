
# E-commerce data analysis

![ecommerce](mark-konig-Tl8mDaue_II-unsplash.jpg)

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

2 - Create a HTML version:

```bash
jupyter nbconvert yourNotebook.ipynb --no-input
```

3 - With the right mouse button select "Print" to generate a PDF.

## License

[MIT](https://choosealicense.com/licenses/mit/)
