# Track Tooling

This document explains some of the additional helpers that compliment the usual tools for exercism tracks like configlet.

## Difficulty-Suggester

To help in difficulty grading of exercises, you can run `bin/difficulty_suggester plain`.
The tool can print the suggestions in json format, to facilitate automation.

### Workflow

- Run  `bin/difficulty_suggester json > suggestions.json` in root.
- Execute the jq code to update the suggestions and sort them alphabetically:

    ```jq
    jq --argfile suggestions suggestions.json '
    .exercises.practice |= (
        map(
        .difficulty = ($suggestions[.slug]?.difficulty // .difficulty)
        )
        | sort_by(.difficulty, .slug)
    )
    ' config.json > updated_config.json
    ```

### Fine-Tuning

Adjust the tokens.py file for a complexity-based evaluation of each glyph.
