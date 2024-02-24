import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/circletext.dart';
import 'package:leap/texts/cyp.dart';
import 'package:leap/texts/longpdatatext.dart';
import 'package:leap/texts/pdatatext.dart';
import 'package:leap/texts/pdatatext2.dart';
import 'package:leap/texts/texts.dart';
import 'package:leap/widgets/TextFields/textfileld2.dart';
import 'package:leap/widgets/circle.dart';
import 'package:leap/widgets/continue.dart';

class PersonalData1 extends StatefulWidget {
  const PersonalData1({super.key});

  @override
  State<PersonalData1> createState() => _PersonalData1State();
}

class _PersonalData1State extends State<PersonalData1> {
  DateTime? selectedDate;
  final genders = ['Male', 'Female'];
  String? selectedGender;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: forUse,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: kToolbarHeight,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 115.1),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: ScrollController(),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleChoose(
                        color: forL,
                        child: CircleText(number: one),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      PDataText(),
                      SizedBox(
                        width: 10,
                      ),
                      CircleChoose(
                        color: idk5,
                        child: CircleText(number: two),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleChoose(
                        color: idk5,
                        child: CircleText(number: three),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 44.96,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.59),
                child: Column(
                  children: [
                    const PDataText2(),
                    const SizedBox(
                      height: 10,
                    ),
                    const CypText(),
                    const SizedBox(
                      height: 15,
                    ),
                    const LongPd(),
                    const SizedBox(
                      height: 40,
                    ),
                    TextArena2(
                      labelText: 'FIRST NAME',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextArena2(
                      labelText: 'LAST NAME',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextArena2(
                      readOnly: true,
                      controller: TextEditingController(
                        text: selectedDate != null
                            ? '${selectedDate?.day}/${selectedDate?.month}/${selectedDate?.year}'
                            : '',
                      ),
                      labelText: 'Date of Birth',
                      suffixIcon: IconButton(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: const Icon(Icons.calendar_today),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField<String>(
                      items: genders.map((gender) {
                        return DropdownMenuItem<String>(
                          value: gender,
                          child: Text(
                            gender,
                          ),
                        );
                      }).toList(),
                      value: selectedGender,
                      onChanged: (value) {
                        setState(() => selectedGender = value);
                      },
                      style: const TextStyle(
                        color: blackC,
                        fontSize: 16,
                        fontFamily: brFirma,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.16,
                      ),
                      decoration: InputDecoration(
                        contentPadding:  const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                        filled: true,
                        fillColor: forUse,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 3,
                            color: forL,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 3,
                            color: idk3,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        labelText: selectedGender == null ? 'Gender' : 'GENDER',
                        labelStyle: selectedGender == null
                            ? const TextStyle(
                                color: dimC,
                                fontSize: 16,
                                fontFamily: brFirma,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.16,
                              )
                            : const TextStyle(
                                color: blackC,
                                fontSize: 14,
                                fontFamily: brFirma,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.14,
                              ),
                        hintText: 'Gender',
                        hintStyle: const TextStyle(
                          color: dimC,
                          fontSize: 16,
                          fontFamily: brFirma,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextArena2(
                      readOnly: true,
                      labelText: 'ADDRESS',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextArena2(
                      labelText: 'ZIP',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextArena2(
                      labelText: 'CITY',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextArena2(
                      labelText: 'COUNTRY',
                      
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const ContinueButton(),
                    const SizedBox(
                      height: 100.36,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
