import 'package:flutter/material.dart';

import 'categories.dart';

List<Categories> categoriesList = [
  Categories(
      price: "200 Rs",
      imgpath: "assets/5.png",
      foodname: "Pizza do Pyaza",
      foodtitle: "with Jalpino and onion",
      fooddesc: "sddss",
      ratings: "4.2"),
  Categories(
      price: "450 Rs",
      imgpath: "assets/4.png",
      foodname: "Paneer ka tadka",
      foodtitle: "with Jalpino and onion",
      fooddesc: "sddss",
      ratings: "5"),
  Categories(
      price: "225 Rs",
      imgpath: "assets/3.png",
      foodname: "Pizza do Pyaza",
      foodtitle: "with Jalpino and onion",
      fooddesc: "sddss",
      ratings: "5"),
  Categories(
      price: "200 Rs",
      imgpath: "assets/1.png",
      foodname: "Pizza do Pyaza",
      foodtitle: "with Jalpino and onion",
      fooddesc: "sddss",
      ratings: "2.8"),
  Categories(
      price: "275 Rs",
      imgpath: "assets/2.png",
      foodname: "Pizza do Pyaza",
      foodtitle: "with Jalpino and onion",
      fooddesc: "sddss",
      ratings: "2.7"),
];

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[100],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        categoriesList[index].imgpath,
                        height: 150,
                        width: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //Text(categoriesList[index].name),
                                //Text(categoriesList[index].price),
                                Text(
                                  categoriesList[index].foodname,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    categoriesList[index].foodtitle,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Text(categoriesList[index].fooddesc,
                                    style: TextStyle(fontSize: 15)),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      categoriesList[index].ratings,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      categoriesList[index].price,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.orange,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Add",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
