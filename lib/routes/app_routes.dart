import 'package:payment/presentation/password_encryption_screen/password_encryption_screen.dart';
import 'package:payment/presentation/password_encryption_screen/binding/password_encryption_binding.dart';
import 'package:payment/presentation/phone_verification_screen/phone_verification_screen.dart';
import 'package:payment/presentation/phone_verification_screen/binding/phone_verification_binding.dart';
import 'package:payment/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:payment/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:payment/presentation/security_policy_screen/security_policy_screen.dart';
import 'package:payment/presentation/security_policy_screen/binding/security_policy_binding.dart';
import 'package:payment/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:payment/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:payment/presentation/account_creation_screen/account_creation_screen.dart';
import 'package:payment/presentation/account_creation_screen/binding/account_creation_binding.dart';
import 'package:payment/presentation/signup_login_module_screen/signup_login_module_screen.dart';
import 'package:payment/presentation/signup_login_module_screen/binding/signup_login_module_binding.dart';
import 'package:payment/presentation/splash_screen/splash_screen.dart';
import 'package:payment/presentation/splash_screen/binding/splash_binding.dart';
import 'package:payment/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:payment/presentation/terms_and_conditions_screen/binding/terms_and_conditions_binding.dart';
import 'package:payment/presentation/two_factor_authentication_screen/two_factor_authentication_screen.dart';
import 'package:payment/presentation/two_factor_authentication_screen/binding/two_factor_authentication_binding.dart';
import 'package:payment/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:payment/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String passwordEncryptionScreen = '/password_encryption_screen';

  static String phoneVerificationScreen = '/phone_verification_screen';

  static String editProfileScreen = '/edit_profile_screen';

  static String securityPolicyScreen = '/security_policy_screen';

  static String signUpScreen = '/sign_up_screen';

  static String accountCreationScreen = '/account_creation_screen';

  static String signupLoginModuleScreen = '/signup_login_module_screen';

  static String splashScreen = '/splash_screen';

  static String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static String twoFactorAuthenticationScreen =
      '/two_factor_authentication_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: passwordEncryptionScreen,
      page: () => PasswordEncryptionScreen(),
      bindings: [
        PasswordEncryptionBinding(),
      ],
    ),
    GetPage(
      name: phoneVerificationScreen,
      page: () => PhoneVerificationScreen(),
      bindings: [
        PhoneVerificationBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: securityPolicyScreen,
      page: () => SecurityPolicyScreen(),
      bindings: [
        SecurityPolicyBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: accountCreationScreen,
      page: () => AccountCreationScreen(),
      bindings: [
        AccountCreationBinding(),
      ],
    ),
    GetPage(
      name: signupLoginModuleScreen,
      page: () => SignupLoginModuleScreen(),
      bindings: [
        SignupLoginModuleBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: termsAndConditionsScreen,
      page: () => TermsAndConditionsScreen(),
      bindings: [
        TermsAndConditionsBinding(),
      ],
    ),
    GetPage(
      name: twoFactorAuthenticationScreen,
      page: () => TwoFactorAuthenticationScreen(),
      bindings: [
        TwoFactorAuthenticationBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => PasswordEncryptionScreen(),
      bindings: [
        PasswordEncryptionBinding(),
      ],
    )
  ];
}
