//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fruits_store/templates/login.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  //our form key
  final _formKey = GlobalKey<FormState>();

  //Editing Controller
  final TextEditingController nombreController = new TextEditingController();
  final apPaternoController = new TextEditingController();
  final apMaternoController = new TextEditingController();
  final emailController = new TextEditingController();
  final contrasenaController = new TextEditingController();
  final confirmContrasenaController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //nombre field
    final nombreField = TextFormField(
        autofocus: false,
        controller: nombreController,
        keyboardType: TextInputType.name,
        //validator: () {},
        onSaved: (value) {
          nombreController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Nombre(s)",
          //hintStyle: TextStyle(color: Colors.orangeAccent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //apPaterno field
    final apPaternoField = TextFormField(
        autofocus: false,
        controller: apPaternoController,
        keyboardType: TextInputType.name,
        //validator: () {},
        onSaved: (value) {
          apPaternoController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Apellido Paterno",
          //hintStyle: TextStyle(color: Colors.orangeAccent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //apMaterno field
    final apMaternoField = TextFormField(
        autofocus: false,
        controller: apMaternoController,
        keyboardType: TextInputType.name,
        //validator: () {},
        onSaved: (value) {
          apMaternoController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_balance_wallet),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Apellido Paterno",
          //hintStyle: TextStyle(color: Colors.orangeAccent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        //validator: () {},
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Correo Electrónico",
          //hintStyle: TextStyle(color: Colors.orangeAccent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //contrasena field
    final contrasenaField = TextFormField(
        autofocus: false,
        controller: contrasenaController,
        obscureText: true,

        //validator: () {},
        onSaved: (value) {
          contrasenaController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Contraseña",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //confirmContrasena field
    final confirmContrasenaField = TextFormField(
        autofocus: false,
        controller: confirmContrasenaController,
        obscureText: true,

        //validator: () {},
        onSaved: (value) {
          confirmContrasenaController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirmar Contraseña",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final resgistrarButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.green,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
          child: Text(
            "Registrar",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () {
            //pasing this to our root
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            //margin: EdgeInsets.all(15),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 180,
                        child: Image.asset(
                          "assets/logo_fruits.png",
                          fit: BoxFit.contain,
                        )),
                    SizedBox(height: 20),
                    nombreField,
                    SizedBox(height: 20),
                    apPaternoField,
                    SizedBox(height: 20),
                    apMaternoField,
                    SizedBox(height: 20),
                    emailField,
                    SizedBox(height: 20),
                    contrasenaField,
                    SizedBox(height: 20),
                    confirmContrasenaField,
                    SizedBox(height: 20),
                    resgistrarButton,
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
