import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_scanner/screens/qr_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/back.jpg'),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop))
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => QRPage()));
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25),offset: Offset(0, 1),blurRadius: 1),
                          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25),offset: Offset(0, 2),blurRadius: 8),
                          BoxShadow(color: Color.fromRGBO(255, 255, 255, 0.1),offset: Offset(0, 0),blurRadius: 0,spreadRadius: 1),
                        ],
                        color: Colors.purple
                      ),
                      child: Icon(Icons.camera_alt,size: 30,color: Colors.white,),
                    ),
                  ),
                  Text('Tap to Scan',style: GoogleFonts.poppins(),)
                ],
              ),
            ),
            SizedBox(height: 160,),
            Text('QR Scanner',style: GoogleFonts.vt323(fontSize: 40),),



          ],
        ),
      ),
    );
  }
}
