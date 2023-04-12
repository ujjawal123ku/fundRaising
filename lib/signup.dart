import 'package:flutter/material.dart';
class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      title: Text('Sign Up',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w200),),
      ),
      body: Card(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:10,top: 20,),
              child: Text("Create your account",textAlign:TextAlign.center,style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,),),
            ),
            ListView(
                children: [Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1,right: 20,left: 10),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "NAME ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )

                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Email ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )

                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "mobile no ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )

                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "password  ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )

                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "confirm password ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )

                      ),),
                      SizedBox(
                        height: 45,
                      ),

                        ElevatedButton(


                          onPressed: (){
                            Navigator.pushNamed(context, "/LoginPage");
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sign Up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,),),
                          ),
                        ),


                    ],
                  ),

                ),
                ]
            )
          ],
        ),
      ),
    );
  }
}
