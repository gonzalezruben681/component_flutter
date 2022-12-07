import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Rubén',
      'last_name': 'González',
      'email': 'ruben@gmail.com',
      'password': '12345',
      'role': 'Admin',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(children: [
            CustomInputField(
              labelText: 'Nombre',
              hintText: 'Nombre del usuario',
              formProperty: 'first_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Apellido',
              hintText: 'Apellido del usuario',
              formProperty: 'last_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Email',
              hintText: 'Correo del usuario',
              keyboardType: TextInputType.emailAddress,
              formProperty: 'email',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Contraseña',
              hintText: 'Contraseña del usuario',
              formProperty: 'password',
              formValues: formValues,
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(
                  value: 'Admin',
                  child: Text('Admin'),
                ),
                DropdownMenuItem(
                  value: 'Superuser',
                  child: Text('Superuser'),
                ),
                DropdownMenuItem(
                  value: 'Developer',
                  child: Text('Developer'),
                ),
                DropdownMenuItem(
                  value: 'Jr. Developer',
                  child: Text('Jr. Developer'),
                ),
              ],
              onChanged: (value) {
                print(value);
                formValues['role'] = value ?? 'Admin';
              },
            ),
            ElevatedButton(
                onPressed: () {
                  // sirve para minimizar el teclado
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no válido');
                    return;
                  }
                  //* TODO: imprimir valores del formulario
                  print(formValues);
                },
                child: SizedBox(
                    width: double.infinity,
                    child: Center(child: const Text('Guardar'))))
          ]),
        ),
      )),
    );
  }
}
