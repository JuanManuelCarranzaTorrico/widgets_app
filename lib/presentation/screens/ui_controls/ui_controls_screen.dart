import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportantion { car, plane, boat, train }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportantion selectedTransportation = Transportantion.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By car'),
                subtitle: const Text('Viajar en auto'),
                value: Transportantion.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportantion.car;
                    })),
            RadioListTile(
                title: const Text('By boat'),
                subtitle: const Text('Viajar en barco'),
                value: Transportantion.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportantion.boat;
                    })),
            RadioListTile(
                title: const Text('By plane'),
                subtitle: const Text('Viajar en avion'),
                value: Transportantion.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportantion.plane;
                    })),
            RadioListTile(
                title: const Text('By train'),
                subtitle: const Text('Viajar en tren'),
                value: Transportantion.train,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportantion.train;
                    })),
          ],
        ), 
             
             CheckboxListTile(
              title: const Text('Desayuno?'),
              value: wantsBreakFast, 
              onChanged: (value)=> setState(() {
                wantsBreakFast = !wantsBreakFast;
              })
             ),
             CheckboxListTile(
              title: const Text('Almuerzo?'),
              value: wantsLunch, 
              onChanged: (value)=> setState(() {
                wantsLunch = !wantsLunch;
              })
             ),
             CheckboxListTile(
              title: const Text('Cena?'),
              value: wantsDinner, 
              onChanged: (value)=> setState(() {
                wantsDinner = !wantsDinner;
              })
             ),
      ],
    );
  }
}
