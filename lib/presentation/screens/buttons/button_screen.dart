import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {


    static const String name = 'button_screen';
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body:const _ButtonView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined),      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed:null,
                child: const Text('Elevated Button'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
             
             FilledButton(onPressed: (){}, child: const Text('Filled')),
             FilledButton.icon(onPressed: (){}, icon: Icon(Icons.accessibility_rounded),label: const Text('Filled icon'),),
              OutlinedButton(onPressed: (){}, child: const Text('Outlined')),
              OutlinedButton.icon(
                onPressed: (){},
                icon: const Icon(Icons.accessibility_new_outlined),
                label: const Text('Outlined icon'),
              ),


              CustomButon(),

              TextButton(onPressed: (){}, child: const Text('Text')),
              TextButton.icon(
                onPressed: (){},
                icon: const Icon(Icons.accessibility_new_outlined),
                label: const Text('Text icon'),
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.accessibility_new_outlined),
              ),
              IconButton.filled(
                onPressed: (){},
                icon: const Icon(Icons.accessibility_new_outlined),
              ),
              ],
          ),
      ),
    );
  }
}


class CustomButon extends StatelessWidget {
  const CustomButon({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {
            // Add your action here
            print('Custom button pressed');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text('text')),
        ),
      ),
    );
  }
}