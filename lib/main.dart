import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screen/main.dart';
import 'package:login_screen/registerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }
}
class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}


class _signinState extends State<signin> {

// TEXT EDITOR USED TO FETCH VALUES AND SHOW ON CONSOLE


  TextEditingController email=TextEditingController();
  TextEditingController pass =TextEditingController();

  var _formkey =GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose

    email.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

        child: Column(

          children:[
            Center(
              child: Container(
                height: 200,
                width: 200,

                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/89/73/52/897352b9246005694b7d7cc0deb213ab.jpg")),
                ),
              ),
            ),


            Form(
              key: _formkey,
              child: Column(
                children: [

                  SizedBox(height: 20,),

                  Text("SIGN IN YOURSELF!",style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),

                  SizedBox(height: 20,),



                  SizedBox(height: 20,),



                  SizedBox(height:20,),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal:20),
                      child:TextFormField(
                          controller: email,
                          validator: (value){
                            if (value==null || value.isEmpty || value==" ") {
                              return "Email is required ";
                            }
                          },
                          decoration: InputDecoration(
                            label: Text("Enter your email"),
                            border: OutlineInputBorder(

                              borderSide: BorderSide(
                                  color: Colors.lime
                              ),
                            ),
                            prefixIcon: Icon(Icons.person),
                          )
                      )
                  ),

                  SizedBox(height: 20,),

                  Container(
                      margin: EdgeInsets.symmetric(horizontal:20),
                      child:TextFormField(
                          controller: pass,
                          validator: (value){
                            if (value==null || value.isEmpty || value==" ") {
                              return "Password is required ";
                            }
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            label: Text("Enter your password"),
                            border: OutlineInputBorder(

                              borderSide: BorderSide(
                                  color: Colors.lime
                              ),
                            ),
                            prefixIcon: Icon(Icons.key),
                          )
                      )
                  ),

                  SizedBox(height:20,),

                  ElevatedButton(onPressed: (){


                    if (_formkey.currentState!.validate()) {
                      print(email.text.toString());
                      print(pass.text.toString());


                      email.clear();
                      pass.clear();
                    }

                  }, child: Text("SignIn")),

                  SizedBox(height: 30,),

                  Text("or sign in with these",style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.w400),),
                  SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/b/%D0%BF%D0%B5%D1%87%D0%B0%D1%82%D1%8C-201003176.jpg")),
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset:Offset(4,10),
                            )]
                        ),

                      ),

                      SizedBox(width: 20,),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                image: NetworkImage("https://www.wizcase.com/wp-content/uploads/2022/05/Facebook-Logo.png")),
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset:Offset(4,10),
                            )]
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),

                  Text("Don't Have an Account ? ",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w300),),
                  /*  ElevatedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
                   }, child:  Text("SignUp",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),)),*/

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> register(),));
                    },
                    child:Text("SignUp",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}


