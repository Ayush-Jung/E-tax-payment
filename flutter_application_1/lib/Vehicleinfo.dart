import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Paymentpage.dart';
import 'package:image_picker/image_picker.dart';

class VehiclePage extends StatefulWidget {
  static const routeName = '/Vehicleinfo';
  @override
  _VehiclePageState createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  File _image;
  Future getImagefromcamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future getImagefromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  int selectedType = 1;

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
                  "\n\nℹ️ Vehicle Information",
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Vehicle Type',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            DropdownButton(
                                value: selectedType,
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Two Wheeler"),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Four Wheeler"),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Six Wheeler"),
                                    value: 3,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Eight Wheeler"),
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
                                    selectedType = value;
                                  });
                                }),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Model Name",
                              labelText: "Model Name",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Vehicle Name",
                              labelText: "Vehicle Name",
                              labelStyle:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              border: OutlineInputBorder()),
                        ),
                      ],
                    )),
                Text(
                  "\nUpload citizenship/passport",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Select here to upload image",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: _image == null
                      ? Text("No Image is picked")
                      : Image.file(_image),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: getImagefromcamera,
                      tooltip: "pickImage",
                      child: Icon(Icons.add_a_photo),
                    ),
                    FloatingActionButton(
                      onPressed: getImagefromGallery,
                      tooltip: "Pick Image",
                      child: Icon(Icons.camera_alt),
                    )
                  ],
                ),
                SizedBox(height: 40),
                MaterialButton(
                  minWidth: double.infinity,
                  color: Colors.green,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
