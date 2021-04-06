import 'package:flutter/material.dart';
import 'package:thriftshop/components/custom_surfix_icon.dart';
import 'package:thriftshop/components/default_button.dart';
import 'package:thriftshop/components/form_error.dart';
import 'package:thriftshop/screens/checkout/checkout_screen.dart';
import 'package:thriftshop/screens/sign_in/sign_in_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class AdressForm extends StatefulWidget {
  @override
  _AdressFormState createState() => _AdressFormState();
}

class _AdressFormState extends State<AdressForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String name;
  String address;
  String city;
  String postalcode;
  String phonenumber;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
       key: _formKey,
       child: Column(
         children: [
           buildNameFormField(),
           SizedBox(height: getProportionateScreenHeight(30)),
           buildAddressFormField(),
           SizedBox(height: getProportionateScreenHeight(30)),
           buildCityFormField(),
           SizedBox(height: getProportionateScreenHeight(30)),
           buildPostalCodeFormField(),
           SizedBox(height: getProportionateScreenHeight(30)),
           buildPhoneNumberFormField(),
           SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Save Changes",
            press: () {
              if (_formKey.currentState.validate()) {
                // go to otp screen
               Navigator.pushNamed(context, CheckOutScreen.routeName);
              }
            },
          ),
         ],
       ),
    );
  }


  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: " Name",
        hintText: "Enter your name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomeSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address line",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomeSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

 TextFormField buildCityFormField() {
    return TextFormField(
      onSaved: (newValue) => city = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCitynNllError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kCitynNllError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "City",
        hintText: "Enter your city",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomeSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField buildPostalCodeFormField() {
    return TextFormField(
      onSaved: (newValue) => postalcode = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPostalCodeNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPostalCodeNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Postal Code",
        hintText: "Enter your postal code",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomeSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

   TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phonenumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomeSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }
    
}