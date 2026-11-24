import 'package:flutter/material.dart';

import 'screens/some_shell.dart';
import 'state/app_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final state = AppState();
  await state.load();
  runApp(GununSorusuApp(state: state));
}

class GununSorusuApp extends StatelessWidget {
  final AppState state;

  const GununSorusuApp({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: state,
      builder: (context, _) {
        return MaterialApp(
          title: 'Günün Sorusu',
          debugShowCheckedModeBanner: false,
          themeMode: state.themeMode,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.indigo,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),
          home: HomeShell(state: state),
        );
      },
    );
  }
}
