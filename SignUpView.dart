import 'package:flutter/material.dart';

import 'customTextFormField.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  GlobalKey key = GlobalKey();
  bool passVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Login View',
        ),
        centerTitle: true,
      ),
      body: Form(
        key: key,
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              Focus.of(context).unfocus();
            },
            child: Container(
              width: MediaQuery.of(context)!.size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const CustomTextFornmField(
                      label: 'enter email',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFornmField(
                      obsecureText: passVisible,
                      label: 'enter password',
                      iconData: !passVisible ? Icons.visibility_off_outlined : Icons.visibility,
                      onPressedSuffixIcon: () {
                        passVisible = !passVisible ;
                        setState(() {

                        });
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16)),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: const Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        // Go to forget password View
                      },
                      child: Text('Forget Password'  ,style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,

                      ),),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('You do not hava account ? ', style: TextStyle(
                          fontSize: 16,

                        ),),
                        GestureDetector(
                          onTap: (){
                            // Go to forget Sign up View
                          },
                          child: Text('Sign up', style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.underline
                          ),),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
