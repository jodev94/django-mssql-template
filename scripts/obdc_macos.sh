#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [version(17,18)]"
    exit 1
fi

if [ "$1" -eq 17 ]; then
    echo "Installing msobdc 17"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
    brew update
    HOMEBREW_ACCEPT_EULA=Y brew install msodbcsql17 mssql-tools
elif [ "$1" -eq 18 ]; then
    echo "Installing msobdc 18"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
    brew update
    HOMEBREW_ACCEPT_EULA=Y brew install msodbcsql18 mssql-tools18
else
    echo "Invalid version"
fi

