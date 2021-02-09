#!/bin/bash

set -e -u
shopt -s globstar

for f in **/*.html; do
  cat >"$f" <<EOF
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="refresh" content="1;url=$1/$f">
    <script type="text/javascript">
        window.location.href = "$1/$f";
    </script>
</head>
<body>
    <a href="$1/$f">Redirecting...</a>
</body>
</html>
EOF
done
