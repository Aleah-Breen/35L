**Project Description: Files and Shell Scripting**

### **Overview**
This project focuses on developing expertise in two essential areas: POSIX-compatible shell scripting and Emacs, a powerful programmable text editor. By working through a series of hands-on exercises on SEASnet GNU/Linux servers, students will build a strong foundation in file manipulation, text editing, and shell scripting techniques.

### **Objectives**
- Gain familiarity with the Emacs text editor, including navigation, editing, and command execution.
- Learn to efficiently manipulate files using shell commands.
- Understand search, replace, and text-processing techniques within Emacs.
- Develop proficiency in shell scripting, including I/O redirection and pipelines.
- Implement a basic English spelling checker using shell scripting.

### **Environment Setup**
- Work on SEASnet GNU/Linux servers: lnxsrv11, lnxsrv13, or lnxsrv15.
- Set up the environment by executing: `export PATH=/usr/local/cs/bin:$PATH`.
- Ensure that Emacs version 29.4 is installed and accessible.

### **Laboratory Exercises**

#### **Lab 1.0: Getting Started with GNU/Linux and Emacs**
- Log into SEASnet and configure the environment.
- Verify Emacs installation and take the built-in tutorial.
- Enable dribble file recording for tracking inputs.

#### **Lab 1.1: Moving Around in Emacs**
- Download and copy an HTML file for practice.
- Utilize search functions to locate specific words and positions.
- Develop efficient cursor navigation techniques.

#### **Lab 1.2: Deleting Text in Emacs**
- Edit an HTML file to remove specific comments.
- Use minimal keystrokes to accomplish deletion tasks.
- Verify changes using `diff` to compare versions.

#### **Lab 1.3: Inserting and Modifying Text in Emacs**
- Modify HTML text systematically.
- Convert Unicode characters to ASCII.
- Use regular expressions to identify non-ASCII characters.

#### **Lab 1.4: Advanced Editing Tasks**
- Perform copy-pasting and structured modifications.
- Transform `diff` output into valid HTML comments.
- Automate replacements and verify results.

#### **Lab 1.5: Exploring the Operating System**
- Locate system commands and their paths.
- Investigate executable files and symbolic links.
- Identify system details using shell commands.

#### **Lab 1.6: Running Commands in Emacs**
- Create and compile a simple C program.
- Execute the program with various I/O configurations.
- Capture output and error streams into files.

### **Shell Scripting Homework**
#### **Understanding Shell Commands**
- Study the behavior of `tr`, `sort`, and `comm`.
- Analyze output differences across command sequences.

#### **Implementing a Basic Spell Checker**
- Use `tr` and `sort` to preprocess word lists.
- Compare text against a dictionary.
- Develop a shell script `myspell` to identify misspelled words.
- Ensure correct behavior using `/usr/share/dict/linux.words`.

### **Deliverables**
1. Dribble files (`lab1.drib`, `lab2.drib`, etc.) documenting Emacs interactions.
2. Modified HTML files (`exer1.html`, `exer2.html`, etc.) demonstrating text processing skills.
3. `diff` output files to verify correctness of modifications.
4. A compiled and tested C program (`hello.c`).
5. Shell script `myspell` with verified functionality.

### **Evaluation Criteria**
- Correctness and completeness of required modifications.
- Efficient use of Emacs and shell commands.
- Proper implementation of the spell checker script.
- Adherence to best practices in scripting and text editing.

This project serves as an essential introduction to shell scripting and text processing in a Linux environment, providing a strong foundation for more advanced topics in software development and automation.

