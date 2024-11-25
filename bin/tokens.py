# TODO: modify suggestion program to use tokens with more than one character

VALID_TOKENS = {
    # 0 arguments, 0 outputs
    # ----------------------------------------
    "&ast": 1.0,  # Synthesize and stream audio
    "?": 1.0,  # Debug print all stack values without popping them
    "dump": 1.0,  # Preprocess and print all stack values without popping them

    # 0 arguments, 1 outputs
    # ----------------------------------------
    "&args": 1.0,  # Get the command line arguments
    "&asr": 1.0,  # Get the sample rate of the audio output backend
    "&clip": 1.0,  # Get the contents of the clipboard
    "&sc": 1.0,  # Read a line from stdin
    "&ts": 1.0,  # Get the size of the terminal
    "/": 1.0,  # Apply a reducing function to an array
    "comptime": 1.0,  # Run a function at compile time
    "memo": 1.0,  # Memoize a function
    "now": 1.0,  # Get the current time in seconds
    "pool": 1.0,  # Spawn a thread in a thread pool
    "quote": 1.0,  # Convert a string into code at compile time
    "spawn": 1.0,  # Spawn a thread
    "stringify": 1.0,  # Convert code into a string instead of compiling it
    "tag": 1.0,  # Generate a unique tag
    "timezone": 1.0,  # Get the local timezone offset
    "°": 1.0,  # Invert the behavior of a function
    "η": 1.0,  # The number of radians in a quarter circle
    "π": 1.0,  # The ratio of a circle's circumference to its diameter
    "τ": 1.0,  # The ratio of a circle's circumference to its radius
    "∂": 1.0,  # Calculate the derivative of a mathematical expression
    "∞": 1.0,  # The biggest number
    "∧": 1.0,  # Apply a function to aggregate arrays
    "∩": 1.0,  # Call a function on two sets of values
    "∫": 1.0,  # Calculate an antiderivative of a mathematical expression
    "∵": 1.0,  # Apply a function to each element of an array or arrays
    "≡": 1.0,  # Apply a function to each row of an array or arrays
    "⊃": 1.0,  # Call two functions on the same values
    "⊓": 1.0,  # Call two functions on two distinct sets of values
    "⊙": 1.0,  # Temporarily pop the top value off the stack and call a function
    "⊞": 1.0,  # Apply a function to each combination of rows of some arrays
    "⊸": 1.0,  # Duplicate a function's last argument before calling it
    "⋅": 1.0,  # Discard the top stack value then call a function
    "⌅": 1.0,  # Define the various inverses of a function
    "⌝": 1.0,  # Invert the behavior of a function, treating its first argument as a constant
    "⍚": 1.0,  # Apply a function to each unboxed row of an array and re-box the results
    "⍜": 1.0,  # Operate on a transformed array, then reverse the transformation
    "⍢": 1.0,  # Repeat a function while a condition holds
    "⍣": 1.0,  # Call a function and catch errors
    "⍥": 1.0,  # Repeat a function a number of times
    "⍩": 1.0,  # Call a pattern matching case
    "◇": 1.0,  # Unbox the arguments to a function before calling it
    "◠": 1.0,  # Keep all arguments to a function above the outputs on the stack
    "◡": 1.0,  # Keep all arguments to a function below the outputs on the stack
    "◹": 1.0,  # Apply a function to each shrinking row of an array
    "⚂": 1.0,  # Generate a random number in the range [0, 1)
    "⟜": 1.0,  # Call a function but keep its first argument on the top of the stack
    "⤙": 1.0,  # Call a function but keep its last argument on the top of the stack
    "⤚": 1.0,  # Call a function but keep its first argument under the outputs on the stack
    "⧅": 1.0,  # Get permutations or combinations of an array
    "⨬": 1.0,  # Call the function at the given index
    "⬚": 1.0,  # Set the fill value for a function
    "𝄈": 1.0,  # Call a function with its arguments reversed

    # 0 arguments, 2 outputs
    # ----------------------------------------
    "astar": 1.0,  # Find shortest paths in a graph
    "signature": 1.0,  # Get the signature of a function

    # 1 arguments, 0 outputs
    # ----------------------------------------
    "&ap": 1.0,  # Play some audio
    "&cd": 1.0,  # Change the current directory
    "&cl": 1.0,  # Close a stream by its handle
    "&ep": 1.0,  # Print a value to stderr followed by a newline
    "&epf": 1.0,  # Print a value to stderr
    "&exit": 1.0,  # Exit the program with a status code
    "&fde": 1.0,  # Delete a file or directory
    "&fmd": 1.0,  # Create a directory
    "&ftr": 1.0,  # Move a file or directory to the trash
    "&ims": 1.0,  # Show an image
    "&memfree": 1.0,  # Free a pointer
    "&p": 1.0,  # Print a value to stdout followed by a newline
    "&pf": 1.0,  # Print a value to stdout
    "&raw": 1.0,  # Set the terminal to raw mode
    "&s": 1.0,  # Print a nicely formatted representation of a value to stdout
    "&sl": 1.0,  # Sleep for n seconds
    "◌": 1.0,  # Discard the top stack value

    # 1 arguments, 1 outputs
    # ----------------------------------------
    "&camcap": 1.0,  # Capture an image from a webcam
    "&fc": 1.0,  # Create a file and return a handle to it
    "&fe": 1.0,  # Check if a file, directory, or symlink exists at a path
    "&fif": 1.0,  # Check if a path is a file
    "&fld": 1.0,  # List the contents of a directory
    "&fo": 1.0,  # Open a file and return a handle to it
    "&frab": 1.0,  # Read all the contents of a file into a byte array
    "&fras": 1.0,  # Read all the contents of a file into a string
    "&invk": 1.0,  # Invoke a path with the system's default program
    "&runi": 1.0,  # Run a command and wait for it to finish
    "&tcpa": 1.0,  # Accept a connection with a TCP or TLS listener
    "&tcpaddr": 1.0,  # Get the connection address of a TCP socket
    "&tcpc": 1.0,  # Create a TCP socket and connect it to an address
    "&tcpl": 1.0,  # Create a TCP listener and bind it to an address
    "&tcpsnb": 1.0,  # Set a TCP socket to non-blocking mode
    "&tlsc": 1.0,  # Create a TCP socket with TLS support
    "&tlsl": 1.0,  # Create a TLS listener and bind it to an address
    "&var": 1.0,  # Get the value of an environment variable
    "\\": 1.0,  # Reduce, but keep intermediate values
    "binary": 1.0,  # Encode an array into a compact binary representation
    "csv": 1.0,  # Encode an array into a CSV string
    "datetime": 1.0,  # Get the date and time information from a time
    "fft": 1.0,  # Run the Fast Fourier Transform on an array
    "graphemes": 1.0,  # Convert a string to a list of UTF-8 grapheme clusters
    "json": 1.0,  # Encode an array into a JSON string
    "recv": 1.0,  # Receive a value from a thread
    "repr": 1.0,  # Convert a value to its code representation
    "tryrecv": 1.0,  # Try to receive a value from a thread
    "type": 1.0,  # Check the type of an array
    "utf₈": 1.0,  # Convert a string to UTF-8 bytes
    "wait": 1.0,  # Wait for a thread to finish and push its results to the stack
    "xlsx": 1.0,  # Encode an array into XLSX bytes
    "¤": 1.0,  # Add a length-1 axis to an array
    "¬": 1.0,  # Logical not
    "¯": 1.0,  # Negate a number
    "±": 1.0,  # Numerical sign (1, ¯1, or 0)
    "⁅": 1.0,  # Round to the nearest integer
    "⇌": 1.0,  # Reverse the rows of an array
    "⇡": 1.0,  # Make an array of all natural numbers less than a number
    "∘": 1.0,  # Do nothing with one value
    "√": 1.0,  # Take the square root of a number
    "∿": 1.0,  # Get the sine of a number
    "⊚": 1.0,  # Get indices where array values are not equal to zero
    "⊛": 1.0,  # Assign a unique index to each unique row in an array
    "⊢": 1.0,  # Get the first row of an array
    "⊣": 1.0,  # Get the last row of an array
    "⋕": 1.0,  # Parse a string as a number
    "⋯": 1.0,  # Encode an array as bits (LSB-first)
    "⌈": 1.0,  # Round to the nearest integer towards ∞
    "⌊": 1.0,  # Round to the nearest integer towards ¯∞
    "⌵": 1.0,  # Get the absolute value of a number
    "⍆": 1.0,  # Sort an array
    "⍉": 1.0,  # Rotate the shape of an array
    "⍏": 1.0,  # Get the indices into an array if it were sorted ascending
    "⍖": 1.0,  # Get the indices into an array if it were sorted descending
    "□": 1.0,  # Turn an array into a box
    "△": 1.0,  # Get the dimensions of an array
    "◰": 1.0,  # Get a mask of first occurrences of items in an array
    "◴": 1.0,  # Remove duplicate rows from an array
    "♭": 1.0,  # Make an array 1-dimensional
    "⧻": 1.0,  # Get the number of rows in an array
    "⸮": 1.0,  # Debug print the top value on the stack without popping it

    # 1 arguments, 2 outputs
    # ----------------------------------------
    ".": 1.0,  # Duplicate the top value on the stack

    # 1 arguments, 3 outputs
    # ----------------------------------------
    "&runc": 1.0,  # Run a command and wait for it to finish
    "&runs": 1.0,  # Run a command with streaming IO

    # 2 arguments, 0 outputs
    # ----------------------------------------
    "&fwa": 1.0,  # Write the entire contents of an array to a file
    "&gifs": 1.0,  # Show a gif
    "&tcpsrt": 1.0,  # Set the read timeout of a TCP socket in seconds
    "&tcpswt": 1.0,  # Set the write timeout of a TCP socket in seconds
    "&w": 1.0,  # Write an array to a stream
    "send": 1.0,  # Send a value to a thread
    "⍤": 1.0,  # Throw an error if a condition is not met

    # 2 arguments, 1 outputs
    # ----------------------------------------
    "&ffi": 1.0,  # Call a foreign function interface
    "&httpsw": 1.0,  # Make an HTTP(S) request
    "&rb": 1.0,  # Read at most n bytes from a stream
    "&rs": 1.0,  # Read characters formed by at most n bytes from a stream
    "&ru": 1.0,  # Read from a stream until a delimiter is reached
    "+": 1.0,  # Add values
    "-": 1.0,  # Subtract values
    "<": 1.0,  # Compare for less than
    "=": 1.0,  # Compare for equality
    ">": 1.0,  # Compare for greater than
    "base": 1.0,  # Get the base digits of a number
    "choose": 1.0,  # Get all combinations of k rows from an array
    "gen": 1.0,  # Generate an array of random numbers with a seed
    "get": 1.0,  # Get the value corresponding to a key in a map array
    "gif": 1.0,  # Encode a gif into a byte array
    "has": 1.0,  # Check if a map array has a key
    "img": 1.0,  # Encode an image into a byte array with the specified format
    "layout": 1.0,  # Render text into an image array
    "map": 1.0,  # Create a hashmap from a list of keys and list values
    "permute": 1.0,  # Get all permutations of k rows from an array
    "regex": 1.0,  # Match a regex pattern
    "remove": 1.0,  # Remove the value corresponding to a key from a map array
    "×": 1.0,  # Multiply values
    "÷": 1.0,  # Divide values
    "ⁿ": 1.0,  # Raise a value to a power
    "ₙ": 1.0,  # Get the based logarithm of a number
    "ℂ": 1.0,  # Make a complex number
    "↘": 1.0,  # Drop the first n rows of an array
    "↙": 1.0,  # Take the first n rows of an array
    "↥": 1.0,  # Take the maximum of two arrays
    "↧": 1.0,  # Take the minimum of two arrays
    "↯": 1.0,  # Change the shape of an array
    "↻": 1.0,  # Rotate the elements of an array by n
    "∈": 1.0,  # Check if each row of one array exists in another
    "∊": 1.0,  # Check if each row of one array exists in another
    "∠": 1.0,  # Take the arctangent of two numbers
    "≍": 1.0,  # Check if two arrays are exactly the same
    "≠": 1.0,  # Compare for inequality
    "≤": 1.0,  # Compare for less than or equal
    "≥": 1.0,  # Compare for greater than or equal
    "⊂": 1.0,  # Append two arrays end-to-end
    "⊏": 1.0,  # Select multiple rows from an array
    "⊕": 1.0,  # Group elements of an array into buckets by index
    "⊗": 1.0,  # Find the first index of each row of one array in another
    "⊜": 1.0,  # Group sequential sections of an array
    "⊟": 1.0,  # Combine two arrays as rows of a new array
    "⊡": 1.0,  # Index a row or elements from an array
    "⌕": 1.0,  # Find the occurences of one array in another
    "⑄": 1.0,  # Get the n-wise chunks of an array
    "▽": 1.0,  # Discard or copy some rows of an array
    "◫": 1.0,  # The n-wise windows of an array
    "◿": 1.0,  # Modulo values
    "☇": 1.0,  # Change the rank of an array's rows
    "⤸": 1.0,  # Change the order of the axes of an array
    "⦷": 1.0,  # Mask the occurences of one array in another

    # 2 arguments, 2 outputs
    # ----------------------------------------
    ":": 1.0,  # Swap the top two values on the stack

    # 2 arguments, 3 outputs
    # ----------------------------------------
    ",": 1.0,  # Duplicate the second-to-top value to the top of the stack
    "’": 1.0,  # Duplicate the top value on the stack to the third-to-top position

    # 3 arguments, 1 outputs
    # ----------------------------------------
    "&memcpy": 1.0,  # Copy data from a pointer into an array
    "audio": 1.0,  # Encode audio into a byte array
    "insert": 1.0,  # Insert a key-value pair into a map array

}