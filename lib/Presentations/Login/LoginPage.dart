import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Routes/app_routes.dart';
import 'Controller/LoginController.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final LoginController _loginController = Get.put(LoginController());
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 5.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Color(0xFF121168)),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? true || !(value?.contains('@gmail.com') ?? false)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },

                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 5.0),
                  child: Obx(() {
                    return TextFormField(
                      obscureText: !_loginController.isPasswordVisible.value,
                      style: TextStyle(fontSize: 14.0),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key, color: Color(0xFF121168)),
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: _loginController.togglePasswordVisibility,
                          child: Icon(_loginController.isPasswordVisible.value
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true || value!.length < 8) {
                          return 'Password must be at least 8 characters long';
                        }
                        return null;
                      },

                    );
                  }),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget Password",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(380, 50)),
                    backgroundColor: MaterialStateProperty.all(Color(0xFF121168)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Get.toNamed(AppRoutes.Home);
                    }
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Powered By",
                      style: TextStyle(
                          color: Color(0xFF8ABDC8), fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Image(
                          height: 15,
                          width: 20,
                          image: AssetImage("assets/2.png"),
                        ),
                        Text(
                          "dashloc",
                          style: TextStyle(
                              color: Color(0xFF3E4387),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
