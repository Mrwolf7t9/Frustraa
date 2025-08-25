import 'package:flutter/material.dart';
import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Set Up Profile')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Anonymous Name')),
            TextField(controller: countryController, decoration: InputDecoration(labelText: 'Country')),
            DropdownButton<String>(
              value: selectedLanguage,
              items: ['English', 'Danish', 'Hindi', 'Korean']
                  .map((lang) => DropdownMenuItem(value: lang, child: Text(lang)))
                  .toList(),
              onChanged: (val) => setState(() => selectedLanguage = val!),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Text('Save & Continue'),
            )
          ],
        ),
      ),
    );
  }
}
