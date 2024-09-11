import 'package:flutter/material.dart';
import 'package:my_album/Home/homepage.dart';
import 'package:my_album/Login/signUp.dart';
import 'package:my_album/MyAlbum/album.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
        body: Stack(
          children: [
            Column(
              children: [
                Container(height: 250,width: 400,
                  child: Image.asset('assets/pexels-caio-46274.jpg',
                    fit: BoxFit.fill,

                  ),
                ),
              ],
            ),


            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 300.0),
                  child: Container(

                    child: Column(
                      children: [
                        Text('Welcome Back',
                            style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 26,color: Colors.white,)),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('Login to your account',
                              style: TextStyle(color: Colors.white)
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 30.0,left: 20,right: 20),
                          child: SizedBox(
                            height: 45,
                            child: TextFormField(
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

                        Padding(
                          padding: const EdgeInsets.only(top: 30.0,left: 20,right: 20),
                          child: SizedBox(height: 45,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock_rounded,color: Colors.black,),
                                    hintText: 'Password',
                                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                    suffixIconColor: Colors.black,
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

                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 200),
                          child: TextButton(onPressed: (){}, child: Text('Forget Password ?',
                            style: TextStyle(color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(width: 320,
                            child: ElevatedButton(
                                onPressed: (){
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                      builder: (context)=>Homepage()));
                                },
                                child: Text('Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black
                                )
                            ),
                          ),
                        ),     ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                    child: Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(fontSize: 15,color: Colors.white,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'SignUp',
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
              ],
            ),



          ],
        )
    );
  }
}
