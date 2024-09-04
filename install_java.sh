#!/bin/bash

# Update package list and install the latest Java version
sudo apt update
sudo apt install -y openjdk-11-jdk

# Check Java installation
#!/bin/bash

# Update package list and install the latest Java version
sudo apt update
sudo apt install -y openjdk-11-jdk

# Confirm Java installation and check the version
check_java_version() {
    if java -version &> /dev/null; then
        full_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
        java_version=$(echo $full_version | awk -F[\".] '{print $1}')
        if (( java_version < 11 )); then
            echo "An older Java version is installed (version $full_version)."
        else
            echo "Java version $full_version (11 or higher) was successfully installed."
        fi
    else
        echo "Java is not installed."
    fi
}

check_java_version
