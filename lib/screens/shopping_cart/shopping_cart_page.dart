import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        SizedBox(
          height: 100,
        ),
        _CartItem2(),
        SizedBox(
          height: 100,
        ),
        _CartItem2(),
      ]),
    );
  }

  //Crear un widget con la información del opedido (Total y comisión)
  //Crear botón para ordenar la comida
  //Agregar notificación para cunado se haya hecho la ´roden
}

class _CartItem2 extends StatelessWidget {
  const _CartItem2({super.key});

  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width * 0.4;

    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 2.0,
      child: SizedBox(
        width: double.infinity,
        //height: 120,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/burguer.jpg',
              width: imageSize,
            ),
            Positioned(
              left: imageSize + 10,
              top: 20,
              child: const Wrap(children: [
                Text(
                  'Hamburguesa con papas',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ]),
            ),
            Positioned(
              left: imageSize + 10,
              top: 40,
              child: const Text('\$50'),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFFF7F50),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(20))),
                  child: const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.close, color: Colors.white),
                    //color: Colors.red,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
