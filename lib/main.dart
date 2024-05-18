import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black87,)),
      ),


      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(20.0),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Find Your",style: TextStyle(color: Colors.black87,fontSize: 25,),),
                  SizedBox(height: 3,),
                  Text("Inspiration",style: TextStyle(color: Colors.black87,fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "search what you want",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.black87,),
                        
                      ),
                    ),
                  ),
                  SizedBox(height: 10,)

                ],
              ),

            ),
            SizedBox(height: 20,),

            // content Area

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Promo Today",style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoCard('assets/images/1.jpg'),
                        promoCard('assets/images/2.jpg'),
                        promoCard('assets/images/3.jpg'),
                        promoCard('assets/images/1.jpg'),

                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/images/3.jpg"),fit: BoxFit.cover,repeat: ImageRepeat.noRepeat)
                    ),

                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(begin: Alignment.bottomRight,stops:[0.3,0.8],colors: [Colors.black.withOpacity(0.8),Colors.black.withOpacity(0.2)],)
                        ),

                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Best Design",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),


                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}


Widget promoCard(image){
  return AspectRatio(
      aspectRatio: 2.62/3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover,repeat: ImageRepeat.noRepeat,),
        ),

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight,stops:[0.1,0.9],colors: [Colors.black.withOpacity(0.8),Colors.black.withOpacity(0.1)],)
          ),
          

        ),
      ),
  );
}
