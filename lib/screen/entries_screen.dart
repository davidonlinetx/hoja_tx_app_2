import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/widgets/widgets.dart';

class EntriesScreen extends StatelessWidget {
  const EntriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ingresar Carrera'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('0.00'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: 150,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.green,
                  child: const Text('Anotar',
                      style: TextStyle(color: Colors.white)),
                ),
                const VerticalDivider(),
                MaterialButton(
                  minWidth: 150.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.blue,
                  child: const Text('Carreras',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            const Text('Ultima carrera'),
          ],
        ),
      ),
      // bottomNavigationBar: 
      // const CustomNavigationBar(),
    );
  }
}
