import 'package:get/get_navigation/get_navigation.dart';
import 'package:shivam_kushwah_final/core/routes.dart';
import 'package:shivam_kushwah_final/feature/Introduction/binding/introduction_binding.dart';
import 'package:shivam_kushwah_final/feature/Introduction/view/introduction_view.dart';
import 'package:shivam_kushwah_final/feature/dashboard/binding/dashboard_binding.dart';
import 'package:shivam_kushwah_final/feature/dashboard/view/dashboard_view.dart';
import 'package:shivam_kushwah_final/feature/details/binding/details_binding.dart';
import 'package:shivam_kushwah_final/feature/details/view/details_view.dart';
import 'package:shivam_kushwah_final/feature/login/binding/login_binding.dart';
import 'package:shivam_kushwah_final/feature/login/view/login_view.dart';
import 'package:shivam_kushwah_final/feature/navigation_page/Binding/navigationBinding.dart';
import 'package:shivam_kushwah_final/feature/navigation_page/view/navigation_view.dart';
import 'package:shivam_kushwah_final/feature/otp/binding/otp_binding.dart';
import 'package:shivam_kushwah_final/feature/otp/view/otp_view.dart';
import 'package:shivam_kushwah_final/feature/otpdetail/Binding/otp_detail_binding.dart';
import 'package:shivam_kushwah_final/feature/otpdetail/View/otp_detail_view.dart';
import 'package:shivam_kushwah_final/feature/signup/binding/signup_binding.dart';
import 'package:shivam_kushwah_final/feature/signup/view/signup_view.dart';
import 'package:shivam_kushwah_final/feature/splash/binding/splash_binding.dart';
import 'package:shivam_kushwah_final/feature/splash/view/splash_view.dart';

List<GetPage> allpages = [
  GetPage(name: Routes.splash, page: () => SplashView(), binding: SplashBinding()),
  GetPage(name: Routes.intro, page: () => IntroView(), binding: IntroBind()),
  GetPage(name: Routes.dashboard, page: () => DashboardView(), binding: DashboardBinding()),
  GetPage(name: Routes.signup, page: () => SignupView(), binding: SignupBinding()),
  GetPage(name: Routes.login, page: () => LoginView(), binding: LoginBinding()),
  GetPage(name: Routes.otp, page: () => OtpView(), binding: OtpBinding()),
  GetPage(name: Routes.details, page: () => DetailView(), binding: DetailBinding()),
  // GetPage(name: Routes.detailsec, page: () => Detail1View(), binding: Detail1Binding()),
  GetPage(name: Routes.navigationbar, page: () => NavigationView(), binding: NavigationBinding()),
  GetPage(name: Routes.apiform, page: () => OtpDetail(), binding: OtpDetailBinding()),
];
