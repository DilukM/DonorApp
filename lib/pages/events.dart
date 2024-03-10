import 'package:flutter/material.dart';

class DonationRecord {
  final String description;
  final DateTime date;
  final double amount;

  DonationRecord({
    required this.description,
    required this.date,
    required this.amount,
  });
}

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final List<DonationRecord> donationRecords = [
    DonationRecord(
      description: 'Donation 1',
      date: DateTime(2022, 2, 1),
      amount: 50.0,
    ),
    DonationRecord(
      description: 'Donation 2',
      date: DateTime(2022, 2, 5),
      amount: 30.0,
    ),
    DonationRecord(
      description: 'Donation 3',
      date: DateTime(2022, 2, 10),
      amount: 20.0,
    ),
    // Add more hardcoded donation records as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios, color: Colors.red[400]),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Events'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Change the corner radius here
                  ),
                  backgroundColor:
                      Color.fromARGB(255, 208, 8, 68), // Background color
                ),
                onPressed: () {
                  // Implement button functionality here
                  print('Button pressed!');
                },
                child: Text(
                  'Donate',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Donation History",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: donationRecords.length,
              itemBuilder: (context, index) {
                final donation = donationRecords[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    contentPadding: EdgeInsets.all(8),
                    tileColor: Color.fromARGB(255, 255, 255, 255),
                    title: Text(donation.description,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Date: ${donation.date.toString()}'),
                    trailing: Text(
                      '\$${donation.amount.toString()}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red[400]),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
