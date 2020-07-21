## Unzipping / Extracting

### `gz` file
```
> gzip -d file.gz
  or 
> gunzip file.gz
```
* To keep the compressed file pass the `-k` option.

### `tar.gz` file
```
> tar -xf archive.tar.gz
```

### `zip` file

```
> unzip file.zip
```

## Finding and Greping

### find

* find all files in `.` and sub dirs of `.swp` type
```
> find . -name *.swp
```
