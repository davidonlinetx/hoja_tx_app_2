import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/models/models.dart';
import 'package:hoja_tx_app_2/utils/utils.dart';

class BSNumKeyboard extends StatefulWidget {
  final CombinedModel cModel;
  const BSNumKeyboard({super.key, required this.cModel});

  @override
  State<BSNumKeyboard> createState() => _BSNumKeyboardState();
}

class _BSNumKeyboardState extends State<BSNumKeyboard> {
  String import = '0.00';
  @override
  void initState() {
    import = widget.cModel.amount.toStringAsFixed(2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _numPad(),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const Text('Carrera ingresada'),
            Text(
              '$import €',
              style: const TextStyle(
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  _numPad() {
    if (import == '0.00') import = '';

    _entriesChange(String amount) {
      if (amount == '') amount = '0.00';
      widget.cModel.amount = double.parse(amount);
    }

    _num(String _text, double _height) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            import += _text;
            widget.cModel.amount = double.parse(import);
          });
        },
        child: SizedBox(
            height: _height,
            child: Center(
              child: Text(
                _text,
                style: const TextStyle(
                  fontSize: 35.0,
                ),
              ),
            )),
      );
    }

    showModalBottomSheet(
        barrierColor: Colors.transparent,
        isDismissible: false,
        enableDrag: false,
        isScrollControlled: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))),
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: SizedBox(
              height: 350.0,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  var _height = constraints.biggest.height / 5;
                  return Column(
                    children: [
                      Table(
                        border: TableBorder.symmetric(
                            inside: const BorderSide(
                                // color: Colors.grey,
                                width: 0.1)),
                        children: [
                          TableRow(children: [
                            _num('1', _height),
                            _num('2', _height),
                            _num('3', _height),
                          ]),
                          TableRow(children: [
                            _num('4', _height),
                            _num('5', _height),
                            _num('6', _height),
                          ]),
                          TableRow(children: [
                            _num('7', _height),
                            _num('8', _height),
                            _num('9', _height),
                          ]),
                          TableRow(children: [
                            _num('.', _height),
                            _num('0', _height),
                            GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () {
                                setState(() {
                                  if (import.length > 0.0) {
                                    import =
                                        import.substring(0, import.length - 1);
                                    _entriesChange(import);
                                  }
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  import = '';
                                  _entriesChange(import);
                                });
                              },
                              child: SizedBox(
                                  height: _height,
                                  child: const Icon(
                                    Icons.backspace,
                                    size: 35.0,
                                  )),
                            )
                          ]),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Constants.customButton(
                                  Colors.transparent, Colors.red, 'CANCELAR'),
                              onTap: () {
                                setState(() {
                                  import = '0.00';
                                  _entriesChange(import);
                                  Navigator.pop(context);
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              child: Constants.customButton(
                                  Colors.green, Colors.transparent, 'ACEPTAR'),
                              onTap: () {
                                setState(() {
                                  if (import.length == 0.0) import = '0.00';
                                  _entriesChange(import);
                                  Navigator.pop(context);
                                });
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          );
        });
  }
}
