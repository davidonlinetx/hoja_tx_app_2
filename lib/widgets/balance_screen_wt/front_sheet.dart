import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/utils/utils.dart';

class FrontSheet extends StatelessWidget {
  const FrontSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var _list = List.generate(
      10,
      (index) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
    return Container(
      //height: 800,
      decoration: Constants.sheetBoxDecoration(
        Theme.of(context).primaryColorLight
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: _list,
      ),
    );
  }
}
