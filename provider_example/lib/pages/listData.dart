import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/widgets/myAppbar.dart';
import 'package:provider_example/widgets/myButton.dart';

import '../providers/store.dart';

class ListDataProvider extends StatelessWidget {
  ListDataProvider({Key? key}) : super(key: key);

  TextStyle style1 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  TextStyle style2 = TextStyle(fontSize: 18);

  var store;

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
        builder: (context, store, child) => Scaffold(
              appBar: myAppbar(
                title: 'Datos',
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Datos en Provider',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nombre:',
                          style: style1,
                        ),
                        Text(
                          store.nombre,
                          style: style2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Apellido:',
                          style: style1,
                        ),
                        Text(
                          store.apellido,
                          style: style2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Edad:',
                          style: style1,
                        ),
                        Text(
                          store.edad,
                          style: style2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Correo:',
                          style: style1,
                        ),
                        Text(
                          store.correo,
                          style: style2,
                        )
                      ],
                    )
                  ],
                ),
              ),
              bottomSheet: myButton(
                disabled: false,
                onTap: () {
                  print('función');
                  Navigator.of(context).pushReplacementNamed('form');
                },
                title: 'Ir al inicio',
              ),
            ));
  }
}
