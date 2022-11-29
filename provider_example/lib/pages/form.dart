import 'package:flutter/material.dart';
import 'package:provider_example/widgets/myAppbar.dart';
import 'package:provider_example/widgets/myButton.dart';
import 'package:provider_example/widgets/myInput.dart';
import 'package:provider/provider.dart';

import '../providers/store.dart';

class FormProvider extends StatefulWidget {
  FormProvider({Key? key}) : super(key: key);

  @override
  State<FormProvider> createState() => _FormProviderState();
}

class _FormProviderState extends State<FormProvider> {
  TextEditingController _nombre = TextEditingController();

  TextEditingController _apellido = TextEditingController();

  TextEditingController _edad = TextEditingController();

  TextEditingController _correo = TextEditingController();

  bool disabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(
        title: 'Formulario',
      ),
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);

          if (focus.hasFocus && !focus.hasPrimaryFocus) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Ingresa tus datos',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //Nombre
                myInput(
                  controller: _nombre,
                  placeholder: 'Nombre',
                  onChanged: () {
                    disabledF();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                //Aprellido
                myInput(
                  controller: _apellido,
                  placeholder: 'Apellido',
                  onChanged: () {
                    disabledF();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                //Edad
                myInput(
                  controller: _edad,
                  placeholder: 'Edad',
                  onChanged: () {
                    disabledF();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                //Correo
                myInput(
                  controller: _correo,
                  placeholder: 'Correo',
                  onChanged: () {
                    disabledF();
                  },
                ),
                const SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: myButton(
        disabled: disabled,
        onTap: () {
          var store = Provider.of<Store>(context, listen: false);

          store.nombre = _nombre.text;
          store.apellido = _apellido.text;
          store.edad = _edad.text;
          store.correo = _correo.text;

          Navigator.of(context).pushReplacementNamed('information');
        },
        title: 'Siguiente',
      ),
    );
  }

  disabledF() {
    if (_nombre.text != '' &&
        _nombre.text != null &&
        _apellido.text != '' &&
        _apellido.text != null &&
        _edad.text != '' &&
        _edad.text != null &&
        _correo.text != '' &&
        _correo.text != null) {
      setState(() {
        disabled = false;
      });
    } else {
      setState(() {
        disabled = true;
      });
    }
  }
}
