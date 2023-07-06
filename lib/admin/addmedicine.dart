import 'package:ayurvedabook/main.dart';
import 'package:flutter/material.dart';
import 'appdraweradmin.dart';
import 'admin_landing.dart';
import 'new_medicine.dart';



List<String> doctors = [


];
List<String> specailization =[

];

class MedicineAdd extends StatefulWidget {
  const MedicineAdd({super.key});

  @override
  State<MedicineAdd> createState() => _MedicineAddState();
}

class _MedicineAddState extends State<MedicineAdd> {
  @override
  Widget build(BuildContext context) {

    return Scaffold( appBar: AppBar(
    centerTitle: true,
    title: const Text(
    'MEDICINES AVAILABLE',
    ),
    backgroundColor: const Color(0xff764abc),
    ),
    drawer: AdminAppDrawer(),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.list),
                      
                      title: Text("Detail ${index + 1}",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('Description'),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:EdgeInsets.only(bottom: 20,right: 20),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewMedicine()
                        // Replace NextScreen with the screen you want to navigate to
                      ),
                    );
                  },
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
