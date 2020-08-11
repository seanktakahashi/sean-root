# Git Command Notes

use
```
git --help [command]
```

## RM

| Command | Description |
| ------- | ----------- |
| `git rm [file.txt]` | remove file from git repo and filesystem |
| `git rm --cached [file.txt] | remove file from git repo (use if only used `rm [file.txt]` |
| `git reset [file.txt]` | undo add command |

## BRANCHES

### Major Commands

| Command | Description |
| ------- | ----------- |
| `git branch -a` | List all branches (local and remote) |
| `git branch -d [branch]` | Delete local branch |
| `git push origin --delete [branch]` | Delete remote branch (you need to remove both remote and local) |
| `git checkout [branch]` | Switch to a branch |
| `git checkout -b [branch]` | Create new branch and switch to it |
| `git branch -m [old-branch new-branch]` | Rename a local branch |
| `git checkout -- [file.txt]` | Discard changes to a file |
| `git merge [branch]` | Merge branch into the active branch |
| `git stash` | Stash changes in a dirty working directory |

### Minor Commands

| Command | Description |
| ------- | ----------- |
| `git branch` | List local branches (the asterisk denotes the current branch) |
| `git branch -r` | List remote branches (the asterisk denotes the current branch) |
| `git branch -a` | List all branches (local and remote) |
| `git branch [branch]` | Create new branch |
| `git branch -d [branch]` | Delete local branch |
| `git branch -m [old-branch new-branch]` | Rename local branch |
| `git push origin --delete [branch]` | Delete remote branch |
| `git checkout -b [branch]` | Create new branch and switch to it |
| `git checkout -b [branch] origin/[branch]` | Clone remote branch and switch to it |
| `git checkout [branch]` | Switch to branch |
| `git checkout -` | Switch to the branch last checked out |
| `git checkout -- [file.txt]` | Discard changes to a file |
| `git merge [branch]` | Merge branch into the active branch |
| `git merge [source-branch target-branch]` | Merge branch into a target branch |
| `git stash` | Stash changes in a dirty working directory (equal to `git stash push`) |
| `git stash list` | List stashed modifications |
| `git stash apply` | Restore stashed modifications |
| `git stash clear` | Remove all stashed entries |

## TRACKING

### `.gitignore`

* Describes paths that can be ignored safely by git

### `.git/info/exclude`

* Redundant to `.gitignore`, but cannot be shared and commited itself
* Used for personal ignore patterns

### `git update-index --assume-unchanged [path]` 

* Should not be abused for an ignore mechanism
* It is a promise to git that the paths won't be changed 
* Warning: `git commit -a` can in some cases commit a change to assume unchanged paths
  * This is when git can infer that the path has been changed without incurring extra lstat(2) cost
