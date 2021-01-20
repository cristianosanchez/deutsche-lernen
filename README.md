# deutsche-lernen

Deutsche Vocabulary CSV files

By default, all files use semicolon as field separator and they are all <german>;<portuguese> structured.
Other formats are specified by a header line comment.

## Managing file content

You may sort the file before import to some tool, like Anki or Quizlet:

```
sort --field-separator=':' -o deutsche-adjektive.md deutsche-adjektive.md
```

To skip prefix (genre, for example), use:

```
sort -k1.4 --field-separator=':' -o deutsche-substantiv.md deutsche-substantiv.md
```

To find duplicates, use:

```
awk -F ":" '{print $1}' deutsche-substantiv.md | sort | uniq -d
```

Note that // is the terminator.

To output to a file just the diff of new entries (after sorting), use:

```
git diff -U0 deutsche-verben.md| grep '^[+-]' | grep -Ev '^(--- a/|\+\+\+ b/)' | cut -c 2-
```

TODO create an make script to:
- sort, remove duplicates
- generate output showing diff lines from HEAD


## Verben für Quizlet import

Keep verben in ordnung by `Infinitiv//(er)Präsens/(er)Präteritum/(er)Perfekt:Übersetzung 1;Übersetzung 2`
