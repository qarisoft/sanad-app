import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sanad/data/service/storage/storage_service.dart';
import 'package:sanad/ui/pages/auth/login.dart';
// import 'package:sanad/ui/providers/app/app.dart';
import 'package:sanad/ui/providers/auth/auth_provider.dart';
import 'package:sanad/ui/providers/locale/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'common.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }

  await registerSingletons();
  

  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );

  if (!kIsWeb) {
    FlutterNativeSplash.remove();
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, ref) {
    // final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Tajawal", "Tajawal");
    MaterialTheme theme = MaterialTheme(textTheme);
    final local = ref.watch(localProvider);
    return MaterialApp(
      title: 'Sanad',
      themeMode: ThemeMode.system,
      localizationsDelegates: SL.localizationsDelegates,
      supportedLocales: SL.supportedLocales,
      theme: theme.light(),
      locale: Locale(local),
      darkTheme: theme.dark(),
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: RouteGenerator.getRoute,
      home: const SplashScreen(),
      // bui
    );
  }
}

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(authProvider);
    return s.when(
      authinticated: (auth) {
        return MainPage();
      },
      initial: () {
        return LoginPage();
      },
    );
  }
}

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text('main page'),
    );
  }
}

final di = GetIt.instance;

void registerSingletons() {
  GetIt.I.registerLazySingleton<SharedPreferences>(()=>  SharedPreferencesAsync());
  di.registerSingleton<Storage>(
    Storage(sh),
  );
  
}


// Storage get appStorage => di<Storage>();
