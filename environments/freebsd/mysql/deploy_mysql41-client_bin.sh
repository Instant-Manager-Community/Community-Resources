#!/usr/bin/env sh

# Extract shared libraries
cd /usr/local/lib32/ && tar -xvzf mysql-4.1.18-bin.tar.gz

# Add build entry to local ldconfig
echo '/usr/local/lib32/mysql41' >> /usr/local/libdata/ldconfig32/mysql41-client

# Add entry to ldconfig
ldconfig -32 -m /usr/local/libdata/ldconfig32/mysql41-client
