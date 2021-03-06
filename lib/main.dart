import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Cart.dart';
import 'emptyCart.dart';
import 'items.dart';
import 'payment.dart';
import 'cartItem.dart';
import 'selected_item.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'signUp.dart';
import 'landingPage.dart';
import 'home.dart';
import 'matjar_icons1.dart';
import 'profileInfo.dart';
import 'matjar_icons.dart';
import 'profileLoggedIn.dart';
import 'profile.dart';
import 'ProfileEdit.dart';
import 'SignUpSeller.dart';
import 'profileEditSeller.dart';
import 'profileInfoSeller.dart';
import 'ProfileLoginSeller.dart';
import 'loginSeller.dart';
import 'auth/auth.dart';
import 'modules/user.dart';
import 'sellerDashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<cartItem>(
          create: (context) => cartItem(),
        ),
      ],
      child: StreamProvider<Userinit>.value(
        value: AuthService().user,
        child: MaterialApp(
          title: "Matjar",
          initialRoute: '/',
          routes: <String, WidgetBuilder>{
            Cart.id: (context) => Cart(),
            SelectedItem.id: (context) => SelectedItem(),
            Payment.id: (context) => Payment(),
            '/': (context) => LandingPage(),
            '/Login': (context) => Login(),
            '/SignUp': (context) => SignUp(),
            '/Home': (context) => MyHomePage(),
            '/Profile': (context) => Profile(),
            '/ProfileInfo': (context) => ProfileInfo(),
            '/ProfileEdit': (context) => ProfileEdit(),
            '/ProfileEditSeller': (context) => ProfileEditSeller(),
            '/ProfileLoginSeller': (context) => ProfileLogInSeller(),
            '/ProfileLoggedIn': (context) => ProfileLoggedIn(),
            '/SignUpSeller': (context) => SignUpSeller(),
            '/ProfileInfoSeller': (context) => ProfileInfoSeller(),
            '/LoginSeller': (context) => LoginSeller(),
            '/SellerDashboard': (context) => SellerDashboard(),
          },
        ),
      ),
    );
  }
}

/* class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<cartItem>(
          create: (context) => cartItem(),
        ),
      ],
      child: MaterialApp(
        //title: "Navigation",
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          Cart.id: (context) => Cart(),
          SelectedItem.id: (context) => SelectedItem(),
          Payment.id: (context) => Payment(),
          '/': (context) => LandingPage(),
          '/Login': (context) => Login(),
          '/SignUp': (context) => SignUp(),
          '/Home': (context) => MyHomePage(),
          '/Profile': (context) => Profile(),
          '/ProfileInfo': (context) => ProfileInfo(),
          '/ProfileEdit': (context) => ProfileEdit(),
          '/ProfileEditSeller': (context) => ProfileEditSeller(),
          '/ProfileLoginSeller': (context) => ProfileLogInSeller(),
          '/ProfileLoggedIn': (context) => ProfileLoggedIn(),
          '/SignUpSeller': (context) => SignUpSeller(),
          '/ProfileInfoSeller': (context) => ProfileInfoSeller(),
          '/LoginSeller': (context) => LoginSeller(),
          '/SellerDashboard': (context) => SellerDashboard(),
        },
      ),
    );
  }
} */
