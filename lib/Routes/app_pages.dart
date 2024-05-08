import 'package:dashloc/Routes/app_routes.dart';
import 'package:get/get.dart';
import '../Presentations/Home/Binding/HomeBinding.dart';
import '../Presentations/Home/HomePage.dart';
import '../Presentations/Login/Binding/LoginBinding.dart';
import '../Presentations/Login/LoginPage.dart';

class AppPages{
static var Lists =[
  GetPage(name: AppRoutes.Login, page: () => LoginPage(),binding: LoginBinding(),),
  GetPage(name: AppRoutes.Home, page: () => HomePage(),binding: HomeBinding(),)
];
}