import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttosn_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
        // centerTitle: false,
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    appMenuItems;
    return ListView.builder(
      itemCount:  appMenuItems.length,
      itemBuilder: (context, index){
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
      );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon (menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color:colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: (){
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtosnScreen(),
        //   ),
        // );
        Navigator.pushNamed(context, menuItem.link);
      },
      
    );
  }
}