# deutsche-lernen

Deutsche Vocabulary CSV files

By default, all files use semicolon as field separator and they are all <german>;<portuguese> structured.
Other formats are specified by a header line comment.

## Managing file content

You may sort the file before import to some tool, like Anki or Quizlet:

```
sort --field-separator=';' -o deutsche-verben.md deutsche-verben.md
```

To find duplicates, use:

```
awk -F ";" '{print $1}' deutsche-verben.md | sort | uniq -d
```
