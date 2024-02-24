import 'package:flutter/material.dart';
import 'package:leap/colors/colors.dart';
import 'package:leap/texts/careertext.dart';
import 'package:leap/texts/circletext.dart';
import 'package:leap/texts/texts.dart';
import 'package:leap/widgets/TextFields/textfileld2.dart';
import 'package:leap/widgets/checkedcircle.dart';
import 'package:leap/widgets/circle.dart';
import 'package:leap/widgets/continue.dart';

class Career extends StatefulWidget {
  const Career({super.key});

  @override
  State<Career> createState() => _CareerState();
}

class _CareerState extends State<Career> {
  String? selectedLevel;
  String? selectedLeader;
  String? selectedDiscipline;
  String? selectedCompanyNumber;
  String? selectedPositionNumber;
  String? selectedDownlineNumber;
  String? selectedBudgetSize;
  final titleController = TextEditingController();

  List<String> educationLevel = [
    'High School Diploma',
    'Associate Degree',
    'Bachelor\'s Degree',
    'Master\'s Degree + Higher'
  ];

  List<String> leadershipLevel = [
    'Individual Contributor (no direct reports)',
    'Supervisor (1-2 direct reports)',
    'Manager (3+ direct reports and a  manager title)',
    'Vice President or Director',
    'Senior Leader / Executive',
    'Business Owner / Entrepreneur',
  ];

  List<String> professionalDiscipline = [
    'Finance & Accounting',
    'Marketing & Sales',
    'Operations',
    'Manufacturing',
    'Science',
    'Research, Design, Development',
    'Human Resources',
    'Leadership & Management',
    'Technology',
    'Owner/Entrepreneur',
    'Other',
  ];

  List<String> companyNumber = [
    '1-10',
    '11-50',
    '51-100',
    '100-500',
    '501+',
  ];

  List<String> reportPeople = [
    '0',
    '1-2',
    '3-5',
    '5+',
  ];

  List<String> downlineOrganization = [
    '0',
    '1-10',
    '11-25',
    '26-50',
    '51-100',
    '101+',
  ];

  List<String> annualBudget = [
    'I don\'t manage a budget yet.',
    'Up to \$99k',
    '\$100k - \$1.9 million',
    '\$2 million - \$20 million',
    '\$21 million + more',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: forUse,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: kToolbarHeight,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          backButton,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 84,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: ScrollController(),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CheckCircle(),
                          SizedBox(
                            width: 10,
                          ),
                          CircleChoose(
                            color: forL,
                            child: CircleText(number: two),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CareerText(),
                          SizedBox(
                            width: 10,
                          ),
                          CircleChoose(
                            color: idk5,
                            child: CircleText(number: three),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 49,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 11,
                  child: Text(
                    carREER,
                    style: TextStyle(
                      color: forL,
                      fontSize: 10,
                      fontFamily: brFirma,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 35,
                  child: Text(
                    tellUs,
                    style: TextStyle(
                      color: blackC,
                      fontSize: 24,
                      fontFamily: brFirma,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.48,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: Text(
                    letsCreate,
                    style: TextStyle(
                      color: dimC,
                      fontSize: 14,
                      fontFamily: brFirma,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                DropdownButtonFormField<String>(
                  items: educationLevel.map(
                    (eLevel) {
                      return DropdownMenuItem<String>(
                        value: eLevel,
                        child: Text(eLevel),
                      );
                    },
                  ).toList(),
                  value: selectedLevel,
                  onChanged: (value) {
                    setState(() {
                      selectedLevel = value;
                    });
                  },
                  style: const TextStyle(
                    color: blackC,
                    fontSize: 16,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                      right: 14,
                      top: 14,
                      bottom: 14,
                    ),
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
                    labelText: selectedLevel == null
                        ? 'Highest level of education'
                        : 'HIGHEST LEVEL OF EDUCATION',
                    labelStyle: selectedLevel == null
                        ? const TextStyle(
                            color: dimC,
                            fontSize: 16,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.16,
                          )
                        : const TextStyle(
                            color: blackC,
                            fontSize: 12,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                    hintText: 'Highest level of education',
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
                  labelText: titleController.text.isEmpty
                      ? 'Current title'
                      : 'CURRENT TITLE',
                  controller: titleController,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField<String>(
                  items: leadershipLevel.map((lead) {
                    return DropdownMenuItem<String>(
                      value: lead,
                      child: Text(lead),
                    );
                  }).toList(),
                  value: selectedLeader,
                  onChanged: (value) {
                    setState(() {
                      selectedLeader = value;
                    });
                  },
                  style: const TextStyle(
                    color: blackC,
                    fontSize: 16,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                      right: 14,
                      top: 14,
                      bottom: 14,
                    ),
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
                    labelText: selectedLeader == null
                        ? 'Current leadership level '
                        : 'CURRENT LEADERSHIP LEVEL',
                    labelStyle: selectedLeader == null
                        ? const TextStyle(
                            color: dimC,
                            fontSize: 16,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.16,
                          )
                        : const TextStyle(
                            color: blackC,
                            fontSize: 12,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                    hintText: 'Current leadership level',
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
                DropdownButtonFormField<String>(
                  items: professionalDiscipline.map((prof) {
                    return DropdownMenuItem<String>(
                      value: prof,
                      child: Text(prof),
                    );
                  }).toList(),
                  value: selectedDiscipline,
                  onChanged: (value) {
                    setState(() {
                      selectedDiscipline = value;
                    });
                  },
                  style: const TextStyle(
                    color: blackC,
                    fontSize: 16,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                      right: 14,
                      top: 14,
                      bottom: 14,
                    ),
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
                    labelText: selectedDiscipline == null
                        ? 'Professional discipline'
                        : 'PROFESSIONAL DISCIPLINE',
                    labelStyle: selectedDiscipline == null
                        ? const TextStyle(
                            color: dimC,
                            fontSize: 16,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.16,
                          )
                        : const TextStyle(
                            color: blackC,
                            fontSize: 12,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                    hintText: 'Professional discipline',
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
                DropdownButtonFormField<String>(
                  items: companyNumber.map((company) {
                    return DropdownMenuItem<String>(
                      value: company,
                      child: Text(company),
                    );
                  }).toList(),
                  value: selectedCompanyNumber,
                  onChanged: (value) {
                    setState(() {
                      selectedCompanyNumber = value;
                    });
                  },
                  style: const TextStyle(
                    color: blackC,
                    fontSize: 16,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                      right: 14,
                      top: 14,
                      bottom: 14,
                    ),
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
                    labelText: selectedCompanyNumber == null
                        ? 'How many people work at your company?'
                        : 'HOW MANY PEOPLE WORK AT YOUR COMPANY?',
                    labelStyle: selectedCompanyNumber == null
                        ? const TextStyle(
                            color: dimC,
                            fontSize: 16,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.16,
                          )
                        : const TextStyle(
                            color: blackC,
                            fontSize: 12,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                    hintText: 'How many people work at your company?',
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
                DropdownButtonFormField<String>(
                  items: reportPeople.map((report) {
                    return DropdownMenuItem<String>(
                      value: report,
                      child: Text(report),
                    );
                  }).toList(),
                  value: selectedPositionNumber,
                  onChanged: (value) {
                    setState(() {
                      selectedPositionNumber = value;
                    });
                  },
                  style: const TextStyle(
                    color: blackC,
                    fontSize: 16,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                      right: 14,
                      top: 14,
                      bottom: 14,
                    ),
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
                    labelText: selectedPositionNumber == null
                        ? 'How many people directly report to you in your position?'
                        : 'HOW MANY PEOPLE DIRECTLY REPORT TO YOU IN YOUR POSITION?',
                    labelStyle: selectedPositionNumber == null
                        ? const TextStyle(
                            color: dimC,
                            fontSize: 16,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.16,
                          )
                        : const TextStyle(
                            color: blackC,
                            fontSize: 12,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                    hintText:
                        'How many people directly report to you in your position?',
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
                  height: 10,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 11,
                  child: Row(children: []),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField<String>(
                  items: annualBudget.map((budget) {
                    return DropdownMenuItem<String>(
                      value: budget,
                      child: Text(budget),
                    );
                  }).toList(),
                  value: selectedBudgetSize,
                  onChanged: (value) {
                    setState(() {
                      selectedBudgetSize = value;
                    });
                  },
                  style: const TextStyle(
                    color: blackC,
                    fontSize: 16,
                    fontFamily: brFirma,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.16,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 24,
                      right: 14,
                      top: 14,
                      bottom: 14,
                    ),
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
                    labelText: selectedBudgetSize == null
                        ? 'What is the size of the annual budget you personally manage for your organization?'
                        : 'WHAT IS THE SIZE OF THE ANNUAL BUDGET YOU PERSONALLY MANAGE FOR YOUR ORGANIZATION?',
                    labelStyle: selectedBudgetSize == null
                        ? const TextStyle(
                            color: dimC,
                            fontSize: 16,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.16,
                          )
                        : const TextStyle(
                            color: blackC,
                            fontSize: 12,
                            fontFamily: brFirma,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                    hintText:
                        'What is the size of the annual budget you personally manage for your organization?',
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
                  height: 76,
                ),
                const ContinueButton(),
                const SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
