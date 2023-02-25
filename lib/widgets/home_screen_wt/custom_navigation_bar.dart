import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/providers/providers.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);

    return BottomNavigationBar(
      selectedItemColor: Colors.green,
      currentIndex: uiProvider.bnbIndex,
      onTap: (int i) => uiProvider.bnbIndex = i,
      elevation: 0.0,
      items: const [
        BottomNavigationBarItem(
          label: 'Ingreso',
          icon: Icon(
            Icons.add_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Gasto',
          icon: Icon(
            Icons.exposure_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Balance',
          icon: Icon(
            Icons.balance_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Configaración',
          icon: Icon(
            Icons.settings,
          ),
        ),
      ],
     
    );
  }
}
