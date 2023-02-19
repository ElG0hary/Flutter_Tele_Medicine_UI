import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String doctorField;

  const DoctorCard(
      {required this.doctorImage,
      super.key,
      required this.doctorName,
      required this.doctorField});

  @override
  Widget build(BuildContext context) {
    // 32 is the margin (left 16 + right 16)
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          margin: const EdgeInsets.all(16),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Doctor Profile Image
              SizedBox(
                width: 60,
                height: 55,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      doctorImage,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(width: 8),
              //fail safe for doctor name incase it got Too Long
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      doctorField,
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // the Rating
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                  ),
                  const Text(
                    '4.8',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
