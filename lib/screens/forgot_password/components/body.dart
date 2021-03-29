import 'package:flutter/material.dart';
import 'package:thriftshop/components/custom_surfix_icon.dart';
import 'package:thriftshop/constants.dart';
import 'package:thriftshop/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Forgot Password", 
            style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
              color: Colors.black,
              fontWeight: FontWeight.bold,
              ),
            ),
            Text("Please enter your email and we'll send \nyou a link to return to your account",
            textAlign: TextAlign.center,
            ),
            ForgotPassForm(),

        ],
        
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            } else if (emailValidatorRegExp.hasMatch(value) && 
                errors.contains(kInvalidEmailError)){
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                } return null;
          },
          validator: (value) {
            if (value.isEmpty && !errors.contains(kEmailNullError)) {
              setState(() {
                errors.add(kEmailNullError);
              });
            } else if (!emailValidatorRegExp.hasMatch(value) && 
                !errors.contains(kInvalidEmailError)){
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                } return null;
          },
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomeSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
          ),
        )
        ],
      ),
    );
  }
}