import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/utils/utils.dart';

class BackSheet extends StatelessWidget {
  const BackSheet({super.key});

  @override
  Widget build(BuildContext context) {
    _headers(String name, String amount) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 5),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 20,
              letterSpacing: 1.5,
              color: Colors.white,
            ),
          ),
        ],
      );
    }

    return Container(
      height: 250,
      decoration: Constants.sheetBoxDecoration(
        Theme.of(context).primaryColorDark
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _headers('Ingresos', '3500€'),
          const VerticalDivider(
            thickness: 2,
          ),
          _headers('Gastos', '1500€'),
        ],
      ),
    );
  }
}
