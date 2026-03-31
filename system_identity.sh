#!/bin/bash
# Script 1: System Identity Report
# Author: Manan Banthia | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Manan Banthia"         # Fill in your name
SOFTWARE_CHOICE="Python"            # Fill in your chosen software

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# --- Additional System Info (TODOs) ---
# Grabs the specific Linux distribution name from the os-release file
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d '"' -f 2)

# Grabs the home directory
HOME_DIR=$HOME

# Grabs current date and time
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S %Z")

# The license that covers the Linux OS kernel
OS_LICENSE="GNU General Public License (GPL)"

# --- Display ---
echo "=========================================="
echo "   Open Source Audit - $STUDENT_NAME"
echo "=========================================="
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "------------------------------------------"
echo "The underlying Linux OS is distributed under the $OS_LICENSE."
echo "The chosen software, $SOFTWARE_CHOICE, is under the PSF License."
echo "=========================================="
