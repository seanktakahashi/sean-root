# CLI commands
[Source](https://docs.aws.amazon.com/cli/latest/userguide/cli-services-s3-commands.html)

## create bucket
```
aws s3 mb s3://{bucket-name}
```

## list buckets
```
aws s3 ls
```

## delete bucket
```
aws s3 rb s3://{bucket-name}
```

## add files to bucket
```
aws s3 cp file.txt s3://{my-bucket}
```

## remove files to bucket
```
aws s3 rm s3://{my-bucket}/{path-to-file}
```

## sync files with bucket
```
aws s3 sync <source> <target>
```
This command can be used to download files from bucket or upload files.

note that `sync` does not delete files.
To also delete files with this command use `--delete`

```
aws s3 sync <source> <target> --delete
```

