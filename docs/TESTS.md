# Tests

If you've downloaded an exercise with the CLI tool, you should see a Uiua file named after the exercise and a `tests.ua` file.
This file contains all the test cases, which match those run by the test runner when you upload your solution.
Feel free to add additional test cases for experimenting.
However, modifying tests does not affect the online test-runner process.

## Local Testing

To runs an exercise's tests, open a terminal in the exercise's directory and run the `uiua tests tests.ua` command.

For example, the output of an unedited `hello-world` exercise might look like this:

```bash
$ uiua test tests.ua
Error: Goodbye, Mars!
  at tests.ua:3:1
3 | ⍤⤙≍ "Hello, World!" Hello
    ─
Test failed
```

The `Error` line displays your code's actual output.
The line number indicates the location of the expected result in `tests.ua`.
A correct solution produces:

```bash
$ uiua test tests.ua
Test passed
```

## Skipped Tests

Some exercises might include skipped tests to help you focus on early functionality before handling complex cases.
Other exercises might exclude some test cases, the creator did not seem necessary to get a passing grade for the core of the concept being taught.
To unskip tests, remove the relevant sections in the tests.ua file.

## Further Resources

For more on testing with Uiua, refer to the [Uiua testing][uiua-testing-docs] documentation.

[uiua-testing-docs]: https://www.uiua.org/tutorial/testing
