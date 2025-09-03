#!/bin/sh
set -eu

# Ensure PWA tweaks survive FlutterFlow exports

MANIFEST="web/manifest.json"
INDEX="web/index.html"

# 1) Force start_url to "/" in manifest
if [ -f "$MANIFEST" ]; then
  # Replace any current start_url value with "/"
  sed -E -i 's/"start_url"\s*:\s*"[^"]*"/"start_url": "\/"/' "$MANIFEST" || true
fi

# 2) Ensure iOS apple-touch-icon link exists
if [ -f "$INDEX" ]; then
  if ! grep -q 'rel="apple-touch-icon"' "$INDEX"; then
    # Insert before closing </head>
    awk '
      BEGIN { added=0 }
      /<\/head>/ && !added {
        print "  <link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"icons/Icon-192.png\">";
        added=1;
      }
      { print }
    ' "$INDEX" > "$INDEX.tmp" && mv "$INDEX.tmp" "$INDEX"
  fi
fi

echo "PWA patches applied (manifest start_url, apple-touch-icon)"

