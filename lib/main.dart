import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hradminpannel/controllers/menu_controller.dart';
import 'package:hradminpannel/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => MenuController()),
          ],
          child: HomePage(),
        ));
  }
}
