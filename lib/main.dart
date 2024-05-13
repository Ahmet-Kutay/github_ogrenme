
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late MediaQueryData ekranBilgisi;
  late double ekranYuksekligi;
  late double ekranGenisligi;

  @override
  Widget build(BuildContext context) {

    ekranBilgisi = MediaQuery.of(context);
    ekranYuksekligi = ekranBilgisi.size.height;
    ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[

            Padding(
              padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
              child: SizedBox(
                width: ekranGenisligi/4,
                height: ekranYuksekligi/6,
                  child: Image.asset("resimler/logo.png")
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/40),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Kullanıcı adı",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranGenisligi/30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranGenisligi/2),
              child: SizedBox(
                width: ekranGenisligi/1.2,
                height: ekranYuksekligi/12,
                child: ElevatedButton(
                  onPressed: (){
                  print("Giriş yapıldı");
                  },
                  child: Text("GİRİŞ YAP",style: TextStyle(fontSize: ekranGenisligi/25)),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Text("Yardım?"),
        ]
        ),
      ),

    );
  }
}
