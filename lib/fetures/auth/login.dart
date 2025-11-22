import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app1/core/Assetsmanger/Assetsmanger.dart';
import 'package:movie_app1/core/Colorsmanger/Colorsmanger.dart';
import 'package:movie_app1/Widget/CustomTextForm.dart';

import '../../config/resources/isValidate.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();

}


class _LoginState extends State<Login> {
  bool securePassword=true;

  late TextEditingController _namecontroller;    // this
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;
  late TextEditingController _repasswordcontroller;//
  GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  void initState() {

    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    super.initState();
  }

  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorsmanger.Black,
        body:
            SingleChildScrollView(
              child: Column(
          children: [
            SizedBox(height: 67,),
            Image(image: AssetImage(Imagemanger.start,),width: 121,height:118 ,),
           SizedBox(height: 69,),
            CustomTextForm(
              labelstyle: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w400,color: Colorsmanger.White),
                labelText: "Passowrds",
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
             labelText: "Passwords:",
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
    return "the email format isn't coreect ";
    }
    },),
            SizedBox(height: 17,),
            Text("Forget Passowrds:",style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 14,),)













          ],
        ),





      ),
    );

  }
}
