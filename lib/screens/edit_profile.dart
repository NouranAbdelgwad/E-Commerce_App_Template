import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Edit Profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ]),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Stack(
              children: [
                ClipOval(
                    child: Image.asset(
                  "assets/images/profile.jpg",
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                )),
                Positioned(
                  top: 80,
                  left: 80,
                  width: 35,
                  height: 35,
                  child: Container(
                    child: Icon(
                      Icons.camera_alt_outlined,
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 238, 238),
                        shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          ]),
          Form(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(71, 158, 158, 158),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  offset: Offset(2, 2))
                            ]),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                              hintText: "Name"),
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please enter the name!";
                          }
                        },
                        
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(71, 158, 158, 158),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  offset: Offset(2, 2))
                            ]),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                              hintText: "Email"),
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please enter the name!";
                          }
                        }
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(71, 158, 158, 158),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  offset: Offset(2, 2))
                            ]),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: "Phone"),
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please enter the name!";
                          }
                        }
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(71, 158, 158, 158),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  offset: Offset(2, 2))
                            ]),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: "Country"),
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please enter the name!";
                          }
                        }
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            
                            onPressed: () {
                              Navigator.pushNamed(context, "my_orders");
                              bool val = formKey.currentState!.validate();
                if (val) {
                  print("success");
                } else {
                  print("error");
                }
                            },
                          
                            child: Text("Save"),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero),
                                backgroundColor: const Color.fromARGB(255, 148, 123, 235),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 155)),
                          )
                        ],
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
