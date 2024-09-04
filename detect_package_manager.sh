#!/bin/bash

check_package_manager() {
    if command -v apt &> /dev/null; then
        echo "APT (Advanced Package Tool)"
    elif command -v yum &> /dev/null; then
        echo "YUM (Yellowdog Updater, Modified)"
    elif command -v dnf &> /dev/null; then
        echo "DNF (Dandified Yum)"
    elif command -v pacman &> /dev/null; then
        echo "Pacman (Package Manager)"
    elif command -v zypper &> /dev/null; then
        echo "Zypper"
    elif command -v apk &> /dev/null; then
        echo "APK (Alpine Package Keeper)"
    elif command -v pkg &> /dev/null; then
        echo "PKG (FreeBSD Package Manager)"
    else
        echo "Package manager not detected"
    fi
}

check_python_package_manager() {
    echo "Checking Python package managers..."
    if command -v pip &> /dev/null; then
        echo "PIP (Python Package Installer) detected"
    elif command -v pip3 &> /dev/null; then
        echo "PIP3 (Python3 Package Installer) detected"
    elif command -v conda &> /dev/null; then
        echo "Conda detected"
    else
        echo "No Python package manager detected"
    fi
}

check_package_manager
check_python_package_manager
