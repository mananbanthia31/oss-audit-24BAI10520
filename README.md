# The Open Source Audit: Python

**Student Name:** Manan Pandey<br>
**Registration Number:** 24BAI10033 <br>
**Project Focus:** Python (FOSS Audit)

## Project Overview

This repository contains a suite of 5 Bash shell scripts designed for a university capstone project to audit Python environments on Linux systems. These scripts automate system identification, package inspection, directory auditing, log analysis, and manifesto generation.

## Script Descriptions

### 1. 01 system_identity.sh

**Goal:** System Identity Report. Provides a comprehensive overview of the host system, including the Linux distribution, kernel version, current user, home directory, system uptime, and an open-source license message.

### 2. 02 package_instector.sh

**Goal:** FOSS Package Inspector. Detects if Python (and associated package managers like pip) is installed, identifies the system's underlying package manager, and provides philosophy notes about common FOSS tools.

### 3. 03 disk_auditor.sh

**Goal:** Disk and Permission Auditor. Loops through critical system and Python-specific directories (such as library paths, site-packages, or virtual environments), reporting their size, ownership, and file permissions.

### 4. 04 log_analyzer.sh

**Goal:** Log File Analyzer. Analyzes Python application log files or related system logs by searching for specified keywords (like ERROR, Traceback, or Warning), counting occurrences, and displaying the last 5 matching entries.

### 5. 05 manifesto.sh

**Goal:** Open Source Manifesto Generator. An interactive script that crafts a personalized open-source manifesto based on user input and saves it to a text file.

---

## Instructions for Use
```bash
chmod +x *.sh
./system_identity.sh
./package_instector.sh
./disk_auditor.sh
./log_analyzer.sh
./manifesto.sh
```
