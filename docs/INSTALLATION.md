# Installation

[Pre-compiled Uiua binaries][releases] are available, so compiling isn't necessary.
See the [official installation guide][install-guide] for the latest instructions, including IDE integration and fonts.

~~~~exercism/note
Currently our online test-runner uses version `0.14.0-dev.7`.
With Uiua's rapid development process, that might be subject to change, so keep this in mind if you can't reproduce the testing results from the website.
~~~~

Once downloaded to your intended location, you’ll need to add Uiua to your system PATH.

- **macOS:** Use Finder to open `Applications > Utilities > Terminal`. Enter `export PATH="/path/to/uiua:$PATH"` to run Uiua from any location.

- **Windows:** Open "Edit Environment Variables" from the Start menu. In "Path," add your Uiua folder.

- **Linux:** Open Terminal and add `export PATH="/path/to/uiua:$PATH"` to `~/.bashrc` or `~/.profile` for easy access.

[releases]: https://github.com/uiua-lang/uiua/releases
[install-guide]: https://www.uiua.org/docs/install#basic
