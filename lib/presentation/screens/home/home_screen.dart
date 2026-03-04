import 'package:flutter/material.dart';
import 'package:widget_viera_quinonez/config/menu/menu_items.dart';
import 'package:widget_viera_quinonez/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter + Material 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:menuItems.length, itemBuilder: (context, index) {
      final menuItem = menuItems[index];
      return _CustomListTile(menuItem: menuItem);
    });
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 16),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subttle),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ButtonsScreen(),
        )
        ),
    );
  }
}