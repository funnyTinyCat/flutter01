import 'package:flutter/material.dart';
import 'package:flutter_test_application/config/app_routes.dart';
import 'package:flutter_test_application/config/app_strings.dart';
import 'package:flutter_test_application/provider/app_repo.dart';

import 'package:flutter_test_application/provider/login_provider.dart';

import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // doLogin();
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  AppStrings.hellowWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.loginToContinue,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                TextField(
                  //        controller: usernameController,
                  onChanged: (value) {
                    context.read<LoginProvider>().username = value;
                  },
                  decoration: const InputDecoration(
                    hintText: AppStrings.username,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(251, 252, 251, 0.494),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  //     controller: passwordController,
                  onChanged: (value) {
                    context.read<LoginProvider>().password = value;
                  },
                  decoration: const InputDecoration(
                    hintText: AppStrings.password,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(251, 252, 251, 0.494),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(AppStrings.forgotPassword),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      //          Navigator.of(context).push(MaterialPageRoute(builder: (context){ return HomePage(),},),);
                      //              Navigator.of(context).pushNamed('/home');

                      print("Tu sam, super.");
/*                      Provider.of<LoginProvider>(
                        context,
                        listen: false,
                      ) */
                      context.read<LoginProvider>().login().then((value) {
                        //
                        /*
                        Provider.of<AppRepo>(
                          context,
                          listen: false,
                        ) */
                        context.read<AppRepo>().user = value.user;
                        context.read<AppRepo>().token = value.token;
                        Navigator.of(context).pushReplacementNamed(AppRoutes
                            .main); //                 .pushReplacementNamed(AppRoutes.main);
                      });
                      print("sad sam iza.");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text("Log in"),
                  ),
                ),
                const Spacer(),
                const Text(
                  "Or sign in with, ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(AppStrings.loginWithGoogle),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/facebook.png',
                            width: 22, height: 22),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(AppStrings.loginWithFacebook),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      AppStrings.dontHaveAccount,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      child: const Text(
                        AppStrings.signup,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
