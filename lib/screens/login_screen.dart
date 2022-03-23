import 'package:flutter/material.dart';
import 'package:plantilla/providers/login_form_provider.dart';
import 'package:plantilla/ui/input_decorations.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _PurpleBox(),
            const SizedBox(height: 50),
            Text(
              'Iniciar \nSecion',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 50),
            ChangeNotifierProvider(
                create: (_) => LoginFromProvider(), child: _LoginForm()),
            const SizedBox(height: 80),
            const Text(
              'Crear una nueva cuenta',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final LoginForm = Provider.of<LoginFromProvider>(context);

    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 50), // margen para correo y contra
      child: Form(
        key: LoginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecorations(
                hintText: 'joel.57@hotmail.com',
                labelText: 'Correo electronico',
                prefixIcon: Icons.alternate_email_rounded),
            onChanged: (value) => LoginForm.email = value,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'Correo electronico invalido ';
            },
          ),
          const SizedBox(height: 40),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecorations(
                hintText: '********',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_outline),
            onChanged: (value) => LoginForm.password = value,
            validator: (value) {
              if (value != null && value.length >= 6) return null;

              return 'Contraseña incorrecta ';
            },
          ),
          const SizedBox(height: 20),
          MaterialButton(
              color: const Color.fromARGB(255, 195, 28, 28),
              child: const Text(
                'Registrar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: (() {
                {
                  if (!LoginForm.isValidForm()) return;
                  Navigator.pushReplacementNamed(context, 'home');
                }
              })),
        ]),
      ),
    );
  }

  fromARGB(int i, int j, int k, int l) {}
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBack(),
      child: const Icon(Icons.person_pin, color: Colors.white, size: 100),
    );
  }

  BoxDecoration _purpleBack() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 226, 35, 14),
        Color.fromARGB(227, 207, 5, 5)
      ]));
}
