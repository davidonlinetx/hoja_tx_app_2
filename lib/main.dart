import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hoja_tx_app_2/screen/pages.dart';
import 'package:hoja_tx_app_2/providers/ui_provider.dart';
import 'package:provider/provider.dart';


void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UIProvider()),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900],
        ),
        scaffoldBackgroundColor: Colors.grey[900],
        primaryColorDark: Colors.grey[850],
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          primary: Colors.green
        )
      ),
      title: 'Material App',
      localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('en', 'US'), // English
    Locale('es', 'ES'), // Español
  ],
      initialRoute: 'home',
      routes: {
        'home':(_) => const HomeScreen(),
      },
    );
  }
}
