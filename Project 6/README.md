### Assignment 6: Low-Level Refactoring and Performance

---

**Objective:**  
This assignment involves improving and optimizing the `randall` program, which generates random byte streams. You will refactor the program for better organization and performance, add new features, and test your improvements. The key tasks are modularizing the program, adding options for performance tuning, and optimizing the random number generation process.

---

### **Steps to Complete the Assignment:**

1. **Set Up Your Git Repository:**
   - Clone the `randall-git.tgz` repository and unpack the tarball.
   - Set up a local Git repository to track your changes. Make sure you exclude build files by configuring the `.gitignore` file properly.
   - Keep a log of your work in `notes.txt` and commit your progress regularly.

2. **Understand the Code:**
   - Read and understand the code in `randall.c` and `Makefile`.
   - Make sure you understand how the random byte stream generation works and how it's structured in the current code.

3. **Initial Testing and Modification of Makefile:**
   - Modify the `Makefile` to ensure that the command `make check` tests your program (e.g., verifying that the output is the correct length).
   - Use a simple test to confirm that `make check` works as expected.

4. **Refactor the Code into Modules:**
   - Split the existing code in `randall.c` into separate modules for better organization. Create the following files:
     - `options.c` with header `options.h` – for command-line options processing.
     - `output.c` with header `output.h` – for managing output functionality.
     - `rand64-hw.c` with header `rand64-hw.h` – for hardware-based random number generation.
     - `rand64-sw.c` with header `rand64-sw.h` – for software-based random number generation.
   - Ensure that each module includes only the necessary headers and that unnecessary symbols are kept private.

5. **Modify the Makefile for Refactored Program:**
   - Update the `Makefile` to compile and link the newly modularized program.
   - Ensure that all the modules are properly compiled and linked together.

6. **Add Options for Performance Tuning:**
   - Implement a new `-i input` option to select the source of random data:
     - `rdrand`: hardware random number generation (default, if available).
     - `lrand48_r`: the `lrand48_r` function from the GNU C library.
     - `/F`: use a file `/F` as a source for random data instead of `/dev/random`.
   - Implement a new `-o output` option for controlling the output format:
     - `stdio`: standard output (default).
     - `N`: output `N` bytes at a time using the `write` system call.

7. **Implement Test Cases for Your Changes:**
   - Add tests to the `Makefile` under `make check` to verify that your changes are correct. Ensure that the random data is of the correct length, and validate your new options.

8. **Optimize the Program:**
   - Try performance optimizations, such as using the most efficient random number generation method available and reducing I/O operations when possible.
   - Measure performance using the following commands:
     - `time dd if=/dev/urandom ibs=8192 obs=8192 count=16384 >/dev/null`
     - `time ./randall 133562368 >/dev/null`
     - `time ./randall 133562368 | cat >/dev/null`
     - `time ./randall 133562368 >rand.data`
   - Record your timing results and any performance observations in `notes.txt`.

9. **Memory and Undefined Behavior Debugging:**
   - Use tools like `valgrind`, AddressSanitizer (`-fsanitize=address`), and Undefined Behavior Sanitizer (`-fsanitize=undefined`) to debug and identify memory or behavior issues.

10. **Final Steps:**
    - Once you're satisfied with the performance and organization of your code, create the final tarball by running `make submission-tarball`.
    - Create a second tarball for your private local Git repository using `make repository-tarball`.

---

### **Deliverables:**

1. **`randall-submission.tgz`**:
   - The tarball containing your refactored code, created by the command `make submission-tarball`.
   - Test the tarball by extracting it into a fresh directory and running `make check` to ensure everything works.

2. **`randall-git.tgz`**:
   - The gzipped tarball of your private local Git repository, created with `make repository-tarball`.
   - This tarball should contain the source files, commits, and configuration files tracked by Git.

---

### **Additional Notes:**

- **Refactoring:** Aim for clarity and maintainability in your code. Each module should serve a single responsibility and be easy to test independently.
- **Performance:** Focus on optimizing the random number generation and output to handle large amounts of data efficiently.
- **Testing:** Ensure that your program handles all edge cases, such as invalid options and errors in memory allocation or file handling.

---

### **Important Tools and Resources:**

- **`valgrind`:** Use it for memory leak detection and performance profiling.
- **`AddressSanitizer` and `UndefinedBehaviorSanitizer`:** Useful for detecting undefined behavior and memory issues.
- **`getopt`:** Helps in parsing command-line options.
- **`time`:** Useful for measuring the runtime of your program.

By following these steps and focusing on performance optimization, you will improve both the structure and the efficiency of the `randall` program while learning valuable low-level programming and debugging techniques.
