import 'package:flutter/Material.dart';
import 'package:flutter_tele_medicine/widgets/appbar.dart';
import 'package:flutter_tele_medicine/widgets/bottom_nav_bar_item.dart';
import 'package:flutter_tele_medicine/widgets/category_card.dart';
import 'package:flutter_tele_medicine/widgets/doctor_card.dart';
import 'package:flutter_tele_medicine/widgets/main_image_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /* list with doctors info
    doctor images are from umsplash
    i left the images name with their original owners
    i made up their own field
  */
  final List<Map<String, String>> doctors = [
    {
      'name': 'dr. Bruno Rodrigues',
      'field': 'Neurologists',
      'image': 'assets/images/doctors/bruno-rodrigues.jpg'
    },
    {
      'name': 'dr. Austin Distel',
      'field': 'Endocrinologists',
      'image': 'assets/images/doctors/austin-distel.jpg'
    },
    {
      'name': 'dr. Usman Yousaf',
      'field': 'Psycologists',
      'image': 'assets/images/doctors/usman-yousaf.jpg'
    },
    {
      'name': 'dr. Bruno Rodrigues',
      'field': 'Neurologists',
      'image': 'assets/images/doctors/bruno-rodrigues.jpg'
    },
    {
      'name': 'dr. Austin Distel',
      'field': 'Endocrinologists',
      'image': 'assets/images/doctors/austin-distel.jpg'
    },
    {
      'name': 'dr. Usman Yousaf',
      'field': 'Psycologists',
      'image': 'assets/images/doctors/usman-yousaf.jpg'
    },
  ];

  int navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar to show username and profileImage
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: SizedBox(
          //take the available Height
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 16,
              ),
              //Search Field
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search_sharp),
                    prefixIconColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(16)),
                    contentPadding: const EdgeInsets.all(20),
                    hintText: 'Search doctor or anything',
                  ),
                ),
              ),
              //The Image
              const MainImageWidget(),
              //App Categories
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: const [
                    CategoryCard(
                        categoryName: 'Doctor', categoryIcon: Icons.person),
                    CategoryCard(
                        categoryName: 'Hospital',
                        categoryIcon: Icons.apartment),
                    CategoryCard(
                        categoryName: 'Consultant',
                        categoryIcon: Icons.monitor_heart),
                    CategoryCard(
                        categoryName: 'Recipe', categoryIcon: Icons.receipt),
                  ],
                ),
              ),
              //The Text : [Top Doctors, See All]
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      'Top Doctors',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              //Doctors List
              Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) => DoctorCard(
                        doctorImage: doctors[index]['image']!,
                        doctorName: doctors[index]['name']!,
                        doctorField: doctors[index]['field']!,
                      )),
                  itemCount: doctors.length,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: navBarIndex,
        selectedIconTheme: const IconThemeData(color: Colors.white, size: 32),
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          bottomNavItem(icon: Icons.home),
          bottomNavItem(icon: Icons.view_list_outlined),
          bottomNavItem(icon: Icons.message_outlined),
          bottomNavItem(icon: Icons.settings),
        ],
        onTap: (index) {
          setState(() {
            navBarIndex = index;
          });
        },
      ),
    );
  }
}
