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

To output to a file just the diff of new entries (after sorting), use:

```
git diff -U0 deutsche-verben.md| grep '^[+-]' | grep -Ev '^(--- a/|\+\+\+ b/)' | cut -c 2-
```

TODO create an make script to:
- sort, remove duplicates
- generate output showing diff lines from HEAD


## Verben für Quizlet import

Keep verben in ordnung by `Infinitiv//(er)Präsens/(er)Präteritum/(er)Perfekt:Übersetzung 1;Übersetzung 2`
