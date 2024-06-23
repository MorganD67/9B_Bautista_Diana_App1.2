import 'package:flutter/material.dart';
import 'package:flutter_application_1/pantallas/buscar.dart';
import 'package:flutter_application_1/pantallas/formulario.dart';
import 'package:flutter_application_1/pantallas/listaFeed.dart';
import 'package:flutter_application_1/pantallas/perfil.dart';
import 'package:flutter_application_1/pantallas/tyc.dart';
import 'package:flutter_application_1/widgets/one.dart'; // Importa los datos

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _paginaActual = 0;

final List<Widget> _paginas = [
  const listaFeed(),
  const paginaBuscar(),
  const paginaCuenta(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sky Limit'),
        backgroundColor: Colors.pink,
        actions: const [
          iconbuttons(),
          buttonicons(),
        ],
      ),
      body: Column(
        children: [
                Expanded(child: _paginas[_paginaActual]),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsAndConditions()));
                }, child: const Text("Terminos y condiciones")),
                  ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const formulario()));
                }, child: const Text("Formulario")),
              ],
            ),
          ],
        ),

      bottomNavigationBar:  BottomNavigationBar(
          currentIndex: _paginaActual,
          onTap: (index){
            setState((){
              _paginaActual = index;
            });
          },
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
            BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), label: "Circulo"),
          ],),
    );
  }
}