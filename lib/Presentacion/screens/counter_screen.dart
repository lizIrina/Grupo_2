import 'package:contador_grupo2/Presentacion/widgets/custom_button.dart';
import 'package:material_ui/material_ui.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  void _increase() => setState(() => clickCounter++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$clickCounter')),
      floatingActionButton: CustomButton(
        icon: Icons.plus_one,
        onPressed: _increase,
        tooltip: 'Sumar',
      ),
    );
  }
}
