import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // final inputsDecoration = InputDecoration(
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    //     focusedBorder: const OutlineInputBorder(
    //         borderSide: BorderSide(color: Colors.red)));

    return Center(
      child: Padding(
        padding: EdgeInsets.only(right: 40, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Registro',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFF7F50)),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Correo institucional',
                  prefixIcon: Icon(Icons.email_rounded)),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Nombre', prefixIcon: Icon(Icons.person)),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  prefixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Confirmar contraseña',
                  prefixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)),
                  onPressed: () {},
                  child: const Text('Guardar datos'),
                )),
          ],
        ),
      ),
    );
  }
}
