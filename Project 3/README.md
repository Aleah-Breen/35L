### Assignment 3: Chorus Lapilli

---

**Objective:**  
This assignment requires building a simple interactive game app using React. You will first complete a basic tutorial to create a tic-tac-toe game, then expand on your experience to build a variant of the ancient Roman game "terni lapilli," which we'll call "chorus lapilli."

---

**Steps Overview:**

1. **Complete the React Hello World Tutorial:**
   - Familiarize yourself with React basics, setting up a local development environment, and the foundational components of a React app. 
   - Build the simple "tic-tac-toe" game using React.

2. **Document your Development Process:**
   - Keep a detailed log in a file named `tic-tac-toe.txt` for each significant step, action, and configuration made while building the app.
   - Log should not be a direct transcript of what you typed but a summary of key actions, including installing dependencies, writing code, and debugging.

3. **Create the Chorus Lapilli Game:**
   - Build a React app for the "chorus lapilli" game, which is a variant of tic-tac-toe. The rules are as follows:
     - Players alternate placing pieces on a 3x3 board.
     - After the first three moves, players move existing pieces to adjacent empty squares.
     - If a player has pieces on the board and one is in the center, the move must either win the game or vacate the center square.
     - The game is won when a player places three of their pieces in a row (horizontally, vertically, or diagonally).
   
4. **Test Harness:**
   - Extend the simple test harness for the game, ensuring it includes at least three tests (e.g., checking for an empty board on refresh, ensuring moves are placed correctly, and preventing further moves after a win).
   - Include a test to check if the app properly prevents further moves once a player wins.

5. **Record Development in `chorus-lapilli.txt`:**
   - Document each step you take to build the chorus lapilli app. This log should be detailed enough that someone else could follow it to recreate the game.

6. **Prepare for Submission:**
   - Once the app is working, create a tarball (compressed archive) of the project using `npm pack`.
   - Ensure you run `npm pack --dry-run` before creating the actual tarball, and document the output in the log.

7. **Submit Files:**
   - Submit the following files:
     - `tic-tac-toe.txt`: Your development log for the tic-tac-toe app.
     - `chorus-lapilli.txt`: Your development log for the chorus lapilli app.
     - `chorus-lapilli.tgz`: The tarball of your app.

**Important Notes:**
- Ensure that all text files are in ASCII format without carriage returns.
- The provided command `awk '/\r/' tic-tac-toe.txt chorus-lapilli.txt` should not output any lines if the files are correctly formatted.

---

**Tools & Technologies:**
- **React:** JavaScript library for building the user interface.
- **JavaScript/JSX:** React uses JSX, a syntax extension for JavaScript that looks similar to HTML.
- **Node.js/npm:** For managing dependencies and packaging the app.
- **Python 3/Selenium:** For running the provided test harness.
- **Dev Tools:** Chrome/Firefox Developer Tools for debugging.

---

**Extra Credit/Bonus Points:**
- Implement additional game rules or features for the chorus lapilli game.
- Optimize the user interface for better experience.
- Use additional React hooks or state management libraries.

---

By following these steps, you will have learned how to:
- Build an interactive app with React.
- Test and document your work effectively.
- Create a complete React-based game with custom rules and functionalities.
