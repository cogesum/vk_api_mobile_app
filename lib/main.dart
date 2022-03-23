import 'package:flutter/material.dart';
import 'package:movie_db/Theme/main_color.dart';
import 'package:movie_db/widgets/auth/auth_widget.dart';
import 'package:movie_db/widgets/main_screen_widget.dart/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColor.mainVkColor,
        elevation: 50,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 173, 173, 173),
      )),
      routes: {
        '/': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/main_screen',
      onGenerateRoute: (RouteSettings setting) {
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
              body: Center(
            child: Text("Oops, not found this page :("),
          ));
        });
      },
    );
  }
}
