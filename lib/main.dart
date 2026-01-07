import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// Import file config Firebase tự sinh ra
import 'firebase_options.dart';

// Import các màn hình
import 'src/features/recipes/presentation/recipe_feed_screen.dart';

// --- 1. Cấu hình Router (Điều hướng) ---
// Khai báo Router là một Provider để sau này dễ dàng thêm Logic Auth (Redirect nếu chưa login)
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/', // Mặc định vào trang chủ
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const RecipeFeedScreen(),
        routes: [
          // Sau này sẽ thêm các route con ở đây
          // Ví dụ: path: 'detail/:id'
        ],
      ),
      // Thêm route Login, Register ở đây...
    ],
  );
});

// --- 2. Hàm Main ---
void main() async {
  // Đảm bảo Flutter Binding được khởi tạo trước khi gọi code bất đồng bộ
  WidgetsFlutterBinding.ensureInitialized();

  // Khởi tạo Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Chạy App và bọc trong ProviderScope (Bắt buộc với Riverpod)
  runApp(const ProviderScope(child: MyApp()));
}

// --- 3. Widget Root ---
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Lắng nghe routerProvider
    final router = ref.watch(routerProvider);

    // Cấu hình ScreenUtil để Responsive (Thiết kế theo size chuẩn, ví dụ iPhone 11: 375x812)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Food Recipe App',
          debugShowCheckedModeBanner: false,

          // Cấu hình Theme (Giao diện)
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
          ),

          // Kết nối GoRouter vào MaterialApp
          routerConfig: router,
        );
      },
    );
  }
}
