part of 'page.dart';

class LoginPage extends Pages {
  final LoginPageController loginPageController = Get.put(LoginPageController());
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background_login.png'),
                        fit: BoxFit.fill
                    )
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/light-1.png')
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/light-2.png')
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/clock.png')
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text(
                            'Login',
                            style: CustomTextStyle.textStyle(
                              warnaText: Colors.white,
                              ukuranText: 40.0,
                              ketebalanText: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10)
                            )
                          ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey))
                            ),
                            child: CustomTextField.textField(
                              decoration: CustomInputDecoration.inputDecoration(
                                placeHolder: "Username",
                                border: InputBorder.none,
                                placeHolderStyle: CustomTextStyle.textStyle(
                                  warnaText: HexColor("#808080")
                                )
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextField.textField(
                              decoration: CustomInputDecoration.inputDecoration(
                                border: InputBorder.none,
                                placeHolder: 'Password',
                                placeHolderStyle: CustomTextStyle.textStyle(
                                  warnaText: HexColor("#808080")
                                )
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ]
                            )
                        ),
                        child: CustomButton.buttonElevatedButton(
                          eventButton: (){
                            loginPageController.goToPage();
                          },
                          titleButton: Center(
                            child: Text(
                              "Login", 
                              style: CustomTextStyle.textStyle(
                                warnaText: HexColor("#ffffff"),
                                ketebalanText: FontWeight.bold
                              ),
                            ),
                          )
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}