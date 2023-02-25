import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/models/models.dart';

class CommentBox extends StatelessWidget {
  final CombinedModel cModel;
  const CommentBox({super.key, required this.cModel});

  @override
  Widget build(BuildContext context) {
    String _text = '';
    _text = cModel.comment;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          const Icon(
            Icons.sticky_note_2_outlined,
            size: 35,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextFormField(
              initialValue: _text,
              cursorColor: Colors.green,
              keyboardType: TextInputType.text,
              maxLength: 20,
              decoration: InputDecoration(
                counterText: '',
                hintText: 'Agregar comentario (Opcinal)',
                hintStyle: const TextStyle(
                  fontSize: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
              onChanged: (txt) => cModel.comment = txt,
            ),
          ),
        ],
      ),
    );
  }
}
