import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/prescription/main/main_section.dart';
import 'package:senaecelik/provider/scroll_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sena Ercihan ÇELİK',
          darkTheme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors.green,
          ),
          home: MainSection(),
        ),
      ),
    );
  }
}
