Assignment 2: Lisp and Python Scripting

**Laboratory: Lisp Scripting**

### **Exercise 2.1: Navigating through Emacs Source Code**

1. **Warm-up Calculation**
   - Compute \((2607 - 1) \times (2607 - 1)\) in the *scratch* buffer using `expt`.
   - Write an expression in Lisp to determine the number of bits required to represent this number in base-2 notation.
   - Use `M-:` to compute the result.

2. **Exploring Keybindings**
   - List all keybindings using `C-h b`.
   - Investigate `C-h k` and `M-SPC` using `C-h k`.
   - Experiment with `M-SPC` on text with excess whitespace.
   - Locate and examine the source code implementing `M-SPC`.
   - Execute the underlying general function using `M-:` and `M-x`.

### **Exercise 2.2: Scripting Emacs**

1. **Understanding `M-x what-line`**
   - Determine what it does.

2. **Implementing `gps-line`**
   - Use `C-h f` to examine `what-line`.
   - Locate its source code and copy it into `gps-line.el`.
   - Modify `gps-line.el` to display "Line X/Y" where Y is the total line count.
   - Ensure correct behavior for buffers not ending in a newline.
   - Test with various buffers.

**Homework: Python Scripting**

### **Understanding `randline.py`**

1. **Execution Analysis**
   - Run `randline.py` on a non-empty file and describe its behavior.
   - Test `randline.py` on an empty file like `/dev/null` and explain the results.

2. **Comparing `randline.py` and `randline_old.py`**
   - Use `diff` to compare the files.
   - Attempt to run `randline_old.py` with Python 3 and analyze errors.

### **Implementing `shuf.py`**

1. **Implementation Guidelines**
   - Write a Python 3 script `shuf.py` replicating GNU `shuf`.
   - Support the following options:
     - `--echo` (`-e`)
     - `--input-range` (`-i`)
     - `--head-count` (`-n`)
     - `--repeat` (`-r`)
     - `--help`
   - Handle standard input and file input.
   - Implement argument parsing using `argparse`.

### **Benchmarking Performance**

1. **Execution Timing**
   - Measure execution time using `time`.
   - Compare performance between:
     - `/usr/bin/python3` (pre-3.11)
     - `/usr/local/cs/bin/python3` (3.11 or later)
     - `/usr/local/cs/bin/shuf`
   - Compute median execution time across three trials.
   - Document CPU and OS information using `lscpu` and `/etc/os-release`.

2. **Feature Analysis**
   - If `shuf.py` fails on `/usr/bin/python3`, explain why.

### **Submission Instructions**

Submit a compressed tarball `assign2.tgz` containing:

- `gps-line.el`
- `shuf.py`
- `notes.txt` (containing responses, observations, and additional comments)

Ensure all files use UTF-8 encoding with LF line endings.

Verify submission using:
```
tar -tvf assign2.tgz
```

