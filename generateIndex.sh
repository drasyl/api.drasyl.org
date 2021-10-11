#!/bin/sh
#
# Copyright (c) 2020-2021 Heiko Bornholdt and Kevin Röbert
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
# OR OTHER DEALINGS IN THE SOFTWARE.
#
LATEST_FOLDER=$(find . -maxdepth 1 -mindepth 1 -type d -exec basename {}  \; | sort --version-sort | tail -1)

touch index.html
cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
  <title>drasyl JavaDoc – You will be redirected...</title>
  <meta http-equiv="refresh" content="0; URL=https://api.drasyl.org/5.0" />
</head>
<body>
  <p>If you are not redirected, <a href="https://api.drasyl.org/5.0">click here</a>.</p>
</body>
</html>
EOF