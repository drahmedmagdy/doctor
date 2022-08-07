import 'package:flutter/material.dart';
import 'package:untitled/loginfirst/login.dart';

class Singup extends StatefulWidget {
  const Singup({Key? key}) : super(key: key);
  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  // ignore_for_file: prefer_typing_uninitialized_variables
  var username, password, email;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Scaffold(
        //appBar: AppBar(
        //title: const Text("sign up"),
        //),
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/1.jpg"), fit: BoxFit.fill)),
      padding: const EdgeInsets.all(20),
      //color: const Color.fromARGB(255, 206, 113, 243),
      child: ListView(children: [
        //const Image(image: AssetImage("assets/images/2.jpg"), height: 400),
        const SizedBox(height: 350),
        Form(
            key: formkey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value != null && value.length < 7) {
                      return "name is too short";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    username = value;
                  },
                  decoration: const InputDecoration(
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 42, 2, 46), width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 42, 2, 46), width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "username",
                      prefixIcon: Icon(Icons.person_add,
                          color: Color.fromARGB(255, 42, 2, 46)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 105, 137, 243)),
                  cursorColor: const Color.fromARGB(255, 42, 2, 46),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value != null && value.length < 7) {
                      return "password is too week";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value;
                  },
                  decoration: const InputDecoration(
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 42, 2, 46), width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 42, 2, 46), width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "password",
                      prefixIcon: Icon(Icons.password_sharp,
                          color: Color.fromARGB(255, 42, 2, 46)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 105, 137, 243)),
                  cursorColor: const Color.fromARGB(255, 42, 2, 46),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value != null && value.length < 7) {
                      return "email is wrong";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value;
                  },
                  decoration: const InputDecoration(
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 42, 2, 46), width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 42, 2, 46), width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "email",
                      prefixIcon: Icon(Icons.email,
                          color: Color.fromARGB(255, 42, 2, 46)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 105, 137, 243)),
                  cursorColor: const Color.fromARGB(255, 42, 2, 46),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "If you have account",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 241, 243, 245)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Login();
                        }));
                      }),
                      child: const Text("click here",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 136, 4, 4))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      var formdate = formkey.currentState;
                      if (formdate!.validate()) {
                        formdate.save();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 76, 65, 236),
                        padding: const EdgeInsets.only(
                            right: 30, left: 30, bottom: 10, top: 10)),
                    child: const Text("Sing up"))
              ],
            )),
      ]),
    ));
  }
}
