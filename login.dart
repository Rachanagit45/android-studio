import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project/RouteConstants.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool first = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SafeArea(
        child: Center(
          child: Container(
            width: kIsWeb
                ? MediaQuery
                .of(context)
                .size
                .width / 1.5
                : MediaQuery
                .of(context)
                .size
                .width,
            height: kIsWeb
                ? MediaQuery
                .of(context)
                .size
                .height / 1.5
                : MediaQuery
                .of(context)
                .size
                .height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Wrap(children: [
                    FractionallySizedBox(
                      widthFactor: kIsWeb ? 0.5 : 1,
                      child: Container(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                            color: kIsWeb
                                ? Colors.yellow.withOpacity(0.5)
                                : Colors.yellow.withOpacity(0.3),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Form(
                            key: _formKey,
                            child: Container(
                              padding: kIsWeb
                                  ? EdgeInsets.zero
                                  : EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  kIsWeb
                                      ? SizedBox(height: 10)
                                      : SizedBox(
                                    height: 10,
                                  ),
                                  kIsWeb
                                      ? SizedBox.shrink()
                                      : Center(
                                    child: Image.network(
                                      'assets/image/login.png',
                                      height: 300,
                                    ),
                                  ),
                                  Text("Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 25,
                                          color: Colors.yellow)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: "Don't have an account yet?",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blueGrey.withOpacity(
                                              0.8),
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Sign Up",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.pink.shade400,
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {

                                              },
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Email Address',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black.withOpacity(
                                              0.7))),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(right: 20, left: 0),
                                    child: SizedBox(
                                      height: 50,
                                      child: TextFormField(
                                        keyboardType: TextInputType
                                            .emailAddress,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'you@example.com',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment
                                        .center,
                                    alignment: WrapAlignment.spaceBetween,
                                    children: <Widget>[
                                      FractionallySizedBox(
                                        widthFactor: kIsWeb ? 0.67 : 0.55,
                                        child: Text('Password',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color:
                                                Colors.black.withOpacity(0.7))),
                                      ),
                                      FractionallySizedBox(
                                        widthFactor: kIsWeb ? 0.33 : 0.45,
                                        child: Text('Forgot your password?',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              decoration: TextDecoration
                                                  .underline,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20, left: 0),
                                    child: TextFormField(
                                      keyboardType: TextInputType
                                          .visiblePassword,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Enter six characters or more',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 0,
                                      ),
                                      Checkbox(
                                        checkColor: Colors.white,
                                        activeColor: Colors.yellowAccent,
                                        value: first,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            first = value!;
                                          });
                                        },
                                      ),
                                      Text(
                                        'Remember me',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black.withOpacity(0.7)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 45,
                                    width: constraints.maxWidth,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(right: 20, left: 0),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 3,
                                          backgroundColor: Colors.green.shade200,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                        ),
                                        onPressed: () =>
                                        {
                                          Navigator.pushNamed(
                                              context,
                                              RouteConstants.DashRoute)
                                        },
                                        child: Text(
                                          'LOGIN',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    kIsWeb
                        ? FractionallySizedBox(
                      widthFactor: 0.5,
                      child: Container(
                          height: constraints.maxHeight,
                          width: constraints.maxWidth,
                          decoration: BoxDecoration(
                            color: Colors.green.shade200.withOpacity(0.4),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          // child: SvgPicture.network('https://svgur.com/i/yCT.svg'),
                          child: Center(
                            child: Image.asset(
                              'assets/image/login.png',
                            ),
                          )),
                    )
                        : SizedBox.shrink(),
                  ]);
                }),
          ),
        ),
      ),
    );
  }
}