import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:go_router/go_router.dart';
class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});
  void showCustomSnackbar( BuildContext context ){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: 
    const Text('hola mundo'),
    action: SnackBarAction(label: 'Ok!', onPressed: (){}),
    duration: const Duration(seconds: 2)
    )
            );
  }

  void openDialog( BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text('¿Estas Seguro?'),
      content: const Text('Irure exercitation excepteur voluptate nisi nisi consequat exercitation occaecat.'),
      actions: [
        TextButton(onPressed: ()=>context.pop(), child: Text('Cancelar')),
        FilledButton(onPressed: ()=>context.pop(), child: Text('Aceptar'))
      ],
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sanckbars y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(context: context, children: [ Text('Mollit deserunt fugiat dolor consectetur ad exercitation esse non ut commodo dolor.')]);
              }, 
              child: Text('Licencias usadas')),
              FilledButton.tonal(
              onPressed: (){
                openDialog(context);
              }, 
              child: Text('Mostrar dialogo')),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          showCustomSnackbar(context);
        }, 
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}