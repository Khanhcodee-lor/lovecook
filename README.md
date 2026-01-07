# 🍳 Love Cook - Mạng Xã Hội Ẩm Thực

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/firebase-%23039BE5.svg?style=for-the-badge&logo=firebase)
![Riverpod](https://img.shields.io/badge/State_Management-Riverpod-purple?style=for-the-badge)

**Kết nối đam mê - Chia sẻ hương vị**

[Báo lỗi (Issues)](https://github.com/USERNAME/love_cook/issues) · [Yêu cầu tính năng](https://github.com/USERNAME/love_cook/issues)

</div>

---

## 📑 Mục lục

- [🌟 Tổng quan](#-tổng-quan-dự-án)
- [📸 Giao diện ứng dụng](#-giao-diện-ứng-dụng-screenshots)
- [✨ Tính năng chính](#-các-tính-năng-chính)
- [🛠 Công nghệ sử dụng](#-công-nghệ-sử-dụng)
- [📂 Cấu trúc thư mục](#-cấu-trúc-thư-mục-project-structure)
- [🚀 Hướng dẫn cài đặt](#-hướng-dẫn-cài-đặt-installation)
- [👨‍💻 Đội ngũ phát triển](#-đội-ngũ-phát-triển)

---

## 🌟 Tổng quan dự án

> **Love Cook** là nền tảng mạng xã hội thu nhỏ dành riêng cho tín đồ ẩm thực. Nơi căn bếp không chỉ là nơi nấu nướng, mà là nơi sẻ chia câu chuyện và cảm hứng.

Dự án được xây dựng với mục tiêu tạo ra cộng đồng **Eat & Share** lành mạnh, giúp người dùng:
1.  Lưu trữ kho tàng công thức nấu ăn cá nhân.
2.  Tìm kiếm cảm hứng cho bữa cơm gia đình mỗi ngày.
3.  Kết nối trực tiếp với các "đầu bếp tại gia" tài năng khác.

---

## 📸 Giao diện ứng dụng (Screenshots)

| Màn hình chính (Feed) | Chi tiết món ăn | Tạo công thức |
|:---:|:---:|:---:|
| <img src="https://via.placeholder.com/300x600?text=Feed+Screen" height="400"> | <img src="https://via.placeholder.com/300x600?text=Detail+Screen" height="400"> | <img src="https://via.placeholder.com/300x600?text=Create+Screen" height="400"> |

---

## ✨ Các tính năng chính

| Tính năng | Mô tả chi tiết | Trạng thái |
| :--- | :--- | :---: |
| **📰 Bảng tin (Newsfeed)** | Lướt xem các công thức mới nhất, món ngon đang thịnh hành (Trending) và gợi ý cá nhân hóa. | ✅ |
| **📝 Chia sẻ (Create)** | Công cụ đăng bài trực quan: Upload ảnh, nhập nguyên liệu, các bước thực hiện và mẹo nhỏ. | ✅ |
| **❤️ Tương tác (Social)** | Hệ thống thả tim (Like), bình luận (Comment) và lưu công thức (Bookmark) vào bộ sưu tập. | ✅ |
| **💬 Trò chuyện (Chat)** | Nhắn tin Real-time 1-1 với tác giả món ăn để hỏi bí quyết hoặc giao lưu kết bạn. | 🚧 |
| **🔍 Tìm kiếm (Search)** | Bộ lọc thông minh theo tên món, nguyên liệu có sẵn trong tủ lạnh, hoặc Hashtag. | ✅ |
| **👨‍🍳 Hồ sơ (Profile)** | Trang cá nhân chuyên nghiệp: Hiển thị món đã đăng, người theo dõi (Followers) và Bio. | ✅ |

---

## 🛠 Công nghệ sử dụng

Dự án áp dụng kiến trúc **Clean Architecture** kết hợp **Feature-first**, sử dụng các thư viện hiện đại nhất 2024:

### 🔹 Core
- **Framework:** `Flutter 3.x` (Dart)
- **State Management:** `Riverpod` (với Annotation & Code Gen)
- **Navigation:** `GoRouter` (Hỗ trợ Deep link & Auth Guard)

### 🔹 Backend (Firebase)
- **Authentication:** Đăng nhập (Google, Email/Pass).
- **Cloud Firestore:** Cơ sở dữ liệu NoSQL (Realtime stream).
- **Firebase Storage:** Lưu trữ Media tối ưu.

### 🔹 Utilities & Tools
- **Code Generation:** `Freezed`, `JsonSerializable`, `Riverpod Generator`.
- **UI:** `Flutter ScreenUtil` (Responsive), `CachedNetworkImage`.
- **Linting:** `flutter_lints` (Tuân thủ quy tắc Clean Code).

---

## 📂 Cấu trúc thư mục (Project Structure)

Dự án được tổ chức khoa học để dễ dàng mở rộng (Scalable) và bảo trì. Dưới đây là cây thư mục tóm tắt:

[**Cấu trúc thư mục (Project Structure)**](README_STRUCTURE.md): Chi tiết về cách tổ chức source code và các folder chức năng.
