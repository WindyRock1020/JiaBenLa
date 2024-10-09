import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'register.dart';
import 'category.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController1 = TextEditingController();
    final nameController2 = TextEditingController();

    final nameField1 = TextField(
      controller: nameController1,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '帳號',
        labelStyle: TextStyle(fontSize: 20),
      ),
    );

    final nameField2 = TextField(
      controller: nameController2,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: '密碼',
        labelStyle: TextStyle(fontSize: 20),
      ),
      obscureText: true,
    );

    final btn1 = ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Register())),
      child: const Text('註冊'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD9D9D9)),
        foregroundColor: MaterialStateProperty.all(Color(0xFF8C8888)),
      ),
    );

    final btn2 = ElevatedButton(
      onPressed: () => _showForgotPasswordDialog(context),
      child: const Text('忘記密碼'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD9D9D9)),
        foregroundColor: MaterialStateProperty.all(Color(0xFF8C8888)),
      ),
    );

    final btn3 = ElevatedButton(
      onPressed: () async {
        String email = nameController1.text.trim();
        String password = nameController2.text.trim();

        if (email.isEmpty || password.isEmpty) {
          Fluttertoast.showToast(msg: "請填寫所有欄位");
          return;
        }

        try {
          UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: email,
            password: password,
          );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Category()),
          );
          Fluttertoast.showToast(msg: "登入成功");
        } on FirebaseAuthException catch (e) {
          String message;
          if (e.code == 'user-not-found') {
            message = '用戶不存在';
          } else if (e.code == 'wrong-password') {
            message = '密碼錯誤';
          } else {
            message = '登入失敗: ${e.message}';
          }
          Fluttertoast.showToast(msg: message);
        }
      },
      child: const Text('登入'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFD9D9D9)),
        foregroundColor: MaterialStateProperty.all(Color(0xFF8C8888)),
      ),
    );

    final topic = const Text(
      '嘉義美食推薦',
      style: TextStyle(
        fontSize: 30,
      ),
    );

    final icon = Image.asset('assets/diet.png');

    return Scaffold(
      appBar: AppBar(
        title: const Text('登入'),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFEDC0),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: <Widget>[
                icon,
                topic,
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
                  child: btn1,
                  width: 200,
                  height: 40,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                Container(
                  child: btn3,
                  width: 200,
                  height: 40,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                ),
                Container(
                  child: btn2,
                  width: 200,
                  height: 40,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: Text(msg),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.blue,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showForgotPasswordDialog(BuildContext context) {
    final emailController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('重設密碼'),
        content: TextField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: '輸入註冊的帳號',
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () async {
              String email = emailController.text.trim();
              if (email.isEmpty) {
                Fluttertoast.showToast(msg: "請輸入帳號");
                return;
              }

              try {
                await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
                Fluttertoast.showToast(msg: "重設密碼郵件已發送");
                Navigator.of(context).pop();
              } on FirebaseAuthException catch (e) {
                Fluttertoast.showToast(msg: "重設密碼失敗: ${e.message}");
              }
            },
            child: const Text('確認'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
        ],
      ),
    );
  }
}
