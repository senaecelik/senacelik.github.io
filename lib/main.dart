import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/firebase_options.dart';
import 'package:senaecelik/prescription/main/main_section.dart';
import 'package:senaecelik/provider/app_provider.dart';
import 'package:senaecelik/provider/user_info_cubit.dart';
import 'package:senaecelik/provider/scroll_provider.dart';
import 'package:senaecelik/resources/theme_manager.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
        BlocProvider(create: (context) => UserInfoCubit()),
      ],
      child: Consumer<AppProvider>(
        builder: (context, value, _) => App(
          provider: value,
        ),
      ),
    );
  }
}

class App extends StatefulWidget {
  final AppProvider provider;

  const App({
    super.key,
    required this.provider,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void initAppTheme() {
    final appProviders = AppProvider.state(context);
    appProviders.init();
  }

  @override
  void initState() {
    initAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        scrollBehavior: MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        debugShowCheckedModeBanner: false,
        title: 'Sena ÇELİK',
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        themeMode: widget.provider.themeMode,
        home: const MainSection(),
      ),
    );
  }
}
