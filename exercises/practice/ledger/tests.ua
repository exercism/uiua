~ "ledger.ua" ~ FormatEntries

# empty ledger
Entries  ← []
Expected ←
$ "Date       | Description               | Change       "
⍤⤙≍ Expected FormatEntries "USD" "en_US" Entries

# one entry
Entries ← [
  {"2015-01-01" "Buy present" ¯1000}
]
Expected ←
$ "Date       | Description               | Change       "
$ "01/01/2015 | Buy present               |      ($10.00)"
⍤⤙≍ Expected FormatEntries "USD" "en_US" Entries

# credit and debit
Entries ← [
  {"2015-01-02" "Get present" 1000}
  {"2015-01-01" "Buy present" ¯1000}
]
Expected ←
$ "Date       | Description               | Change       "
$ "01/01/2015 | Buy present               |      ($10.00)"
$ "01/02/2015 | Get present               |       $10.00 "
⍤⤙≍ Expected FormatEntries "USD" "en_US" Entries

# multiple entries on same date ordered by description
Entries ← [
  {"2015-01-02" "Get present" 1000}
  {"2015-01-01" "Buy present" ¯1000}
]
Expected ← [
  "Date       | Description               | Change       "
  "01/01/2015 | Buy present               |      ($10.00)"
  "01/02/2015 | Get present               |       $10.00 "
]
⍤⤙≍ Expected FormatEntries "USD" "en_US" Entries

# final order tie breaker is change
Entries ← [
  {"2015-01-01" "Something" 0}
  {"2015-01-01" "Something" ¯1}
  {"2015-01-01" "Something" 1}
]
Expected ← [
  "Date       | Description               | Change       "
  "01/01/2015 | Something                 |       ($0.01)"
  "01/01/2015 | Something                 |        $0.00 "
  "01/01/2015 | Something                 |        $0.01 "
]
⍤⤙≍ Expected FormatEntries "USD" "en_US" Entries

# overlong description is truncated
Entries ← [
  {"2015-01-01" "Freude schoner Gotterfunken" ¯123456}
]
Expected ←
$ "Date       | Description               | Change       "
$ "01/01/2015 | Freude schoner Gotterf... |   ($1,234.56)"
⍤⤙≍ Expected FormatEntries "USD" "en_US" Entries

# euros
Entries  ← [{"2015-01-01" "Buy present" ¯1000}]
Expected ←
$ "Date       | Description               | Change       "
$ "01/01/2015 | Buy present               |      (€10.00)"
⍤⤙≍ Expected FormatEntries "EUR" "en_US" Entries

# Dutch locale
Entries  ← [{"2015-03-12" "Buy present" 123456}]
Expected ←
$ "Datum      | Omschrijving              | Verandering  "
$ "12-03-2015 | Buy present               |   $ 1.234,56 "
⍤⤙≍ Expected FormatEntries "USD" "nl_NL" Entries

# Dutch locale and euros
Entries  ← [{"2015-03-12" "Buy present" 123456}]
Expected ←
$ "Datum      | Omschrijving              | Verandering  "
$ "12-03-2015 | Buy present               |   € 1.234,56 "
⍤⤙≍ Expected FormatEntries "EUR" "nl_NL" Entries

# Dutch negative number with 3 digits before decimal point
Entries ← [
  {"2015-03-12" "Buy present" ¯12345}
]
Expected ←
$ "Datum      | Omschrijving              | Verandering  "
$ "12-03-2015 | Buy present               |    $ -123,45 "
⍤⤙≍ Expected FormatEntries "USD" "nl_NL" Entries

# American negative number with 3 digits before decimal point
Entries ← [
  {"2015-03-12" "Buy present" ¯12345}
]
Expected ←
$ "Date       | Description               | Change       "
$ "03/12/2015 | Buy present               |     ($123.45)"
⍤⤙≍ Expected FormatEntries "USD" "en_US" Entries

# multiple entries on same date ordered by description
Entries ← [
  {"2015-01-01" "Get present" 1000}
  {"2015-01-01" "Buy present" ¯1000}
]
Expected ←
$ "Date       | Description               | Change       "
$ "01/01/2015 | Buy present               |      ($10.00)"
$ "01/01/2015 | Get present               |       $10.00 "
⍤⤙≍ Expected FormatEntries "USD" "en_US" Entries
