import 'package:tambola_frontend/screens/CustomerSupport/customer_support.dart';
import 'package:tambola_frontend/screens/CustomerSupport/t_and_c.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_screen_1.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_screen_2.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_screen_3.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_screen_4.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_start.dart';
import 'package:tambola_frontend/widgets/navbar/new_nav_bar.dart';
import 'models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tambola_frontend/providers/game_provider.dart';
import 'package:tambola_frontend/providers/user_provider.dart';
import 'package:tambola_frontend/screens/Login/login_screen.dart';
import 'package:tambola_frontend/screens/PlayRoom/select_room_screen.dart';

Widget _initialHomeRoute = SignUpStart();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      //options: DefaultFirebaseOptions.currentPlatform,
      );
  // bool result = await AuthService.isLoggedIn();
  // if (result) {
  //   _initialHomeRoute = SplashScreen();
  // }
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UserProvider()),
      ChangeNotifierProvider<GameProvider>(create: (_) => GameProvider()),
      ChangeNotifierProvider<User>(
          create: (_) => User(token: "", user: UserClass())),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tambola',
      initialRoute: '/',
      routes: {
        '/': ((context) => _initialHomeRoute),
        //'/register': (context) => const SignUpStart(),
        '/login': ((context) => const LoginScreen()),
        '/select-room': (context) => const SelectRoomScreen(),
        // '/add-money': ((context) => const AddMoneyScreen()),
        // '/play-game': ((context) => const TambolaBoard()),
        '/bottom-bar': ((context) => const NewNavBar()),
        '/sign-up-start': (context) => SignUpStart(),
        '/sign-up-1': (context) => const NewSignUpScreen(),
        '/sign-up-2': ((context) => const NewSignUpScreen2()),
        '/sign-up-3': ((context) => NewSignUpScreen3(
              userName: '',
            )),
        '/sign-up-4': ((context) => const NewSignUpScreen4()),
        '/customer-support': ((context) => const CustomerSupport()),
        '/t&c': ((context) => const TandCCard()),
      },
    );
  }
}
