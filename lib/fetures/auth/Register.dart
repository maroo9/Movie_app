import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app1/Widget/CustomTextButtom.dart';
import 'package:movie_app1/core/Assetsmanger/Assetsmanger.dart';

import '../../Widget/CustomTextForm.dart';
import '../../config/resources/isValidate.dart';
import '../../core/Colorsmanger/Colorsmanger.dart';
import '../../core/Routesmanger/Routesmanger.dart';
class Register extends StatefulWidget {
   Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool securePassword = true; // this
  late TextEditingController _namecontroller; // this
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;
  late TextEditingController _repasswordcontroller; //
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void initState() {
    // TODO: implement initState
    super.initState();
    _namecontroller = TextEditingController();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _repasswordcontroller = TextEditingController();
  } // this
  void dispose() {
    _namecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _repasswordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        backgroundColor: Colorsmanger.Black,
    appBar:
    AppBar(
      backgroundColor: Colorsmanger.Black,
      leading: IconButton(onPressed: (){
        Navigator.pushReplacementNamed(context, Routesmanger.Logins);
      }, icon: Icon(Icons.arrow_back),color: Colorsmanger.yellow,
    ),
    ),
     body:
     SingleChildScrollView(
    child: Column(
mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(Imagemanger.Avtarman),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 70,
            backgroundImage:AssetImage(Imagemanger.Avtar),
          ),
          SizedBox(height: 24,),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(Imagemanger.Avtarbear),
          ),


        ],
      ),
      SizedBox(height: 10,),
      Text("Avtar",style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 16,color: Colorsmanger.White),),
      SizedBox(height: 12,),
      CustomTextForm(
        labelstyle: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 10,color: Colorsmanger.White),
        controller: _namecontroller,
        validator: (input) {
          if (input == null || input
              .trim()
              .isEmpty) {
            return "enter the name :";
          }
        },
        isObscure: false,
        labelText:"name:",
        prefixIcon: Icons.person,
      ),
      
      
      
      
      
      CustomTextForm(
        labelstyle: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w400,color: Colorsmanger.White),
        labelText: "Email",
        prefixIcon: Icons.email_outlined,
        controller: _emailcontroller,
        validator:(input) {
          if (input == null || input
              .trim()
              .isEmpty) {
            return "enter the email :";
          }
          if (!Validator.isValidEmail(input)) {
            return "the email format isn't coreect ";
          }
        },
        isObscure: true,

      ),
      CustomTextForm(controller: _passwordcontroller,
        labelText: "Passwords",
        labelstyle:  GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w400,color: Colorsmanger.White),
        prefixIcon: Icons.lock,
        suffixIcon:  IconButton(onPressed: (){
          securePassword=!securePassword;
          setState(() {

          });


        }, icon: Icon(securePassword ? Icons.visibility_off : Icons
            .visibility),)


        , validator:   (input) {
          if (input == null || input
              .trim()
              .isEmpty) {
            return "the password is empty  :";
          }
          if (input.length < 8) {
            return " the password should be at least 6";
          }
          if (Validator.isValidEmail(input)) {
            return "the email format isn't correct ";
          }
        },),

      CustomTextForm(controller: _repasswordcontroller,
        labelText: "Confirm password",
        labelstyle:  GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w400,color: Colorsmanger.White),
        prefixIcon: Icons.lock,
        suffixIcon:  IconButton(onPressed: (){
          securePassword=!securePassword;
          setState(() {

          });


        }, icon: Icon(securePassword ? Icons.visibility_off : Icons
            .visibility),)


        , validator:   (input) {
          if (input == null || input
              .trim()
              .isEmpty) {
            return "the password is empty  :";
          }
          if (input.length < 8) {
            return " the password should be at least 6";
          }
          if (Validator.isValidEmail(input)) {
            return "the email format isn't correct ";
          }
        },),
      SizedBox(height: 24,),
      TextFormField(
        decoration: InputDecoration(
          prefixIcon:  Icon(Icons.phone),
          labelText: "phoneNumber",
          labelStyle: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 10,color: Colorsmanger.White),

        ),
      ),
      SizedBox(height: 24,),
      Container(
        decoration: BoxDecoration(
          color: Colorsmanger.yellow,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
        child:CustomTextButton(texts: "Create account",textColor: Colorsmanger.Black, onTap: (){
          Navigator.pushNamed(context, Routesmanger.Logins);
        }
        ),
      ),
         SizedBox(height: 18),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Text("already Have account ?",style:GoogleFonts.inter(color: Colorsmanger.White),),
         InkWell(
           onTap: () {
             Navigator.pushNamed(context, Routesmanger.Logins);
           },
           child: Text(
             "Login ",
             style: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.w600,
               color: Colorsmanger.yellow,

             ),
           ),
         ),


        ],
    ),SizedBox(height: 34,),
      Container(
        width: 120,

        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(60),
          border: Border.all(color: Colors.yellow, width: 3),
        ),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){}, icon: Image(image: AssetImage(Imagemanger.EgyptFlag),width: 27,)),
          IconButton(onPressed: (){}, icon: Image(image: AssetImage(Imagemanger.UsaFlag),width: 27,)),
        ],
      ),
      ),
       ],
    ),
     ),
    );

  }
}
