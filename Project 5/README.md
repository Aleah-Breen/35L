### README for Assignment 5: Git Repository Organization

---

**Objective:**  
This assignment involves building a Python script to perform a topological sort of the commits in a Git repository, representing the commit history as a directed acyclic graph (DAG). The task is to output commits in topologically ordered fashion while adhering to specific formatting rules, like including parent-child relationships in "sticky start" and "sticky end" lines.

---

### **Steps to Implement `topo_order_commits.py`:**

1. **Discover the `.git` Directory:**
   - The script should locate the root of the Git repository by searching for the `.git` directory. This search should ascend through parent directories.
   - If `.git` is not found by the time the root directory is reached, the script should print: `Not inside a Git repository` and exit with status 1.

2. **Get the List of Local Branch Names:**
   - Extract the names of all local branches in the repository.
   - Understand the contents of the `.git` directory, focusing on `refs` and `objects`. The objects directory holds commit objects, and the refs directory contains references to commit heads, including those for branches.

3. **Build the Commit Graph:**
   - Define a `CommitNode` class representing each commit:
     ```python
     class CommitNode:
         def __init__(self, commit_hash):
             self.commit_hash = commit_hash
             self.parents = set()
             self.children = set()
     ```
   - Traverse the Git repository using a depth-first search (DFS) to build the graph:
     - For each branch, traverse the commit history from the branch head and establish parent-child relationships between commits.
     - Leaf commits (those without parents) are the root commits for the branch.

4. **Generate Topological Ordering:**
   - Use DFS to generate a topological sort of the commits. In topological sorting, all descendants of a commit must appear before that commit in the ordering.
   - Print the commit hashes in topologically ordered fashion. Insert "sticky end" and "sticky start" lines to show parent-child relationships when transitions occur between commits.
   - For a commit with multiple parents, the "sticky end" line will list the parent hashes with an equal sign (`=`) at the end.

5. **Formatting Output:**
   - For each commit in the topological order:
     - Print the commit hash, followed by the branch names (if any).
     - When moving to a new segment (i.e., when printing a commit not directly related to the previous one), print a "sticky end" line with the current commit's parents.
     - When starting a new segment, print a "sticky start" line showing the children of the new commit.
     - If the commit corresponds to a branch head, include the branch names after the commit hash, sorted lexicographically.

---

### **Example Outputs:**

1. **Example 1:**
   - For the commits where `c3` is a child of `c1`, and `c5` is a child of `c4`, the valid topological order could be:
     ```
     h5 branch-3
     h4 branch-2 branch-5
     h3
     h1=

     =
     h2 branch-1
     h1
     h0
     ```

2. **Example 2:**
   - For commits where `c6` is a merge commit with parents `c2` and `c4`, the output would be:
     ```
     h6 branch-1
     h2
     h1=

     =h6
     h4
     h3
     h1
     h0
     ```

---

### **Implementation Guidelines:**

1. **Do Not Invoke External Commands:**
   - The script should not invoke any external Git commands (e.g., via `subprocess`). Everything should be handled by reading and processing files directly from the `.git` directory.
   - You can use `zlib` to decompress Git objects and read commit information.

2. **Deterministic Output:**
   - Ensure that the script generates deterministic output, meaning the output should be identical for a given repository on every run. Sorting functions like Python's `sorted()` can help ensure this.

3. **Adhere to Python Style:**
   - Follow the PEP 8 style guide, particularly using snake_case for variable and function names.
   
4. **Use Standard Python Libraries:**
   - Only use `os`, `sys`, and `zlib` for file system access and object decompression.

---

### **Testing:**

- Use the provided test suite to verify correctness.
- **Tip:** Run `strace -f` to ensure no external commands like `git` are being invoked.

---

### **Submission:**

Submit the following file:
- `topo_order_commits.py`

**Commentary:**  
- Add comments in the script explaining your logic, especially how you used `strace` to verify that your implementation does not invoke external commands.

---

This assignment challenges you to explore Git's internal structure and learn to work with commit histories programmatically using Python. By completing this task, you will gain a deeper understanding of Git's internals and how to interact with them without relying on external tools.
