import 'package:dsep_reference_flutter/common/widgets/filled-button-with-feedback-animation.widget.dart';
import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:dsep_reference_flutter/animations/slide-right.animation.dart';
import 'package:dsep_reference_flutter/common/pages/otp-verification.page.dart';
import 'package:dsep_reference_flutter/services/auth.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:email_validator/email_validator.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/cloud_wallet_api.swagger.dart';
import 'package:chopper/chopper.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _showErrors = false;
  bool _sendOtpInProgressFlag = false;
  String? _emailAddress;
  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final FocusNode emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(height: 100),
          Container(
            height: 100,
            width: 150,
            alignment: Alignment.center,
            color: GlobalConstants.backgroundColor.withOpacity(0.1),
            // const Color(0xFFD9D9D9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.lock,
                    size: 40, color: GlobalConstants.backgroundColor),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [1, 2, 3, 4].map((index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            color: GlobalConstants.backgroundColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 5,
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 320,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Let’s get started",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 0,
                          ),
                          child: TextFormField(
                            focusNode: emailFocusNode,
                            keyboardType: TextInputType.emailAddress,
                            autovalidateMode: _showErrors
                                ? AutovalidateMode.always
                                : AutovalidateMode.disabled,
                            decoration: InputDecoration(
                              isDense: true,
                              // filled: true,
                              // fillColor: Theme.of(context).colorScheme.onInverseSurface,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                              ),
                              suffixIcon: const Icon(Icons.email_outlined),
                              focusedBorder: UnderlineInputBorder(
                                // borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  width: 0,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(
                                top: 12.0,
                                left: 10,
                                right: 6,
                                bottom: 12.0,
                              ),
                              labelText: "Enter Email",
                            ),
                            validator: (String? value) {
                              if ((value == null) || value.isEmpty) {
                                return "Required";
                              } else {
                                if (!EmailValidator.validate(value)) {
                                  // debugPrint("emailvalidator.validate success");
                                  // setState(() {
                                  //   _emailvalidated = true;
                                  // });
                                  return "Invalid Email";
                                }
                              }
                              return null;
                            },
                            onSaved: (String? value) {
                              _emailAddress = value;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FilledButtonWithFeedbackAnimationWidget(
                          processingFlag: _sendOtpInProgressFlag,
                          text: "Send OTP",
                          onPressed: () {
                            setState(() {
                              _showErrors = true;
                            });
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              SignInInput body =
                                  SignInInput(username: _emailAddress!);
                              setState(() {
                                _sendOtpInProgressFlag = true;
                              });
                              Provider.of<CloudWalletApi>(context,
                                      listen: false)
                                  .usersSignInPasswordlessPost(body: body)
                                  .then((Response<String> response) {
                                AuthService().setSignUpConfirmationString(
                                  signUpConfirmationString: response.body,
                                );
                                // widget.onSuccessfulEmailVerification(
                                //   email: _emailController.text,
                                // );
                                setState(() {
                                  _sendOtpInProgressFlag = false;
                                });

                                Navigator.of(context).pushReplacement(
                                  SlideRightRoute(
                                    page: OtpVerificationPage(
                                      validatedEmail: _emailAddress,
                                    ),
                                  ),
                                );

                                // _controller.nextPage(
                                //   duration: const Duration(milliseconds: 300),
                                //   curve: Curves.ease,
                                // );
                              });
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // Container(
                        //   alignment: Alignment.center,
                        //   child: const Text(
                        //     "OR",
                        //     style: TextStyle(
                        //       fontSize: 18,
                        //       color: Colors.black54,
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // FilledButton(
                        //   onPressed: () {
                        //     debugPrint("Google Sign In called");
                        //   },
                        //   style: FilledButton.styleFrom(
                        //     backgroundColor: Colors.black87,
                        //     shape: const RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(6),
                        //       ),
                        //       side: BorderSide.none,
                        //     ),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.start,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: <Widget>[
                        //       Container(
                        //         width: 40,
                        //         alignment: Alignment.center,
                        //         child: SvgPicture.asset(
                        //           'assets/google_logo.svg',
                        //           height: 18,
                        //           width: 18,
                        //         ),
                        //       ),
                        //       Expanded(
                        //         child: Container(
                        //           alignment: Alignment.center,
                        //           child: const Text(
                        //             "Sign In With Google",
                        //             style: TextStyle(
                        //               color: Colors.white,
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 6,
                        // ),
                        // FilledButton(
                        //   onPressed: () {
                        //     debugPrint("Google Sign In called");
                        //   },
                        //   style: FilledButton.styleFrom(
                        //     backgroundColor: Colors.black87,
                        //     shape: const RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(6),
                        //       ),
                        //       side: BorderSide.none,
                        //     ),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.start,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: <Widget>[
                        //       Container(
                        //         width: 40,
                        //         alignment: Alignment.center,
                        //         color: Colors.black87,
                        //         child: const Image(
                        //           image: AssetImage("assets/apple_logo.png"),
                        //           height: 18.0,
                        //         ),
                        //       ),
                        //       Expanded(
                        //         child: Container(
                        //           alignment: Alignment.center,
                        //           child: const Text(
                        //             "Sign In With Apple",
                        //             style: TextStyle(
                        //               color: Colors.white,
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
