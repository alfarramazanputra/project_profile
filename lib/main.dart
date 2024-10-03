import 'package:flutter/material.dart';
import 'page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: helloWorld(),
));

class helloWorld extends StatelessWidget {
  const helloWorld({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),


        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Color.fromRGBO(255, 255, 255, 0.6),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage('assets/images/icalKecil.jpg'),
                        ),

                        Text("Ramazan Putraa",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22, color: Colors.black87, fontWeight: FontWeight.bold,),
                        ),

                        Text("Vocational High School Student at SMK Wikrama Bogor",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17, color: Colors.black87),
                        ),

                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        }, child: const Text(
                          'see more',
                          style: TextStyle(
                            color: Color.fromARGB(255, 4, 34, 58),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
              ),
            )
          ],
        ),

      ),
    );
  }
}

  // return MaterialApp(
    //   title: 'Belajar Flutter', //perintah untuk memberikan judul pada aplikasi kalian
    //   home:Scaffold( //Tempat untuk meletakkan kumpulan widget kalian
    //     appBar: AppBar(title: Text('Profil Ane'),
    //      ),
    //      body:Center(
    //         child: Card(
    //           elevation: 3,
    //           child: Image.asset("assets/images/icalKecil.jpg",
    //           width: 150,
    //           height: 150,
    //           ),
    //         )
    //         )
    //   ),
    // );