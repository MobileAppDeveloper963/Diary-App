import 'package:diary_app/Screens/Auth/forget_passward.dart';
import 'package:diary_app/Screens/Auth/login.dart';
import 'package:diary_app/Screens/Auth/onbording1.dart';
import 'package:diary_app/Screens/Auth/reset_passward.dart';
import 'package:diary_app/Screens/Auth/signup.dart';
import 'package:diary_app/Screens/Auth/splash.dart';
import 'package:diary_app/Screens/Auth/verify.dart';
import 'package:diary_app/Screens/Home/drawer.dart';
import 'package:diary_app/Screens/Home/gridview.dart';
import 'package:diary_app/Screens/Home/home.dart';
import 'package:diary_app/Screens/Home/model_sheet.dart';
import 'package:diary_app/Screens/Home/new_notes1.dart';
import 'package:diary_app/Screens/Home/new_notes2.dart';
import 'package:diary_app/Screens/Home/profile.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = '/Splash';
  static const String onBording = '/OnBording';
  static const String login = '/Login';
  static const String signup = '/Signup';
  static const String forgetPassword = '/ForgetPassward';
  static const String verifyAccount = '/VerifyAccount';
  static const String resetPassword = '/ResetPassword';
  static const String homeList = '/HomeList';
  static const String gridviewList = '/GridviewScreen';
  static const String drawer = '/DrawerScreen';
  static const String appar = '/CustomAppbar';
  static const String bottomModelSheet = '/ButtomSheetWidget';
  static const String profile = '/Profile';
  static const String newNotes1 = '/AddNewNotes1';
  static const String newNotes2 = '/AddNewNotes2';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: (_) => Splash(),
        onBording: (_) => OnBording(),
        login: (_) => Login(),
        signup: (_) => Signup(),
        forgetPassword: (_) => ForgetPassward(),
        verifyAccount: (_) => VerifyAccount(),
        resetPassword: (_) => ResetPassword(),
        homeList: (_) => HomeList(),
        gridviewList: (_) => GridviewScreen(),
        drawer: (_) => DrawerScreen(),
        bottomModelSheet: (_) => ButtomSheetWidget(),
        profile: (_) => Profile(),
        newNotes1: (_) => AddNewNotes1(),
        newNotes2: (_) => AddNewNotes2(),
      };
}
