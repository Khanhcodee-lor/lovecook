# 🍳 Love Cook - Mạng Xã Hội Ẩm Thực

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/firebase-%23039BE5.svg?style=for-the-badge&logo=firebase)
![Riverpod](https://img.shields.io/badge/State_Management-Riverpod-purple?style=for-the-badge)

> **Love Cook** là nền tảng kết nối những người đam mê nấu nướng, nơi mọi người có thể chia sẻ công thức, học hỏi bí quyết và giao lưu với nhau qua mạng xã hội thu nhỏ dành riêng cho ẩm thực.

---

## 🌟 Tổng quan dự án

Dự án được xây dựng nhằm tạo ra một cộng đồng **Eat & Share** lành mạnh. Ứng dụng giúp người dùng dễ dàng lưu trữ công thức cá nhân, tìm kiếm món ngon mỗi ngày và tương tác trực tiếp với các đầu bếp tại gia khác.

Mục tiêu là mang lại trải nghiệm mượt mà, giao diện đẹp mắt và tính năng hữu ích cho người yêu bếp.

## ✨ Các tính năng chính

| Tính năng | Mô tả chi tiết |
| :--- | :--- |
| **📰 Bảng tin (Newsfeed)** | Lướt xem các công thức mới nhất, món ngon đang thịnh hành (Trending) từ cộng đồng. |
| **📝 Chia sẻ (Create Recipe)** | Công cụ đăng bài trực quan, hỗ trợ tải ảnh món ăn, nhập nguyên liệu và các bước thực hiện chi tiết. |
| **❤️ Tương tác (Social)** | Thả tim (Like), bình luận (Comment) và lưu lại (Bookmark) các món ăn yêu thích. |
| **💬 Trò chuyện (Chat)** | Nhắn tin trực tiếp 1-1 (Real-time) với tác giả món ăn để hỏi kinh nghiệm nấu nướng. |
| **🔍 Tìm kiếm (Search)** | Tìm món ăn thông minh theo tên, nguyên liệu hoặc hashtag. |
| **👨‍🍳 Hồ sơ (Profile)** | Trang cá nhân hiển thị danh sách các món đã đăng, số người theo dõi và thông tin giới thiệu. |

## 🛠 Công nghệ sử dụng

Dự án áp dụng các công nghệ và tiêu chuẩn lập trình hiện đại nhất của Flutter trong năm 2024:

- **Framework:** `Flutter` (Dart 3.x)
- **State Management:** `Riverpod` (với Code Generation - chuẩn mới nhất).
- **Architecture:** `Clean Architecture` & `Feature-first` (Chia thư mục theo tính năng).
- **Navigation:** `GoRouter` (Quản lý luồng màn hình, Deep link).
- **Backend Services (Firebase):**
    - 🔐 **Authentication:** Đăng nhập/Đăng ký.
    - 🔥 **Firestore:** Cơ sở dữ liệu NoSQL (Realtime update).
    - ☁️ **Storage:** Lưu trữ hình ảnh món ăn, avatar.
- **Code Generation:** `Freezed`, `JSON Serializable`, `Riverpod Generator` (Giúp code an toàn, tránh lỗi null).

## 📂 Cấu trúc thư mục (Project Structure)(README_STRUCTURE.md): Chi tiết về cách tổ chức source code và các folder chức năng.