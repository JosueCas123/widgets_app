import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),

      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, bus, train, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  
  bool isDeveper = false;
  Transportation selectedTransportation = Transportation.car;
  bool isCena = false;
  bool isSwitch = false;
  bool isAlmuerzo = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Delover notifications'),
          subtitle: const Text('Receive notifications about new deliveries'),
          value: isDeveper, onChanged: (value){
            setState(() {
              isDeveper = !isDeveper;
            });
        }),

        ExpansionTile(
          title: const Text('Developer options'),
          subtitle:  Text('$selectedTransportation'),

          children: [
              RadioListTile(
                title: const Text('Car'),
                subtitle: const Text('Use car for transportation'),
                value: Transportation.car, 
                groupValue: selectedTransportation, 
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.car;
                  });
                },
                
                ),
              RadioListTile(
                title: const Text('Bus'),
                subtitle: const Text('Use bus for transportation'),
                value: Transportation.bus, 
                groupValue: selectedTransportation, 
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.bus;
                  });
                },
                
                ),
              RadioListTile(
                title: const Text('Train'),
                subtitle: const Text('Use train for transportation'),
                value: Transportation.train, 
                groupValue: selectedTransportation, 
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.train;
                  });
                },
                
                ),
              RadioListTile(
                title: const Text('Submarine'),
                subtitle: const Text('Use submarine for transportation'),
                value: Transportation.submarine, 
                groupValue: selectedTransportation, 
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.submarine;
                  });
                },
                
                )

          ],
          ),


          
        CheckboxListTile(
          title: const Text('Cena'),
          value: isCena,
          onChanged: (value) {
            setState(() {
              isCena = !isCena;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Almuerzo'),
          value: isSwitch, 
          onChanged: (value) {
            setState(() {
              isSwitch = !isSwitch;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Switch'),
          value: isAlmuerzo, 
          onChanged: (value) {
            setState(() {
              isAlmuerzo = !isAlmuerzo;
            });
          },
        )

      ],
    );
  }
}