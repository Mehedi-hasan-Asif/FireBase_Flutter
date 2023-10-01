import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/splash_screen.dart';

Future main()async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options:FirebaseOptions(
      apiKey: "AIzaSyCR7KXOeMkyLsQDuW6ln9O7QoDHkkRvBrw",
       appId: "1:711245690444:web:f326d1b280d2f46de1e6e9", 
       messagingSenderId: "711245690444", 
       projectId: "fir-a-5e071"
       ));
  }
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FirebaseFlutter',
      home:SplashScreen(
        child: LoginPage(),
      )
    );
  }

}