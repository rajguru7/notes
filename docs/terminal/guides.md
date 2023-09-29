# Guides

## In place editing with sed

Linux(GNU) and Mac(BSD) sed versions are different

Linux
```sh
sed -i 's/<text>/<replace>/g'
```

Mac
```sh
# '' is for empty backup file
sed -i '' 's/<text>/<replace>/g'
```

## Changing extension of all files in a folder

<https://stackoverflow.com/questions/9558986/what-does-the-curly-brace-syntax-var-mean/9559024#9559024>

```sh
# Rename all *.txt to *.md
for file in *.txt; do
    mv -- "$file" "${file%.txt}.md"
done
```

`*.txt` is a globbing pattern, using * as a wildcard to match any string. `*.txt` matches all filenames ending with '.txt'.
`--` marks the end of the option list. This avoids issues with filenames starting with hyphens.
`${file%.txt}` is a parameter expansion, replaced by the value of the file variable with .txt removed from the end.
Also see the entry on why you shouldn't parse ls.

**Add and remove commong pattern from all files in folder**

```sh
ls
#1-web.pdf   2-web.pdf

#required
ls
#osc_ch1.pdf osc_ch2.pdf
```

<https://stackoverflow.com/questions/27658675/how-to-remove-last-n-characters-from-a-string-in-bash>

```sh
for file in *.pdf; do
    mv -- "$file" "osc_ch${file:0:-8}.pdf"
done
```

## Removing new lines from file

<https://stackoverflow.com/questions/3134791/how-do-i-remove-newlines-from-a-text-file>
<https://stackoverflow.com/questions/1251999/how-can-i-replace-each-newline-n-with-a-space-using-sed>

```sh
tr -d '\n' < file.txt
```

OR

```sh
awk '{ printf "%s", $0 }' file.txt
```

OR

Below is for GNU sed (Linux one); Mac uses BSD sed
```sh
sed ':a;N;$!ba;s/\n//g' file.txt
```

This will read the whole file in a loop (':a;N;$!ba), then replaces the newline(s) with a space (s/\n/ /g). Additional substitutions can be simply appended if needed.

Explanation:

1.  sed starts by reading the first line excluding the newline into the pattern space.
2.  Create a label via :a.
3.  Append a newline and next line to the pattern space via N.
4.  If we are before the last line, branch to the created label $!ba ($! means not to do it on the last line. This is necessary to avoid executing N again, which would terminate the script if there is no more input!).
5.  Finally the substitution replaces every newline with a space on the pattern space (which is the whole file).

Here is cross-platform compatible syntax which works with BSD and OS X's sed (as per @Benjie comment):

Mac syntax below
```sh
sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' file.txt
```

sed is not good for this job (inefficient). Use tr (best) or awk (inefficient).


## tmux-sessionizer.bash

type: bash
description:
A script created for fuzzy finding a folder and create/switch tmux session with that folder.
The script is added to `~/.dotfiles/bin/.local/scripts/`. This folder is symlinked to `~/.local/scripts/` which is added to PATH env variable in `.zshrc` 
learnings:
  - usage of $() to use output of bash command in script
  - use of if condition in bash

## If condition in bash

```bash
if <something that returns a status code> ; then
    echo "true"
else
    echo "false"
fi
 
```
The condition is not a boolean. If the condition returns a 0 status code then the if body is executed, for any other status code other conditions are checked.

To check a boolean condition use [[]]. Refer `man bash`
The [[]] returns 0 if the boolean is true, else it returns false.
```bash
if [[ boolean ]] ; then
fi
```

To check the exit status code to see what the condition is actually returning.
Run the command sequence for which you want to check the exit status.
Then run `echo $?`. This gives the exit status code of the last run command in bash/zsh.

**For running bash in string form**
`bash -c "<bash string>"`

**Command substitution**
`bash -c "if  [[ $( echo -e "hi\nhello" | grep "hi" -c ) -eq 0 ]]; then echo "success"; fi"`

## `validate_yaml.py`

type: python
description:
Validates yaml passed using stdin.
learnings:
  - using pyyaml module to validate yaml
  - python help() function for getting help on python keywords
  - taking input from stdin in python using sys module
  - creating my first python script (making it executable)
  - passing visual selection from vim to any shell command
