import 'package:flutter/material.dart';
import 'package:movie_app1/Widget/CustomTextButtom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app1/core/Assetsmanger/Assetsmanger.dart';
import 'package:movie_app1/core/Colorsmanger/Colorsmanger.dart';
import 'package:movie_app1/Widget/CustomTextForm.dart';
import 'package:movie_app1/core/Routesmanger/Routesmanger.dart';

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
            Image(image: AssetImage(ImageAssets.splash,),width: 121,height:118 ,),
            SizedBox(height: 69,),
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
            SizedBox(height: 17,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routesmanger.ForgetPasswords);
                  },
                  child: Text(
                    "Forget Passwords",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colorsmanger.yellow,
                    ),
                  ),
                ),
              ],


            ),
            SizedBox(height: 33,),
            Container(
              decoration: BoxDecoration(
                color: Colorsmanger.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
              child:CustomTextButton(texts: "Login",textColor: Colorsmanger.Black, onTap: (){
                Navigator.pushNamed(context, Routesmanger.mainlayout);
              }
              ),
            ),
            SizedBox(height: 23,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t Have Account ?",style:GoogleFonts.inter(color: Colorsmanger.White),),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routesmanger.Registes);
                  },
                  child: Text(
                    "create account ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colorsmanger.yellow,
                    ),
                  ),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("or"),
                SizedBox(
                  width: 100,
                  child: Divider(
                    endIndent: 1,
                    color: Colorsmanger.yellow,
                    thickness: 0.5,
                  ),
                ),
                Text("Or",style: GoogleFonts.inter(fontWeight: FontWeight.w400,color: Colorsmanger.yellow),),
                SizedBox(
                  width: 100,
                  child: Divider(
                    color: Colorsmanger.yellow,
                    thickness: 0.5,
                  ),
                ),

              ],
            ),
            SizedBox(height: 28,),
            Container(
              decoration: BoxDecoration(
                color: Colorsmanger.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routesmanger.mainlayout);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      Iconmanger.Google,
                      width: 20,

                    ),
                    SizedBox(width: 10),
                    Text(
                      "Login by Google",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colorsmanger.Black,
                      ),
                    ),
                  ],
                ),
              ),























            ),
            SizedBox(height: 34,),
            Container(
              width: 120,

              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(60),
                border: Border.all(color: Colors.yellow, width: 2),
              ),

              child:   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  IconButton(onPressed: (){}, icon: Image(image: AssetImage(ImageAssets.EgyptFlag),width: 27,)),
                  IconButton(onPressed: (){}, icon: Image(image: AssetImage(ImageAssets.UsaFlag),width: 27,)),
                ],
              ),


            ),
          ],
        ),
      ),
    );

  }
}
