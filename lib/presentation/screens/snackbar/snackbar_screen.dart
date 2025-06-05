import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('This is a custom snackbar!'),
      action: SnackBarAction(label: 'Undo', onPressed: () {}),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Dialog Title'),
          content: const Text('This is a dialog message. lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
          actions: [
            TextButton(onPressed: ()=>context.pop(),child: const Text('Close')),
            FilledButton(onPressed: ()=> context.pop(), child: const Text('Accept')),
          ],
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.info_outline),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                      'Esta aplicacion utiliza las siguientes licencias de codigo abierto:',
                    ),
                  ],
                );
              },
              child: const Text('Licencias Usadas'),

            ),
                FilledButton.tonal(
              onPressed:(){
                openDialog(
                  context
                  );
              },
              child: const Text('Show Snackbar') 

                )
          ],
        ),
      ),
    );
  }
}
