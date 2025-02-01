import 'package:flutter/material.dart';

import '../core/core.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styles'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => context.go('/settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            spacing: 16,
            children: [
              Text(
                'Display Large',
                style: context.displayLarge,
              ),
              Text(
                'Display Medium',
                style: context.displayMedium,
              ),
              Text(
                'Display Small',
                style: context.displaySmall,
              ),
              Text(
                'Headline Large',
                style: context.headlineLarge,
              ),
              Text(
                'Headline Medium',
                style: context.headlineMedium,
              ),
              Text(
                'Headline Small',
                style: context.headlineSmall,
              ),
              Text(
                'Title Large',
                style: context.titleLarge,
              ),
              Text(
                'Title Medium',
                style: context.titleMedium,
              ),
              Text(
                'Title Small',
                style: context.titleSmall,
              ),
              Text(
                'Body Large',
                style: context.bodyLarge,
              ),
              Text(
                'Body Medium',
                style: context.bodyMedium,
              ),
              Text(
                'Body Small',
                style: context.bodySmall,
              ),
              Text(
                'Label Large',
                style: context.labelLarge,
              ),
              Text(
                'Label Medium',
                style: context.labelMedium,
              ),
              Text(
                'Label Small',
                style: context.labelSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
