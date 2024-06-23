import 'package:flutter/material.dart';

void main() => runApp(const TermsAndConditions());

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

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
        body: const TermsAndConditionsContent(),
      ),
    );
  }
}

class TermsAndConditionsContent extends StatelessWidget {
  const TermsAndConditionsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Términos y Condiciones',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '1. Introducción',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Bienvenido a nuestra red social. Al utilizar nuestros servicios, aceptas cumplir con estos términos y condiciones. Por favor, léelos detenidamente.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '2. Uso de la plataforma',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Los usuarios deben respetar las normas de convivencia y abstenerse de publicar contenido ofensivo, ilegal o inapropiado. Nos reservamos el derecho de eliminar cualquier contenido que infrinja estas normas.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '3. Privacidad',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nos comprometemos a proteger la privacidad de nuestros usuarios. Consulta nuestra política de privacidad para obtener más información sobre cómo manejamos tus datos personales.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '4. Responsabilidades del usuario',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Los usuarios son responsables del contenido que publican y de sus interacciones con otros miembros de la plataforma. Nos reservamos el derecho de suspender o eliminar cuentas que violen estos términos.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '5. Modificaciones a los términos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Podemos actualizar estos términos y condiciones en cualquier momento. Te notificaremos sobre cualquier cambio importante a través de la plataforma o por correo electrónico.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '6. Contacto',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Si tienes alguna pregunta o inquietud sobre estos términos y condiciones, no dudes en ponerte en contacto con nosotros a través de nuestros canales de soporte.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Text(
              'Gracias por ser parte de nuestra comunidad.',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
