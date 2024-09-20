import 'package:flutter/material.dart';
import 'package:flutter_application_1/angka.dart';
import 'package:flutter_application_1/berhitung.dart';

class homepage extends StatelessWidget {
  final String nama;

  const homepage({
    Key? key,
    required this.nama,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Page"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 140, 10, 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: Text("Hai, $nama\nSelamat Datang"),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.blue),backgroundColor: const Color.fromARGB(255, 196, 190, 190)),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) {
                        return berhitung();
                      },)
                    );
                  }, 
                  child: Text("Berhitung")
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                width: 500,
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.blue),backgroundColor: const Color.fromARGB(255, 196, 190, 190)),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) {
                        return angka();
                      },)
                    );
                  }, 
                  child: Text("Ganjil / Genap")
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                width: 500,
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(side: BorderSide(color: const Color.fromARGB(255, 255, 0, 0)),backgroundColor: const Color.fromARGB(255, 234, 64, 64)),
                  onPressed: (){
                    String text = "Kamu telah keluar";
                    Navigator.pop(context);
                    SnackBar snackBar = SnackBar(content: Text(text));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, 
                  child: Text("Log out")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}