part of 'pages.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email, password, fullname;
  final formKey = new GlobalKey<FormState>();

  //saving form after validation
  void _saveForm() async {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      _savePref(email);
      Get.to(Home());
    }
  }

  void _savePref(String email) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setString("email", email);
      preferences.commit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width.w,
          height: MediaQuery.of(context).size.height.h,
          color: Color(0xffF8F8F8),
          child: Padding(
            padding: EdgeInsets.only(top: 27.h, left: 27.w, right: 27.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 38.w),
                  child: Image.asset(
                    'assets/bill.png',
                    width: 245.w,
                    height: 279.h,
                  ),
                ),
                SizedBox(
                  height: 53.h,
                ),
                Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fullname",
                          style: GoogleFonts.poppins(color: Color(0xff17171A)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        TextFormField(
                            onSaved: (value) => fullname = value,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              return value.isEmpty ? "Nama wajib diisi!" : null;
                            },
                            decoration: primaryInput),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Email Address",
                          style: GoogleFonts.poppins(color: Color(0xff17171A)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        TextFormField(
                            onSaved: (value) => email = value,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              return value.isEmpty
                                  ? "Email wajib diisi!"
                                  : null;
                            },
                            decoration: primaryInput),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Password",
                          style: GoogleFonts.poppins(color: Color(0xff17171A)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        TextFormField(
                          obscureText: true,
                          onSaved: (value) => password = value,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: primaryInput,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password wajib diisi!";
                            }

                            if (value.length < 3 || value.length > 12) {
                              return "Password minimal 3 karakter dan maksimal 12 karakter";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Container(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width.w,
                            child: TextButton(
                              onPressed: () {
                                _saveForm();
                              },
                              child: Text(
                                "Create New Account",
                                style: primaryText.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(60)),
                                  backgroundColor: Color(0xff5468FF),
                                  elevation: 0),
                            )),
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width.w,
                            child: TextButton(
                              onPressed: () {
                                Get.to(Login());
                              },
                              child: Text(
                                "Log In",
                                style: primaryText.copyWith(
                                  color: Color(0xffCFCFCF),
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(60)),
                                  backgroundColor: Color(0xffE5E5E5),
                                  elevation: 0),
                            )),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
