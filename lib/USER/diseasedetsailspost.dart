import 'package:flutter/material.dart';
import 'package:ayurvedabook/main.dart';
import 'package:ayurvedabook/appdraweruser.dart';
import 'userlanding.dart';

List<String> doctors = [
  'Influenza (Flu):',
  'Pneumonia:',
  'Diabetes:',
  'Asthma:',
  'Migraine:',
];

List<String> specializations = [
  """Fever, Cough, Sore throat, Runny or stuffy nose, Muscle or body aches,Headache, Fatigue""",
  """Fever, Cough with phlegm or pus, Shortness of breath, Chest pain, Rapid breathing, Fatigue, Sweating and shaking chills""",
  """Frequent urination, Excessive thirst, Unexplained weight loss, Fatigue, Blurred vision, Slow-healing wounds""",
  """Shortness of breath, Wheezing, Chest tightness, Cough, especially at night or early morning, Fatigue during physical activity, Rapid breathing""",
  """Intense headache (often on one side of the head), Nausea or vomiting, Sensitivity to light and sound, Blurred vision, Lightheadedness""",
];

class DiseaseDetails extends StatefulWidget {
  const DiseaseDetails({super.key}) ;

  @override
  State<DiseaseDetails> createState() => _DiseaseDetailsState();
}

class _DiseaseDetailsState extends State<DiseaseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DISEASE DETAILS'),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: UserDrawer(),
      body: Center(
        child: ListView.separated(
          itemCount: doctors.length,
          separatorBuilder: (BuildContext context, int index) => Divider(
            color: Colors.grey,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ListTile(
                leading: const Icon(Icons.health_and_safety_outlined),
                title: Text(
                  doctors[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(specializations[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
