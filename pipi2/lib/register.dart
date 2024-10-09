import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final nameController1 = TextEditingController();
    final nameController2 = TextEditingController();
    final nameController3 = TextEditingController();

    var appBar = AppBar(
      title: const Text('註冊'),
      centerTitle: true,
      backgroundColor: Color(0xFFFFEDC0),
    );

    final nameField1 = TextField(
      controller: nameController1,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '輸入帳號',
        labelStyle: TextStyle(fontSize: 20),
      ),
    );

    final nameField2 = TextField(
      controller: nameController2,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '輸入密碼',
        labelStyle: TextStyle(fontSize: 20),
      ),
      obscureText: true,
    );

    final nameField3 = TextField(
      controller: nameController3,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '確認密碼',
        labelStyle: TextStyle(fontSize: 20),
      ),
      obscureText: true,
    );

    final btn1 = ElevatedButton(
      onPressed: () async {
        if (nameController2.text != nameController3.text) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('密碼不匹配')),
          );
          return;
        }

        try {
          UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
            email: nameController1.text.trim(),
            password: nameController2.text.trim(),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('註冊成功')),
          );
        } on FirebaseAuthException catch (e) {
          String message;
          if (e.code == 'weak-password') {
            message = '密碼過於簡單';
          } else if (e.code == 'email-already-in-use') {
            message = '該帳號已被註冊';
          } else {
            message = '註冊失敗: ${e.message}';
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        }
      },
      child: const Text('註冊'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD9D9D9)),
        foregroundColor: MaterialStateProperty.all(Color(0xFF8C8888)),
      ),
    );

    final widget = Center(
      child: Column(
        children: <Widget>[
          Container(
            child: nameField1,
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            child: nameField2,
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            child: nameField3,
            width: 200,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          Container(
            child: btn1,
            width: 200,
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );

    final page = Scaffold(
      appBar: appBar,
      body: widget,
    );

    return page;
  }
}
