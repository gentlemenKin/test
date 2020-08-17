
import 'package:flutter/material.dart';
import 'package:flutter_app/flutterNotebook/ChooseCredentialspage.dart';
import 'package:flutter_app/flutterNotebook/CollectPersoalInfoPage.dart';


class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Navigator(
        initialRoute: 'signup/personal_info',
        onGenerateRoute: (RouteSettings settings){
          WidgetBuilder builder;
          switch(settings.name){
            case 'signup/personal_info':
              builder = (BuildContext_) =>CollectPersionlInfoPage();
              break;
            case 'sign/choose':
              builder = (BuildContext_)=> ChooseCredentialspage(
                onSignupComplete: (){
                  Navigator.of(context).pop();
                },
              );
              break;
            default:throw Exception('invilid rate');

          }
          return MaterialPageRoute(builder: builder,settings: settings);
        },
      ),
    );
  }
}
