# kanji_api.cr
Web-API for [kanjiapi.dev](https://kanjiapi.dev/) a modern JSON API for kanji

## Example
```cr
require "./kanji_api"

kanji_api = KanjiApi.new
kanjis = kanji_api.get_all_kanjis()
puts kanjis
```
