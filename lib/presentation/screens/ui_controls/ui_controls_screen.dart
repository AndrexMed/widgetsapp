import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI Controls Screen'),
        ),
        body: const _UiControlsView());
  }
}

enum Transportation {
  car,
  plane,
  boat,
  submarine,
  bicycle,
  walk,
  run,
  hike,
  swim,
  ski,
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({super.key});

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.walk;

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloperMode,
          onChanged: (value) =>
              setState(() => isDeveloperMode = !isDeveloperMode),
          title: const Text('Developer Mode'),
          subtitle: const Text('Enable Developer Mode'),
        ),
        ExpansionTile(
          title: const Text('Transportation'),
          subtitle: Text(selectedTransportation.name),
          children: [
            RadioListTile(
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) =>
                    setState(() => selectedTransportation = Transportation.car),
                title: const Text('Car')),
            RadioListTile(
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(
                    () => selectedTransportation = Transportation.boat),
                title: const Text('Boat')),
            RadioListTile(
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(
                    () => selectedTransportation = Transportation.plane),
                title: const Text('Plane')),
          ],
        ),
        CheckboxListTile(
          value: wantsBreakfast,
          onChanged: (value) {
            setState(() => wantsBreakfast = !wantsBreakfast);
          },
          title: const Text('Breakfast?'),
        ),
        CheckboxListTile(
          value: wantsLunch,
          onChanged: (value) {
            setState(() => wantsLunch = !wantsLunch);
          },
          title: const Text('Lunch?'),
        ),
        CheckboxListTile(
          value: wantsDinner,
          onChanged: (value) {
            setState(() => wantsDinner = !wantsDinner);
          },
          title: const Text('Dinner?'),
        ),
      ],
    );
  }
}
