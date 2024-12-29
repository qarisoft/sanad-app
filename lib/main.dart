import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'common.dart';
import 'ui/providers/index.dart';

void main() async {
  // flutter pub get && flutter pub run icons_launcher:create
  // flutter pub run flutter_native_splash:create
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }

  await init();
  // ignore: missing_provider_scope
  runApp(di<_App>());

  if (!kIsWeb) {
    FlutterNativeSplash.remove();
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: const MyApp(),
    );
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final brightness = View.of(context).platformDispatcher.platformBrightness;
    // TextTheme textTheme = createTextTheme(context, "Tajawal", "Tajawal");
    // MaterialTheme theme = MaterialTheme(textTheme);
    // final loaded = ref.watch(loadedProvider);
    final local = ref.watch(localProvider);
    ref.watch(interNetProvider);
    return MaterialApp(
      title: 'Sanad',
      scrollBehavior: const MaterialScrollBehavior()
          .copyWith(dragDevices: PointerDeviceKind.values.toSet()),
      themeMode: ThemeMode.light,
      localizationsDelegates: SL.localizationsDelegates,
      supportedLocales: SL.supportedLocales,
      theme: _buildReplyLightTheme(),
      // darkTheme: _buildReplyLightTheme(),

      // darkTheme: _buildReplyDarkTheme(),
      locale: Locale(local),
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}

Future<void> init() async {
  await registerSingletons();

  SL.delegate.load(Locale('ar'));
  di.registerLazySingleton<_App>(() => _App());
}

ThemeData _buildReplyLightTheme() {
  final base = ThemeData(fontFamily: 'Tajawal');
  return base.copyWith(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    // bottomSheetTheme: BottomSheetThemeData(
    // backgroundColor: AppColor.blue700,
    // modalBackgroundColor: Colors.white.withOpacity(0.7),
    // ),
    cardColor: AppColor.white50,
    // chipTheme: _buildChipTheme(
    //   AppColor.blue700,
    //   AppColor.lightChipBackground,
    //   Brightness.light,
    // ),
    colorScheme: const ColorScheme.light(
      primary: AppColor.primary,
      secondary: AppColor.orange500,
      surface: AppColor.white50,
      error: AppColor.red400,
      onPrimary: AppColor.white50,
      onSecondary: AppColor.black900,
      onSurface: AppColor.black900,
      onError: AppColor.black900,
    ),
    // textTheme: _buildReplyLightTextTheme(base.textTheme),
    scaffoldBackgroundColor: Colors.grey.shade100,
    bottomAppBarTheme:
        const BottomAppBarTheme(color: AppColor.blue50, elevation: 2),
    iconTheme: IconThemeData(
        // color: AppColor.white50,
        ),
  );
}

ThemeData _buildReplyDarkTheme() {
  final base = ThemeData(fontFamily: 'Tajawal');
  return base.copyWith(
    brightness: Brightness.dark,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColor.darkDrawerBackground,
      modalBackgroundColor: Colors.black.withOpacity(0.7),
    ),
    cardColor: AppColor.darkCardBackground,
    chipTheme: _buildChipTheme(
      AppColor.blue200,
      AppColor.darkChipBackground,
      Brightness.dark,
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColor.primary,
      secondary: AppColor.orange300,
      surface: AppColor.black800,
      error: AppColor.red200,
      onPrimary: AppColor.black900,
      onSecondary: AppColor.black900,
      onSurface: AppColor.white50,
      onError: AppColor.black900,
    ),
    // textTheme: _buildReplyDarkTextTheme(base.textTheme),
    scaffoldBackgroundColor: AppColor.black900,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColor.darkBottomAppBarBackground,
    ),
  );
}

ChipThemeData _buildChipTheme(
  Color primaryColor,
  Color chipBackground,
  Brightness brightness,
) {
  return ChipThemeData(
    backgroundColor: primaryColor.withOpacity(0.12),
    disabledColor: primaryColor.withOpacity(0.87),
    selectedColor: primaryColor.withOpacity(0.05),
    secondarySelectedColor: chipBackground,
    padding: const EdgeInsets.all(4),
    shape: const StadiumBorder(),
    // labelStyle: GoogleFonts.workSansTextTheme().bodyMedium!.copyWith(
    //       color: brightness == Brightness.dark
    //           ? AppColor.white50
    //           : AppColor.black900,
    //     ),
    // secondaryLabelStyle: GoogleFonts.workSansTextTheme().bodyMedium!,
    brightness: brightness,
  );
}
