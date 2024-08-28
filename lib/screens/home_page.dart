import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedMake;
  String? selectedModel;
  String? selectedYear;
  String? selectedMileage;
  String? selectedCondition;

  List<String> makes = ['Toyota', 'Honda', 'Ford'];
  List<String> models = ['Camry', 'Civic', 'F-150'];
  List<String> years = ['2020', '2021', '2022'];
  List<String> conditions = ['New', 'Used', 'Certified'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Padding(
        //   padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
        //   child: Text('''Let's Predict the Price of a car'''),
        // ),
        // titleTextStyle: const TextStyle(
        //     color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        backgroundColor: const Color.fromARGB(255, 8, 1, 17),
      ),
      backgroundColor: const Color.fromARGB(255, 8, 1, 17),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(46, 0, 46, 3),
        child: Column(
          children: <Widget>[
            const Text('''Let's Predict the Price of a car''',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'custom')),
            const SizedBox(width: 10, height: 20),
            // Image.asset('assets/images/car.png',
            //     height: 100, scale: 0.4, width: 100),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Row(
                  children: [
                    Icon(
                      Icons.car_repair_outlined,
                      size: 26,
                      color: Colors.white,
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Text(
                        'Select Make',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'custom'),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: makes
                    .map((String make) => DropdownMenuItem<String>(
                          value: make,
                          child: Text(
                            make,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'custom',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedMake,
                onChanged: (value) {
                  setState(() {
                    selectedMake = value;
                  });
                },
                buttonStyleData: ButtonStyleData(
                  height: 40,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: const Color.fromARGB(255, 120, 142, 249),
                  ),
                  elevation: 40,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 18,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromARGB(255, 120, 142, 249),
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(30),
                    thickness: WidgetStateProperty.all(6),
                    thumbVisibility: WidgetStateProperty.all(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Row(
                  children: [
                    Icon(
                      Icons.branding_watermark_rounded,
                      size: 26,
                      color: Colors.white,
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Text(
                        'Select Model',
                        style: TextStyle(
                          fontFamily: 'custom',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: models
                    .map((String model) => DropdownMenuItem<String>(
                          value: model,
                          child: Text(
                            model,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'custom',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedModel,
                onChanged: (value) {
                  setState(() {
                    selectedModel = value;
                  });
                },
                buttonStyleData: ButtonStyleData(
                  height: 40,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: const Color.fromARGB(255, 235, 118, 183),
                  ),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 18,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromARGB(255, 235, 118, 183),
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all(6),
                    thumbVisibility: MaterialStateProperty.all(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 26,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Text(
                        'Select Year',
                        style: TextStyle(
                          fontFamily: 'custom',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: years
                    .map((String year) => DropdownMenuItem<String>(
                          value: year,
                          child: Text(
                            year,
                            style: const TextStyle(
                              fontFamily: 'custom',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedYear,
                onChanged: (value) {
                  setState(() {
                    selectedYear = value;
                  });
                },
                buttonStyleData: ButtonStyleData(
                  height: 40,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: const Color.fromARGB(255, 152, 182, 98)),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 18,
                  iconEnabledColor: Color.fromARGB(255, 255, 255, 255),
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromARGB(255, 152, 182, 98),
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: WidgetStateProperty.all(6),
                    thumbVisibility: WidgetStateProperty.all(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(20, 0.02, 0, 5),
                labelText: 'Mileage',
                labelStyle: const TextStyle(
                    fontFamily: 'custom',
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
                fillColor: const Color.fromARGB(255, 255, 248, 59),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                selectedMileage = value;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Row(
                  children: [
                    Icon(
                      Icons.bookmark,
                      size: 26,
                      color: Color.fromARGB(255, 250, 250, 250),
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Text(
                        'Condition',
                        style: TextStyle(
                          fontFamily: 'custom',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: conditions
                    .map((String condition) => DropdownMenuItem<String>(
                          value: condition,
                          child: Text(
                            condition,
                            style: const TextStyle(
                              fontFamily: 'custom',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedCondition,
                onChanged: (value) {
                  setState(() {
                    selectedCondition = value;
                  });
                },
                buttonStyleData: ButtonStyleData(
                  height: 40,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: const Color.fromARGB(255, 154, 82, 216),
                  ),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 18,
                  iconEnabledColor: Color.fromARGB(255, 255, 255, 255),
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromARGB(255, 0, 203, 254),
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: WidgetStateProperty.all(6),
                    thumbVisibility: WidgetStateProperty.all(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.hovered)) {
                      return const Color.fromARGB(255, 195, 252, 82);
                    }
                    return null;
                  },
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Predict!',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 0),
            SizedBox(
              height: 300,
              child: Image.asset('assets/images/search party.gif',
                  fit: BoxFit.fitHeight, scale: 0.4, height: 300, width: 500),
            ),
          ],
        ),
      ),
    );
  }
}