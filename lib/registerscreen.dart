import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screen/main.dart';



class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}


class _registerState extends State<register> {

// TEXT EDITOR USED TO FETCH VALUES AND SHOW ON CONSOLE

  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController pass =TextEditingController();

  var _formkey =GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
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
                  color: Colors.black,
                  image: DecorationImage(image: NetworkImage("https://ih1.redbubble.net/image.1345129435.2855/st,small,507x507-pad,600x600,f8f8f8.u1.jpg")),
                ),
              ),
            ),


            Form(
              key: _formkey,
              child: Column(
                children: [

                  SizedBox(height: 20,),

                  Text("REGISTER YOURSELF!",style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),

                  SizedBox(height: 20,),



                  SizedBox(height: 20,),


                  Container(
                      margin: EdgeInsets.symmetric(horizontal:20),
                      child:TextFormField(
                          controller: name,
                          validator: (value){
                            if (value==null || value.isEmpty || value==" ") {
                              return "Name is required ";
                            }
                          },
                          decoration: InputDecoration(
                            label: Text("Enter your name"),
                            border: OutlineInputBorder(

                              borderSide: BorderSide(
                                  color: Colors.lime
                              ),
                            ),
                            prefixIcon: Icon(Icons.person),
                          )
                      )
                  ),

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
                    Navigator.push(context,MaterialPageRoute(builder:(context) => signin(),));

                    if (_formkey.currentState!.validate()) {
                      print(name.text.toString());
                      print(email.text.toString());
                      print(pass.text.toString());

                      name.clear();
                      email.clear();
                      pass.clear();
                    }

                  }, child: Text("Register"))

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}


