import 'package:material_ui/material_ui.dart';
import 'package:contador_grupo2/Presentacion/config/app_theme.dart';
import 'package:contador_grupo2/Presentacion/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const CounterScreen(),
    );
  }
}
