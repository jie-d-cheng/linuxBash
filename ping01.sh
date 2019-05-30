#!/bin/bash
ping -c1 10.20.3.1 &>/dev/null && echo "10.20.3.1 is up" ||echo "10.20.3.1 is down"

# 如果EOF开始的时候前面没有 -， 那么EOF结束时前面就不能有tab缩进, 但是有-，依然不能有空格.
/usr/bin/python3 <<-EOF
print("Hello World From python3...")
EOF

echo "Hello World From Bash..."
