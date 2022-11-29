import 'package:flutter/material.dart';
import 'package:provider_example/widgets/myButton.dart';

class InformationProvider extends StatelessWidget {
  const InformationProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'A continuación se mostrarán los datos que han sido guardados y administrados con Provider',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
      bottomSheet: myButton(
        title: 'Siguiente',
        disabled: false,
        onTap: () {
          Navigator.pushReplacementNamed(context, 'list');
        },
      ),
    );
  }
}
