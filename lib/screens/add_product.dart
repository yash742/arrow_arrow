import 'package:flutter/material.dart';

class Editedproductscreen extends StatefulWidget {
  static const namedroute = "/productpage";
  @override
  _EditedproductscreenState createState() => _EditedproductscreenState();
}

class _EditedproductscreenState extends State<Editedproductscreen> {
  final _pricefocusnode = FocusNode();
  final _descriptionfocusnode = FocusNode();
  final _urlfocusnode = FocusNode();
  final _urltexteditingcontroller = TextEditingController();
  @override
  void dispose() {
    _pricefocusnode.dispose();
    _descriptionfocusnode.dispose();
    _urlfocusnode.dispose();
    _urltexteditingcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('edit product'),
      ),
      body: Form(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: 'TITLE'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_pricefocusnode);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'amount'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              focusNode: _pricefocusnode,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_descriptionfocusnode);
              },
            ),
            TextFormField(
              cursorWidth: 5,
              cursorRadius: Radius.circular(10),
              decoration: InputDecoration(
                  hintText: 'type your words', fillColor: Colors.purple),
              maxLines: 3,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.multiline,
              focusNode: _descriptionfocusnode,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_urlfocusnode);
              },
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.pink),
                        borderRadius: BorderRadius.circular(10)),
                    child: _urltexteditingcontroller.text.isEmpty
                        ? Text(
                            'ooops',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 50, color: Colors.grey),
                          )
                        : FittedBox(
                            child: Image.network(
                            _urltexteditingcontroller.text,
                            fit: BoxFit.cover,
                          ))),
                Container(
                  width: 150,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'image url'),
                    keyboardType: TextInputType.url,
                    textInputAction: TextInputAction.done,
                    controller: _urltexteditingcontroller,
                    focusNode: _urlfocusnode,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
