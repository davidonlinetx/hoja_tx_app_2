import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/models/models.dart';
import 'package:hoja_tx_app_2/utils/constants.dart';
import 'package:hoja_tx_app_2/widgets/widgets.dart';

class EntryCareersScreen extends StatelessWidget {
  const EntryCareersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CombinedModel cModel = CombinedModel();
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 115, 138, 116),
          leading: const Icon(Icons.add_outlined),
          title: const Text('Anotar carrera'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            BSNumKeyboard(cModel: cModel,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: Constants.sheetBoxDecoration(
                  Theme.of(context).primaryColorDark,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DatePicker(cModel: cModel),
                    const Text('Seleccionar categoria'),
                    CommentBox(cModel: cModel),
                    Expanded(
                      child: Center(
                        child: GestureDetector(
                          onTap: () => print(cModel.amount),
                          child: const Text('Boton Enviar'),
                        ),
                      ),
                    ),
                    const Text('Ultima carrera'), 
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
