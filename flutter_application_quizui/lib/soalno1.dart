import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz UI No 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const soalNo1(title: 'Quiz UI No 1'),
    );
  }
}

class soalNo1 extends StatefulWidget {
  const soalNo1({super.key, required this.title});

  final String title;

  @override
  State<soalNo1> createState() => _soalNo1State();
}

class _soalNo1State extends State<soalNo1> {
  String _selectedGender = 'Perempuan';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 253, 210, 80),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0), // Atur sudut kiri atas
                  bottomRight: Radius.circular(35.0), // Atur sudut kanan atas
                ),
              ),
              child: Row(
                children: [
                  Padding (
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Budi Martami',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://picsum.photos/200',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                transform: Matrix4.translationValues(0.0, -80.0, 0.0),
                child: Center(
                  child:
                    Container(
                      width: 450,
                      height: 550,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ubah Profile",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text("Nama Depan"),
                            TextField(),
                            SizedBox(height: 10),
                            Text("Nama Belakang"),
                            TextField(),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Text("Gender"),
                                        ),
                                      ),
                                      SizedBox(height: 8), // Tambahkan jarak antara teks dan kotak
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                                        child: Center(
                                          child: Container(
                                            width: 150,
                                            height: 55,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black), // Atur border
                                              borderRadius: BorderRadius.circular(10), // Atur sudut border
                                            ),
                                            child: DropdownButton<String>(
                                              value: _selectedGender,
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  _selectedGender = newValue!;
                                                });
                                              },
                                              isExpanded: true, // Agar dropdown menyesuaikan lebar container
                                              items: <String>['Laki-laki', 'Perempuan'].map((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Center(child: Text(value)), // Letakkan teks di tengah
                                                );
                                              }).toList(),
                                              underline: Container(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 5),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: Text("Tanggal Lahir"),
                                        ),
                                      ),
                                      SizedBox(height: 8), // Tambahkan jarak antara teks dan kotak
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Center(
                                          child: Container(
                                            width: 270, // Atur lebar kotak sesuai yang diinginkan
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black), // Atur border
                                              // borderRadius: BorderRadius.circular(5), // Atur sudut border
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: '   DD/MM/YYYY',
                                                hintStyle: TextStyle(fontSize: 12), // Atur ukuran font teks hint
                                                suffixIcon: Icon(Icons.calendar_month),
                                                border: InputBorder.none, // Hilangkan border bawaan TextField
                                                contentPadding: EdgeInsets.symmetric(vertical: 15), // Atur padding teks
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 20),
                            Text(
                              "Alamat",
                            ),
                            Container(
                              child: TextField(),
                            ),
                            SizedBox(height: 100),
                            Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 253, 210, 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                minimumSize: Size(160, 45),
                              ),
                              child: Text(
                                "Simpan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
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
            ],
          ),
        ),
      ),
    );
  }
}
