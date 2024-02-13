import 'package:flutter/material.dart';

class AdminMenu extends StatelessWidget {
  const AdminMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ADMIN MENU",style: TextStyle(color: Colors.white),),
          backgroundColor: Color(0xFF027A7A),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF009999).withOpacity(0.1),
                    Color(0xFF009999).withOpacity(0.3),
                    Color(0xFF009999).withOpacity(0.5),
                    //Color(0xFF000066)
                  ]
              )
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 130,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xE2000066),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: (){},
                    child: Text("VIEW ALL SECURITY GUARDS")),
              ),
              SizedBox(height: 35,),
              SizedBox(
                height: 130,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF006666),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: (){},
                    child: Text("ADD SECURITY")),
              ),
              SizedBox(height: 35,),
              SizedBox(
                height: 130,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF000066),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: (){},
                    child: Text("VIEW ALL VISITORS")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
