import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_album/Login/login.dart';

class SignUpPage extends StatefulWidget {

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final nameController = TextEditingController();

  final emailcontroller = TextEditingController();

  final passcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();


  late int updateindex;

  bool _isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.brown,

        body: Stack(
            children: [

              Positioned( left: 130,top: 130,
                child: Text('Register',style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold,
                    color:Colors.white

                ),),
              ),
              Positioned( left: 80,top: 170,
                child: Text('Create your new account',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold,
                    color:Colors.white

                ),),
              ),

              Positioned(
                top: 230,left: 20,right: 20,
                child: SizedBox(
                  height: 45,
                  child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person,color: Colors.black,),
                          hintText: 'Full Name',

                          hintStyle: TextStyle(color: Color.fromRGBO(133, 127, 127, 1)
                          ),
                          prefixIconColor: Color.fromRGBO(8, 165, 98, 1),
                          filled: true,
                          fillColor: Color.fromRGBO(226, 223, 223, 1),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(226, 223, 223, 1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(30)
                          )
                      )
                  ),
                ),
              ),

              Positioned(
                top: 300,left: 20,right: 20,
                child: SizedBox(
                  height: 45,
                  child: TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color.fromRGBO(133, 127, 127, 1)
                          ),
                          prefixIconColor: Color.fromRGBO(8, 165, 98, 1),
                          filled: true,
                          fillColor: Color.fromRGBO(226, 223, 223, 1),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(226, 223, 223, 1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(30)
                          )
                      )
                  ),
                ),
              ),

              Positioned(
                top: 370,left: 20,right: 20,
                child: SizedBox(height: 45,
                  child: TextFormField(
                      controller: passcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_rounded,color: Colors.black,),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Color.fromRGBO(133, 127, 127, 1)
                          ),
                          prefixIconColor: Color.fromRGBO(8, 165, 98, 1),
                          filled: true,
                          fillColor: Color.fromRGBO(226, 223, 223, 1),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(226, 223, 223, 1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(30)
                          )
                      )
                  ),
                ),
              ),

              Positioned(
                top: 440,left: 20,right: 20,
                child: SizedBox(height: 45,
                  child: TextFormField(
                      controller: passcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_rounded,color: Colors.black,),
                          hintText: 'Confirm Password',
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          suffixIconColor: Color.fromRGBO(8, 165, 98, 1),
                          hintStyle: TextStyle(color: Color.fromRGBO(133, 127, 127, 1)
                          ),
                          prefixIconColor: Color.fromRGBO(8, 165, 98, 1),
                          filled: true,
                          fillColor: Color.fromRGBO(226, 223, 223, 1),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(226, 223, 223, 1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(30)
                          )
                      )
                  ),
                ),
              ),

              Positioned( top: 500,left: 20,
                child: Checkbox(

                  value: _isAccepted,
                  checkColor: Color.fromRGBO(8, 165, 98, 1),
                  onChanged: (bool? value) {
                    setState(() {
                      _isAccepted = value ?? false;
                    });
                  },
                ),
              ),
              Positioned(top: 514,left: 60,
                child: Expanded(
                  child: Text(
                    'I accept the policy and terms',style: TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Positioned(
                  bottom: 150,left: 15,
                  child: SizedBox(width: 320,
                    height: 45,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                          (context)=>Loginpage()));
                    },
                        child: Text('SignUp',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black
                        )
                    ),
                  )),

              Positioned(
                bottom: 100,left: 60,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginpage()));
                  },
                  child: Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                          fontSize: 15,color: Colors.white,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(
                                fontSize: 15,
                                color:Colors.black
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  ),
                ),
              ),
            ])
    );
  }
}
