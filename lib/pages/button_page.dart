import 'package:flutter/material.dart';

import '../core/core.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Styles'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            ElevatedButton(
              onPressed: () => context.showSnackBar('Elevated Button'),
              child: Text('ElevatedButton'),
            ),
            FilledButton(
              onPressed: () => context.showSnackBar('Filled Button'),
              child: Text('FilledButton'),
            ),
            OutlinedButton(
              onPressed: () => context.showSnackBar('Outlined Button'),
              child: Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () => context.showSnackBar('Text Button'),
              child: Text('TextButton'),
            ),
            IconButton(
              onPressed: () => context.showSnackBar('Icon Button'),
              icon: Icon(Icons.add),
            ),
            ElevatedButton.icon(
              onPressed: () => context.showSnackBar('Elevated Button Icon'),
              icon: Icon(Icons.add),
              label: Text('ElevatedButton.icon'),
            ),
            FilledButton.icon(
              onPressed: () => context.showSnackBar('Filled Button Icon'),
              icon: Icon(Icons.add),
              label: Text('FilledButton.icon'),
            ),
            TextButton.icon(
              onPressed: () => context.showSnackBar('Text Button Icon'),
              icon: Icon(Icons.add),
              label: Text('TextButton.icon'),
            ),
            OutlinedButton.icon(
              onPressed: () => context.showSnackBar('Outlined Button Icon'),
              icon: Icon(Icons.add),
              label: Text('OutlinedButton.icon'),
            ),
          ],
        ),
      ),
    );
  }
}
