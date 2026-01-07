# Cấu trúc Thư mục Dự án (Project Structure)

Dự án Digital Festival được tổ chức theo kiến trúc **Clean Architecture** kết hợp với **Feature-first approach**, giúp mã nguồn dễ bảo trì, mở rộng và kiểm thử.

## 1. Thư mục chính: `lib/src/`

Mã nguồn chính nằm trong thư mục `lib/src/`, được chia thành 3 phần chính:

### A. `core/` (Cốt lõi của hệ thống)
Chứa các thành phần dùng chung cho toàn bộ dự án, không phụ thuộc vào bất kỳ tính năng (feature) cụ thể nào.
- `config/`: Cấu hình ứng dụng (Routes, Themes, App constants).
- `constants/`: Các hằng số về màu sắc, kích thước, chuỗi văn bản.
- `errors/`: Định nghĩa các lớp ngoại lệ (Exceptions) và thất bại (Failures).
- `network/`: Cấu hình Dio, API Client, xử lý phản hồi từ server.
- `services/`: Các dịch vụ độc lập như Storage (LocalStorage), Notifications, Firebase/Supabase service.
- `utils/`: Các hàm tiện ích (Formatters, Validators, Helpers).
- `views/`: Các màn hình cơ bản dùng chung (Error Screen, Loading Screen).

### B. `features/` (Các tính năng của ứng dụng)
Mỗi thư mục con đại diện cho một tính năng lớn (ví dụ: `auth`, `home`, `map`, `payment`). Trong mỗi feature, mã nguồn được chia theo 3 lớp:
1. **`domain/`**: Chứa Logic nghiệp vụ cốt lõi.
   - `entities/`: Các đối tượng dữ liệu thuần túy.
   - `repositories/`: Giao diện (interfaces) của các kho dữ liệu.
   - `usecases/`: Các hành động cụ thể mà user có thể thực hiện.
2. **`data/`**: Chứa phần triển khai thực tế.
   - `models/`: Các DTO (Data Transfer Objects), có khả năng chuyển đổi JSON (sử dụng Freezed).
   - `repositories/`: Triển khai thực tế các interface từ lớp domain.
   - `datasources/`: Nơi trực tiếp gọi API hoặc truy vấn Local Database.
3. **`presentation/`**: Giao diện người dùng.
   - `screens/`: Các trang (màn hình) chính.
   - `widgets/`: Các component nhỏ thuộc riêng về feature đó.
   - `providers/`: Quản lý trạng thái (State Management) sử dụng Riverpod.

### C. `shared/` (Thành phần dùng chung giữa các feature)
- Chứa các Widgets, Models hoặc Providers mà nhiều features cùng sử dụng nhưng không thuộc về `core`.

## 2. Các file quan trọng ở gốc `lib/`
- `main.dart`: Điểm khởi đầu của ứng dụng, nơi khởi tạo các dịch vụ nền và chạy `runApp`.
- `app.dart`: Cấu hình chính của ứng dụng (MaterialApp, Router configuration).
- `firebase_options.dart`: Cấu hình kết nối Firebase được tạo tự động.

## 3. Công nghệ sử dụng (Tech Stack)
- **State Management**: `flutter_riverpod` kết hợp với `riverpod_generator`.
- **Navigation**: `go_router`.
- **Data Serialization**: `freezed` & `json_serializable`.
- **Backend/API**: `dio`, `supabase_flutter`, `firebase_core`.

---
Tuân thủ cấu trúc này giúp tách biệt rõ ràng giữa UI và Logic, giúp team dễ dàng làm việc song song.