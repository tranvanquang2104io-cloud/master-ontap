# Master Ôn Tập

Tủ tài liệu ôn thi. Mỗi môn là một thư mục ở gốc repo, mở được trực tiếp trên trình duyệt qua GitHub Pages.

**Trang chủ:** https://tranvanquang2104io-cloud.github.io/master-ontap/

## Các môn hiện có

| Môn | Mã | Nội dung | Đường dẫn |
|---|---|---|---|
| Xây dựng hệ thống phần mềm di động | CS 4153 | 13 chương tiếng Việt + 255 câu trắc nghiệm + chế độ thi thử 60 câu / 65 phút | [`/mobile`](./mobile/) |
| E-Business | IS6101.CH201 | 5 chương giáo trình + ngân hàng câu hỏi + đề thi mẫu (kèm bản `.docx` để in) | [`/e-business`](./e-business/) |

## Cấu trúc

```
/
├── index.html          trang chủ, liệt kê các môn
├── mobile/
│   └── index.html      tài liệu + ngân hàng câu hỏi + thi thử (một file, chạy offline)
└── e-business/
    ├── index.html      mục lục môn
    ├── TL1-C*.html     giáo trình từng chương
    ├── TL2-*.html      ngân hàng câu hỏi, đề thi mẫu
    ├── *.md / *.docx   bản nguồn và bản để in
    └── assets/         hình minh hoạ
```

## Thêm một môn mới

1. Tạo thư mục mới ở gốc repo, ví dụ `bigdata/`.
2. Đặt trang chính của môn đó tên `index.html` trong thư mục vừa tạo.
3. Mở `index.html` ở gốc, sao chép một khối `<a class="card">` và sửa lại tên môn, mã môn, mô tả và `href`.

Không cần cấu hình build — repo là HTML tĩnh, GitHub Pages phục vụ thẳng từ nhánh `main`. File `.nojekyll` ở gốc để Jekyll không bỏ qua thư mục nào.

## Ghi chú

Đây là tài liệu ôn tập cá nhân, soạn lại từ slide và giáo trình của giảng viên, **không thay thế bài giảng gốc**.
