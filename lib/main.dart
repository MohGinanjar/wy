import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wy/screen/bookings.dart';
import 'package:wy/widgets/colortheme.dart';
import 'package:wy/screen/home.dart';
import 'package:wy/providers/auth.dart';
import 'package:wy/providers/menuassets.dart';
import 'package:wy/screen/splash_page.dart';
import 'package:wy/providers/bookings_date.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
          
        ),
        ChangeNotifierProvider(
          create: (ctx) => MenuAssets(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => BookingsDates(),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Bookings(),
      ),
    );
  }
}
