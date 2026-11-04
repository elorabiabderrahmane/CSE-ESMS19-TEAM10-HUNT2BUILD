#!/usr/bin/env bash
# Downloads every Figma asset used by the page into ./assets
# NOTE: these Figma asset URLs are temporary (they expire ~7 days after being generated).
# If a download fails, re-export the asset from Figma (or ask Claude to regenerate the links).
set -e
cd "$(dirname "$0")"
mkdir -p assets
B="https://www.figma.com/api/mcp/asset"
get() { echo "-> assets/$1"; curl -fsSL "$B/$2" -o "assets/$1"; }

# Brand / raster
get logo-mark.png        40a2cbde-a7d7-4736-9df7-735d784441b7.png
get logo-name.png        43c816ad-cfa5-467e-bc5e-acb117b4afe9.png
get flag.png             ec9f5e81-03bc-4224-8304-d89ddcbbe03a.png
get ixe.png              68f5c9fd-55cc-4439-adad-c1b7a8eed8e2.png
get map.png              0f007fdb-24c6-4da4-88d2-2921cf4fbee4.png
get compass.png          df453555-d3f0-43bb-b631-8d592e2e2219.png
get ajala.png            7287d3b9-63de-4f63-8027-c0e824ce9025.png

# Hero rings
get ring-1.svg           2b24a20b-9006-47d2-9d63-107618ceaa32.svg
get ring-2.svg           dd7121f4-3698-4bab-a0b3-c5ffd6770383.svg
get ring-3.svg           d76f6512-a81b-41f2-b8bb-7b23cef70c1d.svg
get ring-4.svg           0dc1261a-ca1f-4621-ab7e-988e96561b60.svg
get ring-5.svg           482c5ec3-1e55-4c09-a6a6-69c5633eb336.svg
get ring-6.svg           6629875c-de24-4460-8e0c-6005eca3f1a9.svg
get ring-7.svg           d0ff1e1f-8527-4627-bb73-3229adfc6417.svg
get ring-8.svg           f7ebe0e1-0f2a-451b-a96c-88782060c302.svg
get ring-9.svg           3ff4c39d-1868-4248-8739-1e4e3bc320ce.svg

# Icons
get arrow-dark.svg       a3ab5b1f-c2aa-4543-9891-aa04a6212a13.svg
get arrow-light.svg      cc3a9b31-d35d-4566-9ee1-852348b7da99.svg
get icon-qr.svg          032d86d0-b2e9-4118-bcdd-1acfc89330de.svg
get icon-lock.svg        36dc3780-37ee-4ea6-8dd1-6b442fd80f7c.svg
get dot-open.svg         7a59231b-bd60-49c7-a639-9c59f5dcb5d2.svg
get dot-locked.svg       6caf77bf-8bcc-4e2f-81cf-2f6ace8a2f0a.svg
get step-map.svg         2e08b1b7-93fe-4739-adab-43eba0eb0213.svg
get step-unlock.svg      f635e9a5-1b62-4c3c-ac82-c805592f2eb4.svg
get step-code.svg        ace830ac-8141-4e1c-bd25-a03b5b90bf15.svg
get footer-badge.svg     61cdaf82-fe91-48d4-a60e-8d77eff736d0.svg
get facebook.svg         83d2b0f1-9921-4f54-a254-503840494de6.svg
get instagram.svg        9f7845ef-c012-4776-b986-cd1cbb28d765.svg
get linkedin.svg         f1045183-8252-41de-ad4d-bc3cd13819dd.svg
get youtube.svg          c2866984-b2ba-40d9-81e7-f080046f548c.svg
get twitter.svg          5aca5ec6-f714-4116-9037-5f1424a9715f.svg
echo "Done."
