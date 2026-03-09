import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screen')),
      body: const _CardView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_outlined),
      ),
    );
  }
}

class _CardView extends StatelessWidget {
  const _CardView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          // Card básica con acciones
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Mi terre CLN'),
                  subtitle: Text('Pura belicada me cudia la espalda'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('reservar')),
                    const SizedBox(width: 8),
                    TextButton(onPressed: () {}, child: const Text('Escuchar')),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Card elevada
          Card(
            elevation: 8,
            child: const ListTile(
              leading: Icon(Icons.star),
              title: Text('Elevated Card'),
              trailing: Icon(Icons.more_vert),
            ),
          ),

          const SizedBox(height: 10),

          // Card outlined
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Theme.of(context).colorScheme.outline),
            ),
            child: const ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Outlined Card'),
            ),
          ),

          const SizedBox(height: 10),

          // Card con color
          Card(
            color: Colors.amber.shade100,
            child: const ListTile(
              leading: Icon(Icons.color_lens),
              title: Text('Colored Card'),
            ),
          ),
        ],
      ),
    );
  }
}