import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              color: Color(0xFFFCF5DA),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 25),
                  alignment: AlignmentDirectional.topCenter,
                  child: const Text(
                    "Select your avatar",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF676565)),
                  ),
                ),
                Column(
                  children: [
                    buildContainer(
                        img: const NetworkImage(
                          "https://www.angrybirds.com/wp-content/uploads/2022/05/optimized-ABCOM_202203_1000x1000_CharacterDimensio_Red_DreamBlast.png",
                        ),
                        width: 150,
                        height: 150,
                        start: 0
                    )
                    ,
                    Column(
                      children: [
                        Row(
                          children: [
                            buildContainer(img: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS96v1MGGekQ5_S4YNpz321cCFBJ8bsn8wAjA&usqp=CAU"), width: 80, height: 80, start: 50),
                            buildContainer(img: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxQyD7TlbxIaFoextyQpmvEdq1y4RnmOLwnKkPJP0v8mUGY-DKS8_2yIRJMIpB29OACps&usqp=CAU"), width: 80, height: 80, start: 50),
                          ],
                        ),
                        Row(
                          children: [
                            buildContainer(img: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEsYOftcPoiZEAQ1UH8vGEThXiXvkMn7WTM2oroybv-xpHsMciY8Z2R1SVMtWysmTu6Yk&usqp=CAU"), width: 80, height: 80, start: 50),
                            buildContainer(img: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY1GB-782gbkw_Vi5bMhEyPgIgF5pDh77WCK9cuUHAdyKUCnQGaoGCS2CXnLEFtMs6sY4&usqp=CAU"), width: 80, height: 80, start: 50),
                          ],
                        ),
                        Row(
                          children: [
                            buildContainer(img: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh5qEuhHrVEapj2IvL1cQRRJ0JMaQ9DlRRfHxteqR8GlyilNcvfe99No_8BwtmN9vAoyE&usqp=CAU"), width: 80, height: 80, start: 50),
                            buildContainer(img: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcREiE1HzNVeX_GYYxWl7ZFfls-em7nP-Q2d6R5GbFm-sup1uJxn"), width: 80, height: 80, start: 50),
                          ],
                        ),

                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 45),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),
                  child: Center(child: Text("SELECT", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),)),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget buildContainer({required img, required width, required height, required start}) {
  return Container(
    margin: EdgeInsetsDirectional.only( top: 25, start: start),
    height: height,
    decoration: BoxDecoration(
      color: Colors.red,
      shape: BoxShape.circle,
      image: DecorationImage(
        image: img,
        fit: BoxFit.cover,
      ),
    ),
    width: width,
  );
}
