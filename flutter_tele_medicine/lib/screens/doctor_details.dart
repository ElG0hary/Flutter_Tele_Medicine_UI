import 'package:flutter/Material.dart';
import 'package:flutter_tele_medicine/widgets/components/doctor_profile_details.dart';
import 'package:flutter_tele_medicine/widgets/components/doctor_profile_stack.dart';
import 'package:flutter_tele_medicine/widgets/description_text_widget.dart';
import '../widgets/my_vertical_divider.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails(
      {super.key,
      required this.doctorImage,
      required this.doctorName,
      required this.doctorField});

  final String doctorName;
  final String doctorImage;
  final String doctorField;
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      //Back Button and Appointment Text
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16, top: 18),
          child: Text(
            'Back',
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 233, 228, 228)),
          ),
        ),
        title: const Text(
          'Appointment',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff2c41ff),
      body: SingleChildScrollView(
        child: Container(
          height: mediaQuery.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32),
              topLeft: Radius.circular(32),
            ),
          ),
          margin: const EdgeInsets.only(top: 32),
          child: Column(
            children: [
              // Profile Details
              DoctorProfileStack(
                doctorImage: doctorImage,
                doctorName: doctorName,
                doctorField: doctorField,
                mediaQuery: mediaQuery,
              ),
              Container(
                width: double.infinity,
                height: 100,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: const Color(0xfffaf9ff),
                ),
                //Experience and profile Views
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    DoctorProfileDetails(
                      number: '127',
                      text: 'Reviews',
                    ),
                    myVerticalDivider(),
                    DoctorProfileDetails(
                      number: '709',
                      text: 'Patients',
                    ),
                    myVerticalDivider(),
                    DoctorProfileDetails(
                      number: '11',
                      text: 'Years exp.',
                    ),
                  ],
                ),
              ),
              //Demography Word
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Demography',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: DescriptionTextWidget(
                    text:
                        'Lorem ipsum dolor sit amet, consec tetur adipis cing elit, sed do eiusmod tempor incid idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
