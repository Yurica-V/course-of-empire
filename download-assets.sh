#!/bin/bash
# Download all 56 assets from the CDN to public/
# Run from the project root: bash download-assets.sh

set -e
cd "$(dirname "$0")"

B=https://assets.uberdesigner.ai/course-of-empire
for f in \
  assets/audio/night.m4a \
  assets/audio/noon.m4a \
  assets/audio/storm.m4a \
  assets/film/ch1-3d-720.bin \
  assets/film/ch1-3d-hd.bin \
  assets/film/ch2-3d-720.bin \
  assets/film/ch2-3d-hd.bin \
  assets/film/ch3-3d-720.bin \
  assets/film/ch3-3d-hd.bin \
  assets/fonts/cormorant-unicase-latin-400-normal.woff2 \
  assets/fonts/cormorant-unicase-latin-500-normal.woff2 \
  assets/fonts/cormorant-unicase.LICENSE.txt \
  assets/fonts/geist-latin-300-normal.woff2 \
  assets/fonts/geist-latin-400-normal.woff2 \
  assets/fonts/geist-latin-500-normal.woff2 \
  assets/fonts/geist-mono-latin-200-normal.woff2 \
  assets/fonts/geist-mono-latin-300-normal.woff2 \
  assets/fonts/geist-mono-latin-400-normal.woff2 \
  assets/fonts/geist.LICENSE.txt \
  assets/frames/01.webp \
  assets/frames/02.webp \
  assets/frames/03.webp \
  assets/frames/04.webp \
  assets/frames/05.webp \
  assets/frames/06.webp \
  assets/frames/07.webp \
  assets/frames/08.webp \
  assets/frames/09.webp \
  assets/frames/10.webp \
  assets/frames/11.webp \
  assets/frames/12.webp \
  assets/frames/13.webp \
  assets/hall/bust-normal.webp \
  assets/hall/bust.bin \
  assets/hall/bust.webp \
  assets/hall/floor.webp \
  assets/hall/frame-arm.webp \
  assets/hall/frame-normal.webp \
  assets/hall/frame.webp \
  assets/hall/marble.webp \
  assets/hall/painting-desolation.webp \
  assets/hall/painting.webp \
  assets/hall/plaster.webp \
  assets/hall/plate-floor-base.webp \
  assets/hall/plate-ruin.webp \
  assets/hall/plate.webp \
  assets/og.jpg \
  assets/paintings/consummation-thumb.webp \
  assets/paintings/consummation.webp \
  assets/paintings/desolation-thumb.webp \
  assets/paintings/desolation.webp \
  assets/paintings/destruction-thumb.webp \
  assets/paintings/destruction.webp \
  assets/ui/cursor-cross.svg \
  js/vendor/three.LICENSE.txt \
  js/vendor/three.module.min.js
do
  mkdir -p "public/$(dirname "$f")"
  echo "Downloading $f..."
  curl -fsSL "$B/$f" -o "public/$f"
done

echo ""
echo "All 56 assets downloaded."
