import 'package:flutter/material.dart';
//mateapp para crear el esqueleto de un formulario
void main() => runApp(const formulario());

// ignore: camel_case_types
class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

// ignore: camel_case_types
class _formularioState extends State<formulario> {
  final GlobalKey<FormState> estadoFormulario = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sky Limit',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sky Limit'),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          child: Form(
            key: estadoFormulario,
            child: Column(
              children: [
                Container(child: TextFormField(
                  validator: (value){
                    if (!value!.contains("@")){
                      return "El correo no es valido";
                      } else {

                      }
                    },
                    decoration:
                    const InputDecoration(hintText: "Correo Electronico"),
                )),

                Container(child: TextFormField(
                  obscureText: true,
                  validator: (value){
                    if(value!.length < 6){
                      return "Debe tener minimo 6 caracteres";
                    }
                    return null;
                  },
                  decoration:
                  const InputDecoration(hintText: "Contraseña"),
                )),

                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){
                    if(estadoFormulario.currentState!.validate()){
                      print("Excelente");
                    } else {
                      print("Error");
                    }
                  }, child: const Text("validar"),))
              ]),
          ),
        ),
      ),
    );
  }
}