#!/bin/bash
# Script 1: System Identity Report
# Author: ruchicha_bharti
# Course: Open Source Software (OSS NGMC)
# Purpose: Displays system metadata and licensing info as per Capstone requirements.

# --- Variables (Requirement: variables)
STUDENT_NAME="ruchicha bharti"
SOFTWARE_CHOICE="Python"

# --- System info gathering (Requirement: command substitution $())
# I used uname and hostnamectl to fetch the kernel and distro details
KERNEL_VER=$(uname -r)
USER_NAME=$(whoami)
UPTIME_VAL=$(uptime -p)
# Extracting the Operating System line from hostnamectl
DISTRO_NAME=$(hostnamectl | grep "Operating System" | cut -d ':' -f2)
CURRENT_TIME=$(date "+%Y-%m-%d %H:%M:%S")

# --- Display Output (Requirement: echo and basic formatting)
echo "======================================================"
echo "          OSS CAPSTONE: SYSTEM IDENTITY REPORT        "
echo "======================================================"
echo "Student Name    : $STUDENT_NAME"
echo "Project Subject : $SOFTWARE_CHOICE"
echo "------------------------------------------------------"
echo "Current User    : $USER_NAME"
echo "Linux Distro    : $DISTRO_NAME"
echo "Kernel Version  : $KERNEL_VER"
echo "System Uptime   : $UPTIME_VAL"
echo "Report Gen Time : $CURRENT_TIME"
echo "------------------------------------------------------"
echo "PHILSOPHY NOTE: This system is built on the values of"
echo "sharing and transparency. Python is distributed under"
echo "the PSF License, granting all four FOSS freedoms."
echo "======================================================"
