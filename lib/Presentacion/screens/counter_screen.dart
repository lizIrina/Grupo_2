import 'package:flutter/material.dart';
import 'package:contador_grupo2/Presentacion/widgets/custom_button.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  void _increase() => setState(() => clickCounter++);

  void _decrease() {
    if (clickCounter == 0) return;
    setState(() => clickCounter--);
  }

  void _reset() => setState(() => clickCounter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$clickCounter')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh_rounded, onPressed: _reset, tooltip: 'Reiniciar'),
          const SizedBox(height: 10),
          CustomButton(icon: Icons.exposure_minus_1_outlined, onPressed: _decrease, tooltip: 'Restar'),
          const SizedBox(height: 10),
          CustomButton(icon: Icons.plus_one, onPressed: _increase, tooltip: 'Sumar'),
        ],
      ),
    );
  }
}