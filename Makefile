sort-verben:
	sort --field-separator=':' -o deutsche-verben.md deutsche-verben.md
	awk -F ":" '{print $1}' deutsche-verben.md | sort | uniq -d

sort-praeposition:
	sort --field-separator=':' -o deutsche-praeposition.md deutsche-praeposition.md
	awk -F ":" '{print $1}' deutsche-praeposition.md | sort | uniq -d

sort-substantiv:
	sort -k1.4 --field-separator=':' -o deutsche-substantiv.md deutsche-substantiv.md
	awk -F ":" '{print $1}' deutsche-substantiv.md | sort | uniq -d

sort-sentences:
	sort --field-separator=':' -o deutsche-sentences.md deutsche-sentences.md
	awk -F ":" '{print $1}' deutsche-sentences.md | sort | uniq -d

sort-adjektive:
	sort --field-separator=':' -o deutsche-adjektive.md deutsche-adjektive.md
	awk -F ":" '{print $1}' deutsche-adjektive.md | sort | uniq -d


all: sort-verben sort-praeposition sort-substantiv sort-sentences
