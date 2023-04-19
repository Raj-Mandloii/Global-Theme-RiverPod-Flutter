import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_dark_theme_flutter/homepage.dart';
import 'package:light_dark_theme_flutter/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}


final appThemeProvider = StateProvider<bool>((ref) => false);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Light/Dark Theme',
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(context, ref.watch(appThemeProvider)),
      home: const MyHomePage(),
    );
  }
}
