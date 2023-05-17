import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class ListView2 extends StatelessWidget {
  var avengadores = ["Capitan America", "Thor", "Hulk", "Iron man"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avengadores Lista 2'),
        ),
        body: ListView.separated(
          //Tamaño de lista
          itemCount: avengadores.length,
          //Constructor para cada ListTile
          itemBuilder: (context, index) => ListTile(
            //Asigando los Listile a su lista
            title: Text(avengadores[index]),
            //Asignando los Iconos de cada Listile
            trailing: Icon(Icons.chevron_right, color: Colors.red),
            onTap: () {
              //Variables de opcion selecionada
              var opc = avengadores[index];
              //Mostrar las variables en consolas
              print(opc);
            },
          ),
//Creamos operadores
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
