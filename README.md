# 📊 PowerShell Tally Counter (Strichliste)
A lightweight, GUI-based tally counter built with PowerShell and WinForms. This tool is designed to run in restricted environments where third-party software installation is not permitted.

🌟 Key Features
Persistent Storage: Automatically saves the current count to a strichliste.txt file in the script directory.

Session Continuity: Loads your previous count upon startup.

Simple GUI: Features a clean interface with "Always on Top" functionality for easy access while working in other apps.

Native Compatibility: Runs on any standard Windows machine using built-in PowerShell libraries.

🛠️ How It Works
The script utilizes the System.Windows.Forms assembly to render a window. It manages data through simple IO operations:

Read: Checks for an existing .txt file to fetch the last known integer.

Display: Updates a bold Arial label in real-time.

Write: Every click on +1 or Reset immediately updates the local text file to prevent data loss.

🚀 How to Run
Since this script requires no installation, you can run it directly:

Right-click Strichliste.ps1.

Select Run with PowerShell.

(Optional) Create a desktop shortcut to the script for quick access.

💡 Why This Project?
This tool was developed as part of my "Native Automation" initiative. It demonstrates how to:

Build User Interfaces (UI) using only built-in Windows components.

Handle file-based data persistence.

Provide a practical solution for team members who need to track repetitive tasks manually.

🤝 Collaborative Note
I am always looking for ways to improve these types of utility scripts. If you have ideas for adding features (like a "-1" button or multiple counters), feel free to reach out. I value feedback and different perspectives on how to make these tools more intuitive for everyone!
