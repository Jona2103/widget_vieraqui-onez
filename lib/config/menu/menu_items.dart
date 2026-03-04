import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subttle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subttle,
    required this.link,
    required this.icon,
  });
}

const menuItems = <MenuItems>[

  MenuItems(
    title: 'Botones',
    subttle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: 'Tarjetas',
    subttle: 'Varias Tarjetas en flutter',
    link: '/cards',
    icon: Icons.credit_card_off_outlined,
  ),


  
];