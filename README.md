# organisation-tools

A collection of utility scripts designed to automate organizational and file management processes. This repository contains batch scripts and PowerShell scripts that help streamline common tasks related to file copying, renaming, and monitoring.

---

## Files Overview & Usage

### PowerShell Scripts (.ps1)

#### 1. **AUTOMATICALLY COPY SR AND SC IN RETURN COPIES FOLDER.ps1**
- **Purpose**: Automatically copies files with prefixes "SR" and "SC" to a designated return copies folder
- **Key Features**:
  - Monitors source folder (default: `X:\`) for files with "SR" or "SC" prefix
  - Copies matching files created today to destination folder (default: `Y:\RETURN COPIES`)
  - Runs continuously until 7:00 PM, checking every second
- **How to Use**:
  - Modify `$sourcePath` variable to your source folder location
  - Modify `$destinationPath` variable to your destination folder
  - Update `$endTime` variable if you need a different end time
  - Run the script in PowerShell with administrative privileges

---

#### 2. **copy supportings to reutrn copes at 6pm.ps1**
- **Purpose**: One-time copy operation to transfer supporting files with "SR" or "SC" prefix to return copies
- **Key Features**:
  - Copies files from source folder to destination folder (default: `Y:\RETURN COPIES`)
  - Only copies files created today with "SR" or "SC" prefix
  - Skips files that already exist in the destination to avoid duplicates
  - Non-recursive file search
- **How to Use**:
  - Update `$sourcePath` to your source folder location
  - Update `$destinationPath` to your destination folder
  - Run the script to perform the copy operation once
  - Suitable for scheduled task execution at 6:00 PM

---

#### 3. **new file added.ps1**
- **Purpose**: Monitors multiple folders and displays popup notifications when new files are added
- **Key Features**:
  - Monitors two folders simultaneously:
    - `Y:\Booth_return`
    - `Y:\Office_return`
  - Monitors subdirectories recursively
  - Displays Windows MessageBox popup for each new file creation
  - Logs file additions to console output
  - Runs continuously until manually stopped (Ctrl+C)
- **How to Use**:
  - Modify `$folder1` and `$folder2` to monitor your desired folders
  - Requires PowerShell with Windows Forms access
  - Run with administrative privileges for best results
  - Useful for real-time file activity monitoring

---

### Batch Scripts (.bat)

#### 4. **add in easysoft attachment.bat**
- **Purpose**: Creates multiple copies of a source file with different target filenames for EasySoft attachment processing
- **Key Features**:
  - Source file: `SM530638.msg` (located in `X:\` by default)
  - Creates 15 copies with predefined filenames (SM530644, SM530651, SM530646, etc.)
  - Supports both SM and SR prefixed filenames
  - Uses batch copy commands for bulk file duplication
- **How to Use**:
  - Update `source_folder` variable to your actual folder location
  - Modify the source file name (`SM530638.msg`) to your template file
  - Edit the target filenames in copy commands if needed
  - Run the batch file and press Enter when prompted
  - Useful for repetitive file duplication tasks in organizational workflows

---

#### 5. **creating new folder for jewelry and copy paste photo video and rename them.bat**
- **Purpose**: Creates folders and organizes jewelry-related photos and videos by item name
- **Key Features**:
  - Source location: `I:\PENDING PHOTO VIDEO JAMES\` (contains files starting with "TJ")
  - Destination: `I:\`
  - Creates a folder for each unique jewelry item
  - Automatically renames and copies:
    - MP4 files to `video.mp4`
    - JPG files to `1.jpg`
  - Uses file extensions to determine file type
- **How to Use**:
  - Place your jewelry media files in the source folder with "TJ" prefix
  - Update `source_folder` and `destination_folder` paths as needed
  - Run the batch file
  - Each item will get its own folder with organized media files
  - Example: `TJ12345.jpg` and `TJ12345.mp4` → creates folder `I:\TJ12345\` with `1.jpg` and `video.mp4`

---

#### 6. **remove _ from file and keep jewelry name.bat**
- **Purpose**: Removes underscore suffixes from filenames and keeps only the jewelry item name
- **Key Features**:
  - Target folder: `I:\PENDING PHOTO VIDEO JAMES`
  - Removes underscores and everything after the first underscore in filenames
  - Preserves file extensions (.jpg, .mp4)
  - Only processes JPG and MP4 files
- **How to Use**:
  - Place files with underscore patterns in the target folder
  - Example: `TJ12345_photo.jpg` → renamed to `TJ12345.jpg`
  - Run the batch file
  - All matched files will be automatically renamed
  - Useful for cleaning up filenames with unwanted suffix patterns

---

#### 7. **rename office returnd prefix D.bat**
- **Purpose**: Adds a "D" prefix to all files in a folder that don't already have it
- **Key Features**:
  - Target folder: `Y:\Booth_return\2024_11_05_10_11_21` (example date-based folder)
  - Adds prefix "D" to all files without this prefix
  - Preserves original file extensions
  - Non-recursive operation (processes only files in specified folder)
- **How to Use**:
  - Update `source` variable to your target folder path
  - Update `prefix` variable if you want a different prefix (default: "D")
  - Run the batch file
  - All files without the prefix will be renamed
  - Useful for adding prefixes to office return files for identification

---

### Excel Files (.xlsm)

#### 8. **same photos videos in different items.xlsm**
- **Purpose**: Excel macro-enabled workbook that automates copying files from source to destination based on file paths listed in the spreadsheet
- **Key Features**:
  - Contains VBA macro functionality
  - Allows users to specify source and destination folder paths
  - Bulk copies multiple files based on entries in the workbook
  - Customizable source and destination paths
- **How to Use**:
  - Open the Excel file with macros enabled
  - Configure source folder path in the workbook
  - Configure destination folder path in the workbook
  - List the files you want to copy (or they may be auto-populated)
  - Run the macro to copy all specified files
  - Ideal for scenarios where the same media files need to be copied to multiple different item folders

---

## Getting Started

1. **Clone or Download** this repository to your local machine
2. **Review the scripts** that match your organizational needs
3. **Update file paths** in scripts to match your actual folder structure
4. **Test scripts** in a safe environment before using in production
5. **Run with appropriate permissions** (administrator privileges recommended for PowerShell scripts)

---

## Requirements

- **Windows Operating System** (scripts use Windows-specific commands)
- **PowerShell** (for .ps1 files) - PowerShell 3.0 or higher recommended
- **Command Prompt/Batch Processing** (for .bat files) - built-in to Windows
- **Microsoft Excel** (for .xlsm file) - with macros enabled
- **Administrator Privileges** - recommended for file operations

---

## Safety Recommendations

- Always test scripts on a small subset of files first
- Create backups before running bulk copy/rename operations
- Review file paths carefully before executing
- Run scripts during non-critical business hours
- Consider scheduling recurring tasks using Windows Task Scheduler

---

## Notes

- All file paths in scripts use drive letters (X:\, Y:\, I:\, etc.) - modify these according to your system
- Some scripts are designed for specific organizational processes (jewelry items, office returns, booth management)
- Scripts may reference item prefixes (SR, SC, TJ, etc.) specific to your workflow - customize as needed
- For scheduled automation, consider using Windows Task Scheduler to run PowerShell or batch scripts at specific times

---

## License

No license specified. These are organizational utility scripts.

---

**Last Updated**: August 25, 2026
