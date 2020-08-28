import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/Utils/TextStyles.dart';
import 'package:ayuda/Utils/constant.dart';
import 'package:flutter/material.dart';

import 'CommonWidgets/BackgroundDesign.dart';
import 'CommonWidgets/RoundedBox.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController;
  String _name;
  String _shortName;
  TextEditingController designationController;

  @override
  void initState() {
    nameController = TextEditingController();
    designationController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: width,
              height: height * 1.103,
              child: Stack(
                children: [
                  BackgroundDesign(
                    heightFraction: .4,
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: RoundedBox(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      color: contrastColor,
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 26,
                        color: mainColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.225,
                    left: 0,
                    right: 0,
                    // right: 16,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        constraints: BoxConstraints(
                            maxWidth: height * 0.3, minWidth: height * 0.3),
                        width: height * 0.3,
                        height: height * 0.3,
                        decoration: BoxDecoration(
                            color: contrastColor,
                            borderRadius: BorderRadius.all(
                                Radius.circular(height * 0.15)),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 5,
                                  blurRadius: 8,
                                  color: Colors.black12)
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.55,
                    left: 16,
                    right: 16,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nameController,
                          maxLines: 1,
                          onSaved: (value) {
                            _name = value;
                          },
                          validator: (value) {
                            if (value == null) {
                              return 'Name can\'t be null';
                            }
                            if (value.length < 8) {
                              return 'Name should be of 8 Characters';
                            }
                            return null;
                          },
                          decoration: inputDecoration(
                              text: 'Name', iconData: Icons.account_circle),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        TextFormField(
                          maxLines: 1,
                          controller: designationController,
                          validator: (value) {
                            if (value == null) {
                              return 'Designation can\'t be null';
                            }
                            if (value.length < 8) {
                              return 'Designation should be of 8 Characters';
                            }
                            return null;
                          },
                          decoration: inputDecoration(
                              text: 'Designation',
                              iconData: Icons.accessibility),
                          onSaved: (value) {
                            _shortName = value;
                          },
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.15,
                    left: 16,
                    right: 16,
                    child: RoundedBox(
                      padding: const EdgeInsets.all(15),
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          // Check name != changed || Designation || imagefileNmae
                        }
                      },
                      color: contrastColor,
                      child: Center(
                        child: Text(
                          'Save',
                          style:
                              heading.copyWith(color: mainColor, fontSize: 25),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
