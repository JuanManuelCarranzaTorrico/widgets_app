import 'package:flutter/material.dart';


class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;


  const MenuItem({
    required this.subTitle, 
    required this.title, 
    required this.link, 
    required this.icon,
    });
}


 const appMenuItems = <MenuItem>[
   MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones de fluter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),
  MenuItem(
  title: 'Progress Indicators', 
  subTitle: 'Generales y controlados', 
  link: '/progress', 
  icon: Icons.refresh_rounded),
  MenuItem(
    subTitle: "Hola Mundo", 
    title: "Snackbar y Dialogos", 
    link: '/snackbar', 
    icon: Icons.info_outline
    ),
    MenuItem(
    subTitle: "Container Con animaciones", 
    title: "animated", 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_rounded
    ),
];
