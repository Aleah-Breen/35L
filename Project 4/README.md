### Assignment 4: Basic Change Management

---

**Objective:**  
This assignment involves working with Git to explore and manage version control in a project repository. You will use various Git commands and scripting (in shell or Python) to gather information about commits, track changes, and investigate historical versions in the Time Zone Database (tzdb) and Git's own source code repository.

---

### **Laboratory A: Exploring a Linear Development History**

1. **Compute the Difference Between Commits:**
   - Use GitHub from a browser to compute and save the difference between the previous and current commit in the tzdb repository.
     - **Save to file:** `prevcur.html`
   
2. **Compute the Difference Between Two Releases:**
   - Use GitHub to compute and save the difference between the `2023d` and `2024a` releases of tzdb.
     - **Save to file:** `2023d-2024a.html`
   
3. **Clone the tzdb Repository:**
   - Clone the tzdb development repository in Git format.
   - **Write a script** (`justone`) to display the difference between the previous and current commit using Git.
     - Run it on the cloned repository and save the output to `justone.out`.
   
4. **Create a Script for Comparing Releases:**
   - Write a shell or Python script (`compare-releases`) to display the difference between two tzdb releases.
     - Example: `compare-releases 2023d 2024a`
     - Save output for the above example to `2023d-2024a.diff`.
   
5. **Count Commits from Each Time Zone:**
   - Write a script (`tzcount`) to accept a revision range and output a report of time zones and the number of commits from each time zone in that range.
     - Example: `./tzcount 2012j..2024a` using the tzdb repository.
     - Save the output to `tzdb-2012j-2024a.tzcount`.

6. **Investigate the Infringement Claim:**
   - Investigate a copyright infringement claim regarding a statement in the tzdb files using Git and other commands.
   - Create a text file `who-contributed.txt` documenting the commands you used and the results of your investigation.
   
---

### **Laboratory B: Exploring Nonlinear Development Histories**

1. **Examine the Git Repository:**
   - Examine the copy of Git’s own git repository and find the merge point at commit `c03bee6e9f5c05259f5f501e1f47cd8adb63af38` (committed 2022-10-02).
   - Draw a directed graph of all paths to this merge point from commit `2a7d63a2453e2c30353342a2c9385fa22a846987` (committed 2022-09-26).
     - Label each node in the graph with the commit ID, author, and committer if different.
     - Include all intervening commits, with arcs from child to parent.
     - **Submit:** PDF file `git-graph.pdf`.

2. **Clone Git’s Git Repository:**
   - Clone Git's repository from GitHub and compare it with the one found on SEASnet.
     - Document differences in a text file `git.txt`.

3. **Investigate Git v2.39 Release Notes:**
   - Investigate the Git v2.39 release notes (2022-12-12) and find the code changes that fixed a segfault issue with the `git merge-tree` command.
   - Describe the relevant changes and provide the commit IDs for these fixes in `git-detective.txt`.
   - Generate patch files for the relevant changes in Git's `format-patch` format.
   
---

### **Submission Requirements**

You will need to submit the following files:

#### **To be included in a compressed tarball (`gitlabs.tgz`):**
- `prevcur.html` – Web page with the difference between the previous and current commit.
- `2023d-2024a.html` – Web page with the difference between releases `2023d` and `2024a`.
- `justone` – Shell or Python script for displaying the difference from the previous and current commit.
- `justone.out` – Output from running `justone` on the cloned tzdb repository.
- `compare-releases` – Shell or Python script to compare two releases.
- `2023d-2024a.diff` – Output of the comparison between releases `2023d` and `2024a`.
- `tzcount` – Script to count commits from each time zone.
- `tzdb-2012j-2024a.tzcount` – Output of the `tzcount` command for the range `2012j..2024a`.

#### **Direct submission without tarball:**
- `who-contributed.txt` – Infringement investigation report.
- `git.txt` – Descriptions of differences between your clone of Git's repository and the one on SEASnet.
- `git-graph.pdf` – Diagram of commit history up to the merge point `M`.
- `git-detective.txt` – Investigation into the Git v2.39 segfault issue, with commit IDs and patch files.

---

### **Tools & Technologies:**
- **Git:** Distributed version control system.
- **Shell/Python Scripting:** To automate the comparison and reporting tasks.
- **GitHub:** For exploring repositories and releases via the browser.
- **PDF/Graphing Tools:** For creating commit history graphs.

---

This assignment aims to help you develop a strong understanding of Git's capabilities in version control, tracking changes, and investigating project histories. By completing these tasks, you will be more comfortable working with complex Git workflows and commands.
