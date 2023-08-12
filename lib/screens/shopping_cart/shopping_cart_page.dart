import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        CartItem2(),
        SizedBox(
          height: 10,
        ),
        CartItem2(),
        SizedBox(
          height: 180,
        ),
        OrderInfo(),
        SizedBox(
          height: 10,
        ),
        OrderButton(),
      ]),
    );
  }

  //Crear botón para ordenar la comida
  //Agregar notificación para cunado se haya hecho la ´roden
}

class CartItem2 extends StatelessWidget {
  const CartItem2({super.key});

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
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
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

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            height: 100,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Orden',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Comisión',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Total',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '\$90',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '\$1',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '\$91',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          )

          // Row(
          //   children: [
          //     //Align(),
          //     SizedBox(
          //       //width: double.maxFinite,
          //       child: Align(
          //           alignment: Alignment.topRight,
          //           child: IconButton(
          //               onPressed: () {},
          //               icon: const Icon(
          //                 Icons.more_vert_outlined,
          //                 color: Colors.deepPurpleAccent,
          //               ))),
          //     ),
          //     SizedBox(
          //       width: MediaQuery.of(context).size.width * .5,
          //       height: 100,
          //       child: Container(
          //           alignment: Alignment.centerRight,
          //           decoration: const BoxDecoration(color: Colors.orange),
          //           child: const Text('label')),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}

class OrderButton extends StatelessWidget {
  const OrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    void showOrderedNotification(BuildContext context) {
      ScaffoldMessenger.of(context).clearSnackBars();
      final customSnackBar = SnackBar(
        backgroundColor: const Color.fromARGB(255, 249, 144, 106),
        content: const Text(
          'Orden realzada con éxito!!',
          style: TextStyle(color: Colors.white),
        ),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
            textColor: Colors.white, label: 'QUITAR', onPressed: () {}),
      );
      ScaffoldMessenger.of(context).showSnackBar(customSnackBar);
    }

    return Container(
      padding: const EdgeInsets.only(left: 10, right: 20),
      width: double.infinity,
      child: FilledButton(
          style: const ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
            backgroundColor: MaterialStatePropertyAll(Color(0xFFFF7F50)),
          ),
          onPressed: () => showOrderedNotification(context),
          //icon: const Icon(Icons.),
          child: const Text(
            'Ordenar',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    );
  }
}
