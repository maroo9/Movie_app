import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app1/core/Colorsmanger/Colorsmanger.dart';
import 'package:movie_app1/core/Assetsmanger/Assetsmanger.dart';
import 'package:movie_app1/core/Routesmanger/Routesmanger.dart';

import '../../Widget/CustomTextButtom.dart';
import '../../Widget/CustomTextForm.dart';
import '../../config/resources/isValidate.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailcontroller;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void initState() {
    // TODO: implement initState
    _emailcontroller = TextEditingController();

    super.initState();
  }

  void dispose() {
    _emailcontroller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanger.Black,
      appBar: AppBar(
        backgroundColor: Colorsmanger.Black,
        leading: IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context, Routesmanger.Logins);
        }, icon: Icon(Icons.arrow_back), color: Colorsmanger.yellow,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ImageAssets.womenontheOffice),
          SizedBox(height: 24,),
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
        SizedBox(height: 24,),
        Container(
          decoration: BoxDecoration(
            color: Colorsmanger.yellow,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
          child:CustomTextButton(texts: "VerifyEmail",textColor: Colorsmanger.Black, onTap: (){
            Navigator.pushNamed(context, Routesmanger.mainlayout);
          }
          ),
        ),
        ],
      ),

    );
  }
}


