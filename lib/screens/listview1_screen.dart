import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  var avengadores = ["Capitan America", "Thor", "Hulk", "Iron man"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView1'),
        ),
        body: ListView(
          children: [
            ...avengadores
                .map((lista) => ListTile(
                      title: Text(lista),
                      trailing: Icon(Icons.chevron_left_outlined),
                      onTap: () {},
                    ))
                .toList(),
            const Divider(
              height: 20,
              thickness: 6,
              indent: 20,
              endIndent: 21,
            )
          ],
        ));
  }
}
