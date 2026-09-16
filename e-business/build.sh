#!/bin/bash
# Dung lai toan bo HTML + DOCX tu cac file .md
set -e
FILES="00-MUC-LUC TL3-Giai-de-that-2024-2025 TL1-C1-Tong-quan-E-business TL1-C2-Chien-luoc-E-business TL1-C3-Cong-nghe-cho-E-business TL1-C4-Xac-dinh-va-trien-khai TL1-C5-Nghien-cuu-duong-dai TL2-Ngan-hang-cau-hoi TL2b-De-thi-mau"

for f in $FILES; do
  pandoc "$f.md" -s --toc --toc-depth=3 -c style.css \
    --metadata title="E-Business — Ôn thi cuối kỳ" -o "$f.html"
  pandoc "$f.md" -o "$f.docx" 2>/dev/null || echo "  [bo qua] $f.docx dang bi khoa (co the dang mo trong Word)"
done

# Gop toan bo thanh mot ban in
pandoc $(for f in $FILES; do echo "$f.md"; done) -s --toc --toc-depth=2 -c style.css \
  --metadata title="E-BUSINESS — TOÀN BỘ TÀI LIỆU ÔN THI" -o TOAN-BO.html

# Link noi bo trong ban HTML phai tro sang .html, khong phai .md
# (GitHub Pages tra .md ve dang text tho, trinh duyet khong render)
sed -i -E 's/href="([^"]+)\.md"/href="\1.html"/g' *.html

cp 00-MUC-LUC.html index.html
echo "Build xong: $(ls *.html | wc -l) file HTML, $(ls *.docx | wc -l) file DOCX"
