import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starter Dev'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => context.go('/settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/text-styles'),
              child: Text('Text Style Page'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/button-styles'),
              child: Text('Button Style Page'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/form-styles'),
              child: Text('Form Style Page'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/misc-styles'),
              child: Text('Misc Style Page'),
            ),
          ],
        ),
      ),
    );
  }
}
