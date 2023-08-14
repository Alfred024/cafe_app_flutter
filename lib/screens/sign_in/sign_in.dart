import 'package:flutter/material.dart';
import 'package:food_app/config/theme/app_theme.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // final inputsDecoration = InputDecoration(
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    //     focusedBorder: const OutlineInputBorder(
    //         borderSide: BorderSide(color: Colors.red)));

    return const Center(
      child: Padding(
        padding: EdgeInsets.only(right: 40, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Registro',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFF7F50)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Correo institucional',
                  prefixIcon: Icon(Icons.email_rounded)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Nombre', prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  prefixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Confirmar contraseña',
                  prefixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
            SizedBox(
              height: 10,
            ),
            // FilledButton.icon(
            //     onPressed: () {},
            //     icon: const Icon(Icons.app_registration),
            //     label: const Text('Guardar datos')),
          ],
        ),
      ),
    );
  }
}
