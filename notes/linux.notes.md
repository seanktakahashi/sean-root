# Linux Notes

## Typing

* Clear Up to Beginning `<C-u>`
* Recall Deleted Line `<C-y>`
* Clear One Word `<C-w>`
* Cancel `<C-c>`

### zsh

* `!!` stores the last used command, can be used for when you forget `sudo`
```
> nmap -sS google.com
You requested a scan type which requires root privileges.
QUITTING!
> sudo !!
sudo nmap -sS google.com
Password:
```

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

### `find`

* find all files in `.` and sub dirs of `.swp` type
```
> find . -name *.swp
```

### `du`

* disc usage - command esimates space usage
```
du -sh [path]
```
* `-s` displays only total for each arg
* `-h` makes it human readable


