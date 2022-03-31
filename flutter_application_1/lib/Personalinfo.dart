import 'package:flutter/material.dart';
import 'package:flutter_application_1/Vehicleinfo.dart';

class PersonalPage extends StatefulWidget {
  static const routeName = '/Personalinfo';
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  int selectedPro = 1;
  int selectedZn = 1;
  int selectedDist = 1;
  int selectedVdMun = 1;
  int selectedWard = 1;
  bool _checkbox = false;

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "\n\nℹ️ Personal Information",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "First Name",
                              labelText: "First Name",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Last Name",
                              labelText: "Last Name",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email Id",
                              labelText: "Email Id",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: (String number) {
                    if (number.length < 10)
                      return "Number cannot be less than 10 digit";
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Mobile Number",
                      labelText: "Mobile Number",
                      labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "\n\nPermanent Address",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '\nProvince \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Zone'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                        value: selectedPro,
                        items: [
                          DropdownMenuItem(
                            child: Text("Province-1"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Province-2"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Bagmati Province"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("Gandaki Province"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("Lumbini Province"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("Karnali Province"),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child: Text("Sudurpashchim Province"),
                            value: 7,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedPro = value;
                          });
                        }),
                    DropdownButton(
                        value: selectedZn,
                        items: [
                          DropdownMenuItem(
                            child: Text("Mechi"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Koshi"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Sagarmatha"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("Janakpur"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("Bagmati"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("Narayani"),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child: Text("Gandaki"),
                            value: 7,
                          ),
                          DropdownMenuItem(
                            child: Text("Lumbini"),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text("Dhawalagiri"),
                            value: 9,
                          ),
                          DropdownMenuItem(
                            child: Text("Rapti"),
                            value: 10,
                          ),
                          DropdownMenuItem(
                            child: Text("Karnali"),
                            value: 11,
                          ),
                          DropdownMenuItem(
                            child: Text("Bheri"),
                            value: 12,
                          ),
                          DropdownMenuItem(
                            child: Text("Seti"),
                            value: 13,
                          ),
                          DropdownMenuItem(
                            child: Text("Mahakali"),
                            value: 14,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedZn = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '\nDistrict \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t VDC/Mun'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                        value: selectedDist,
                        items: [
                          DropdownMenuItem(
                            child: Text("Kathmandu"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Bhaktapur"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Lalitpur"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("Bhojpur"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("Dhankuta"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("Illam"),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child: Text("Jhapa"),
                            value: 7,
                          ),
                          DropdownMenuItem(
                            child: Text('Khotang'),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text('Morang'),
                            value: 9,
                          ),
                          DropdownMenuItem(
                            child: Text('Okhaldhunga'),
                            value: 10,
                          ),
                          DropdownMenuItem(
                            child: Text('Panchthar'),
                            value: 11,
                          ),
                          DropdownMenuItem(
                            child: Text('Sankhuwasabha'),
                            value: 12,
                          ),
                          DropdownMenuItem(
                            child: Text('Solukhumbu'),
                            value: 13,
                          ),
                          DropdownMenuItem(
                            child: Text('Sunsari'),
                            value: 14,
                          ),
                          DropdownMenuItem(
                            child: Text('Taplejung'),
                            value: 15,
                          ),
                          DropdownMenuItem(
                            child: Text('Tehrathum'),
                            value: 16,
                          ),
                          DropdownMenuItem(
                            child: Text('Udaypur'),
                            value: 17,
                          ),
                          DropdownMenuItem(
                            child: Text('Parsa'),
                            value: 18,
                          ),
                          DropdownMenuItem(
                            child: Text('Bara'),
                            value: 19,
                          ),
                          DropdownMenuItem(
                            child: Text('Rautahat'),
                            value: 20,
                          ),
                          DropdownMenuItem(
                            child: Text('Sarlahi'),
                            value: 21,
                          ),
                          DropdownMenuItem(
                            child: Text('Dhanusha'),
                            value: 22,
                          ),
                          DropdownMenuItem(
                            child: Text('Siraha'),
                            value: 23,
                          ),
                          DropdownMenuItem(
                            child: Text('Mahottari'),
                            value: 24,
                          ),
                          DropdownMenuItem(
                            child: Text('Saptari'),
                            value: 25,
                          ),
                          DropdownMenuItem(
                            child: Text('Sindhuli'),
                            value: 26,
                          ),
                          DropdownMenuItem(
                            child: Text('Ramechhap'),
                            value: 27,
                          ),
                          DropdownMenuItem(
                            child: Text('Dolakha'),
                            value: 28,
                          ),
                          DropdownMenuItem(
                            child: Text('Dhading'),
                            value: 29,
                          ),
                          DropdownMenuItem(
                            child: Text('Nuwakot'),
                            value: 30,
                          ),
                          DropdownMenuItem(
                            child: Text('Rasuwa'),
                            value: 31,
                          ),
                          DropdownMenuItem(
                            child: Text('Sindhupalchowk'),
                            value: 32,
                          ),
                          DropdownMenuItem(
                            child: Text('Chitwan'),
                            value: 33,
                          ),
                          DropdownMenuItem(
                            child: Text('Makawanpur'),
                            value: 34,
                          ),
                          DropdownMenuItem(
                            child: Text('Baglung'),
                            value: 35,
                          ),
                          DropdownMenuItem(
                            child: Text('Gorkha'),
                            value: 36,
                          ),
                          DropdownMenuItem(
                            child: Text('Kaski'),
                            value: 37,
                          ),
                          DropdownMenuItem(
                            child: Text('Lamjung'),
                            value: 38,
                          ),
                          DropdownMenuItem(
                            child: Text('Manang'),
                            value: 39,
                          ),
                          DropdownMenuItem(
                            child: Text('Mustang'),
                            value: 40,
                          ),
                          DropdownMenuItem(
                            child: Text('Myagdi'),
                            value: 41,
                          ),
                          DropdownMenuItem(
                            child: Text('Nawalpur'),
                            value: 42,
                          ),
                          DropdownMenuItem(
                            child: Text('Parbat'),
                            value: 43,
                          ),
                          DropdownMenuItem(
                            child: Text('Syangja'),
                            value: 44,
                          ),
                          DropdownMenuItem(
                            child: Text('Tanahun'),
                            value: 45,
                          ),
                          DropdownMenuItem(
                            child: Text('Kapilvastu'),
                            value: 46,
                          ),
                          DropdownMenuItem(
                            child: Text('Parasi'),
                            value: 47,
                          ),
                          DropdownMenuItem(
                            child: Text('Rupandehi'),
                            value: 48,
                          ),
                          DropdownMenuItem(
                            child: Text('Arghakhanchi'),
                            value: 49,
                          ),
                          DropdownMenuItem(
                            child: Text('Gulmi'),
                            value: 50,
                          ),
                          DropdownMenuItem(
                            child: Text('Palpa'),
                            value: 51,
                          ),
                          DropdownMenuItem(
                            child: Text('Dang'),
                            value: 52,
                          ),
                          DropdownMenuItem(
                            child: Text('Pyuthan'),
                            value: 53,
                          ),
                          DropdownMenuItem(
                            child: Text('Rolpa'),
                            value: 54,
                          ),
                          DropdownMenuItem(
                            child: Text('Eastern Rukum'),
                            value: 55,
                          ),
                          DropdownMenuItem(
                            child: Text('Banke'),
                            value: 56,
                          ),
                          DropdownMenuItem(
                            child: Text('Bardiya'),
                            value: 57,
                          ),
                          DropdownMenuItem(
                            child: Text('Western Rukum'),
                            value: 58,
                          ),
                          DropdownMenuItem(
                            child: Text('Salyan'),
                            value: 59,
                          ),
                          DropdownMenuItem(
                            child: Text('Dolpa'),
                            value: 60,
                          ),
                          DropdownMenuItem(
                            child: Text('Humla'),
                            value: 61,
                          ),
                          DropdownMenuItem(
                            child: Text('Jumla'),
                            value: 62,
                          ),
                          DropdownMenuItem(
                            child: Text('Kalikot'),
                            value: 63,
                          ),
                          DropdownMenuItem(
                            child: Text('Mugu'),
                            value: 64,
                          ),
                          DropdownMenuItem(
                            child: Text('Surkhet'),
                            value: 65,
                          ),
                          DropdownMenuItem(
                            child: Text('Dailekh'),
                            value: 66,
                          ),
                          DropdownMenuItem(
                            child: Text('Jajarkot'),
                            value: 67,
                          ),
                          DropdownMenuItem(
                            child: Text('Kailali'),
                            value: 68,
                          ),
                          DropdownMenuItem(
                            child: Text('Achham'),
                            value: 69,
                          ),
                          DropdownMenuItem(
                            child: Text('Doti'),
                            value: 70,
                          ),
                          DropdownMenuItem(
                            child: Text('Bajhang'),
                            value: 71,
                          ),
                          DropdownMenuItem(
                            child: Text('Kanchanpur'),
                            value: 72,
                          ),
                          DropdownMenuItem(
                            child: Text('Dadeldhura'),
                            value: 73,
                          ),
                          DropdownMenuItem(
                            child: Text('Baitadi'),
                            value: 74,
                          ),
                          DropdownMenuItem(
                            child: Text('Darchula'),
                            value: 75,
                          ),
                          DropdownMenuItem(
                            child: Text('Khotang'),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text('Khotang'),
                            value: 8,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedDist = value;
                          });
                        }),
                    DropdownButton(
                        value: selectedVdMun,
                        items: [
                          DropdownMenuItem(
                            child: Text("VDC"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Municipality"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Metropolitan City"),
                            value: 3,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedVdMun = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\nWard Number'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                        value: selectedWard,
                        items: [
                          DropdownMenuItem(
                            child: Text("1"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("2"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("3"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("4"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("5"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("6"),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child: Text("7"),
                            value: 7,
                          ),
                          DropdownMenuItem(
                            child: Text("8"),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text("9"),
                            value: 9,
                          ),
                          DropdownMenuItem(
                            child: Text("10"),
                            value: 10,
                          ),
                          DropdownMenuItem(
                            child: Text("11"),
                            value: 11,
                          ),
                          DropdownMenuItem(
                            child: Text("12"),
                            value: 12,
                          ),
                          DropdownMenuItem(
                            child: Text("13"),
                            value: 13,
                          ),
                          DropdownMenuItem(
                            child: Text("14"),
                            value: 14,
                          ),
                          DropdownMenuItem(
                            child: Text("13"),
                            value: 13,
                          ),
                          DropdownMenuItem(
                            child: Text("14"),
                            value: 14,
                          ),
                          DropdownMenuItem(
                            child: Text("15"),
                            value: 15,
                          ),
                          DropdownMenuItem(
                            child: Text("16"),
                            value: 16,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedWard = value;
                          });
                        }),
                  ],
                ),
                Text(
                  "\n\nTemporary Address",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _checkbox,
                      onChanged: (value) {
                        setState(() {
                          _checkbox = !_checkbox;
                        });
                      },
                    ),
                    Text('Same as permanent address'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '\nProvince \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Zone'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                        value: selectedPro,
                        items: [
                          DropdownMenuItem(
                            child: Text("Province-1"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Province-2"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Bagmati Province"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("Gandaki Province"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("Lumbini Province"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("Karnali Province"),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child: Text("Sudurpashchim Province"),
                            value: 7,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedPro = value;
                          });
                        }),
                    DropdownButton(
                        value: selectedZn,
                        items: [
                          DropdownMenuItem(
                            child: Text("Mechi"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Koshi"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Sagarmatha"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("Janakpur"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("Bagmati"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("Narayani"),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child: Text("Gandaki"),
                            value: 7,
                          ),
                          DropdownMenuItem(
                            child: Text("Lumbini"),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text("Dhawalagiri"),
                            value: 9,
                          ),
                          DropdownMenuItem(
                            child: Text("Rapti"),
                            value: 10,
                          ),
                          DropdownMenuItem(
                            child: Text("Karnali"),
                            value: 11,
                          ),
                          DropdownMenuItem(
                            child: Text("Bheri"),
                            value: 12,
                          ),
                          DropdownMenuItem(
                            child: Text("Seti"),
                            value: 13,
                          ),
                          DropdownMenuItem(
                            child: Text("Mahakali"),
                            value: 14,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedZn = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '\nDistrict \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t VDC/Mun'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                        value: selectedDist,
                        items: [
                          DropdownMenuItem(
                            child: Text("Kathmandu"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Bhaktapur"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Lalitpur"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("Bhojpur"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("Dhankuta"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("Illam"),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child: Text("Jhapa"),
                            value: 7,
                          ),
                          DropdownMenuItem(
                            child: Text('Khotang'),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text('Morang'),
                            value: 9,
                          ),
                          DropdownMenuItem(
                            child: Text('Okhaldhunga'),
                            value: 10,
                          ),
                          DropdownMenuItem(
                            child: Text('Panchthar'),
                            value: 11,
                          ),
                          DropdownMenuItem(
                            child: Text('Sankhuwasabha'),
                            value: 12,
                          ),
                          DropdownMenuItem(
                            child: Text('Solukhumbu'),
                            value: 13,
                          ),
                          DropdownMenuItem(
                            child: Text('Sunsari'),
                            value: 14,
                          ),
                          DropdownMenuItem(
                            child: Text('Taplejung'),
                            value: 15,
                          ),
                          DropdownMenuItem(
                            child: Text('Tehrathum'),
                            value: 16,
                          ),
                          DropdownMenuItem(
                            child: Text('Udaypur'),
                            value: 17,
                          ),
                          DropdownMenuItem(
                            child: Text('Parsa'),
                            value: 18,
                          ),
                          DropdownMenuItem(
                            child: Text('Bara'),
                            value: 19,
                          ),
                          DropdownMenuItem(
                            child: Text('Rautahat'),
                            value: 20,
                          ),
                          DropdownMenuItem(
                            child: Text('Sarlahi'),
                            value: 21,
                          ),
                          DropdownMenuItem(
                            child: Text('Dhanusha'),
                            value: 22,
                          ),
                          DropdownMenuItem(
                            child: Text('Siraha'),
                            value: 23,
                          ),
                          DropdownMenuItem(
                            child: Text('Mahottari'),
                            value: 24,
                          ),
                          DropdownMenuItem(
                            child: Text('Saptari'),
                            value: 25,
                          ),
                          DropdownMenuItem(
                            child: Text('Sindhuli'),
                            value: 26,
                          ),
                          DropdownMenuItem(
                            child: Text('Ramechhap'),
                            value: 27,
                          ),
                          DropdownMenuItem(
                            child: Text('Dolakha'),
                            value: 28,
                          ),
                          DropdownMenuItem(
                            child: Text('Dhading'),
                            value: 29,
                          ),
                          DropdownMenuItem(
                            child: Text('Nuwakot'),
                            value: 30,
                          ),
                          DropdownMenuItem(
                            child: Text('Rasuwa'),
                            value: 31,
                          ),
                          DropdownMenuItem(
                            child: Text('Sindhupalchowk'),
                            value: 32,
                          ),
                          DropdownMenuItem(
                            child: Text('Chitwan'),
                            value: 33,
                          ),
                          DropdownMenuItem(
                            child: Text('Makawanpur'),
                            value: 34,
                          ),
                          DropdownMenuItem(
                            child: Text('Baglung'),
                            value: 35,
                          ),
                          DropdownMenuItem(
                            child: Text('Gorkha'),
                            value: 36,
                          ),
                          DropdownMenuItem(
                            child: Text('Kaski'),
                            value: 37,
                          ),
                          DropdownMenuItem(
                            child: Text('Lamjung'),
                            value: 38,
                          ),
                          DropdownMenuItem(
                            child: Text('Manang'),
                            value: 39,
                          ),
                          DropdownMenuItem(
                            child: Text('Mustang'),
                            value: 40,
                          ),
                          DropdownMenuItem(
                            child: Text('Myagdi'),
                            value: 41,
                          ),
                          DropdownMenuItem(
                            child: Text('Nawalpur'),
                            value: 42,
                          ),
                          DropdownMenuItem(
                            child: Text('Parbat'),
                            value: 43,
                          ),
                          DropdownMenuItem(
                            child: Text('Syangja'),
                            value: 44,
                          ),
                          DropdownMenuItem(
                            child: Text('Tanahun'),
                            value: 45,
                          ),
                          DropdownMenuItem(
                            child: Text('Kapilvastu'),
                            value: 46,
                          ),
                          DropdownMenuItem(
                            child: Text('Parasi'),
                            value: 47,
                          ),
                          DropdownMenuItem(
                            child: Text('Rupandehi'),
                            value: 48,
                          ),
                          DropdownMenuItem(
                            child: Text('Arghakhanchi'),
                            value: 49,
                          ),
                          DropdownMenuItem(
                            child: Text('Gulmi'),
                            value: 50,
                          ),
                          DropdownMenuItem(
                            child: Text('Palpa'),
                            value: 51,
                          ),
                          DropdownMenuItem(
                            child: Text('Dang'),
                            value: 52,
                          ),
                          DropdownMenuItem(
                            child: Text('Pyuthan'),
                            value: 53,
                          ),
                          DropdownMenuItem(
                            child: Text('Rolpa'),
                            value: 54,
                          ),
                          DropdownMenuItem(
                            child: Text('Eastern Rukum'),
                            value: 55,
                          ),
                          DropdownMenuItem(
                            child: Text('Banke'),
                            value: 56,
                          ),
                          DropdownMenuItem(
                            child: Text('Bardiya'),
                            value: 57,
                          ),
                          DropdownMenuItem(
                            child: Text('Western Rukum'),
                            value: 58,
                          ),
                          DropdownMenuItem(
                            child: Text('Salyan'),
                            value: 59,
                          ),
                          DropdownMenuItem(
                            child: Text('Dolpa'),
                            value: 60,
                          ),
                          DropdownMenuItem(
                            child: Text('Humla'),
                            value: 61,
                          ),
                          DropdownMenuItem(
                            child: Text('Jumla'),
                            value: 62,
                          ),
                          DropdownMenuItem(
                            child: Text('Kalikot'),
                            value: 63,
                          ),
                          DropdownMenuItem(
                            child: Text('Mugu'),
                            value: 64,
                          ),
                          DropdownMenuItem(
                            child: Text('Surkhet'),
                            value: 65,
                          ),
                          DropdownMenuItem(
                            child: Text('Dailekh'),
                            value: 66,
                          ),
                          DropdownMenuItem(
                            child: Text('Jajarkot'),
                            value: 67,
                          ),
                          DropdownMenuItem(
                            child: Text('Kailali'),
                            value: 68,
                          ),
                          DropdownMenuItem(
                            child: Text('Achham'),
                            value: 69,
                          ),
                          DropdownMenuItem(
                            child: Text('Doti'),
                            value: 70,
                          ),
                          DropdownMenuItem(
                            child: Text('Bajhang'),
                            value: 71,
                          ),
                          DropdownMenuItem(
                            child: Text('Kanchanpur'),
                            value: 72,
                          ),
                          DropdownMenuItem(
                            child: Text('Dadeldhura'),
                            value: 73,
                          ),
                          DropdownMenuItem(
                            child: Text('Baitadi'),
                            value: 74,
                          ),
                          DropdownMenuItem(
                            child: Text('Darchula'),
                            value: 75,
                          ),
                          DropdownMenuItem(
                            child: Text('Khotang'),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text('Khotang'),
                            value: 8,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedDist = value;
                          });
                        }),
                    DropdownButton(
                        value: selectedVdMun,
                        items: [
                          DropdownMenuItem(
                            child: Text("VDC"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Municipality"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Metropolitan City"),
                            value: 3,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedVdMun = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\nWard Number'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                        value: selectedWard,
                        items: [
                          DropdownMenuItem(
                            child: Text("1"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("2"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("3"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("4"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("5"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("6"),
                            value: 6,
                          ),
                          DropdownMenuItem(
                            child: Text("7"),
                            value: 7,
                          ),
                          DropdownMenuItem(
                            child: Text("8"),
                            value: 8,
                          ),
                          DropdownMenuItem(
                            child: Text("9"),
                            value: 9,
                          ),
                          DropdownMenuItem(
                            child: Text("10"),
                            value: 10,
                          ),
                          DropdownMenuItem(
                            child: Text("11"),
                            value: 11,
                          ),
                          DropdownMenuItem(
                            child: Text("12"),
                            value: 12,
                          ),
                          DropdownMenuItem(
                            child: Text("13"),
                            value: 13,
                          ),
                          DropdownMenuItem(
                            child: Text("14"),
                            value: 14,
                          ),
                          DropdownMenuItem(
                            child: Text("13"),
                            value: 13,
                          ),
                          DropdownMenuItem(
                            child: Text("14"),
                            value: 14,
                          ),
                          DropdownMenuItem(
                            child: Text("15"),
                            value: 15,
                          ),
                          DropdownMenuItem(
                            child: Text("16"),
                            value: 16,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedWard = value;
                          });
                        }),
                  ],
                ),
                Center(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    color: Colors.green,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VehiclePage()));
                    },
                    // defining the shape
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Next ➡️",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
