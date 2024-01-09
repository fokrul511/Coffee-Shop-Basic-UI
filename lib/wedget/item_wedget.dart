import 'package:coffe_shope/screen/single_item_screen.dart';
import 'package:flutter/material.dart';

class ItemWedget extends StatelessWidget {
  List image = [
    'Black Coffee',
    'Cold Coffee',
    'Espresso',
    'Latte',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < image.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                color: Color(0xff212325),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleItemScreen(
                          image[i],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/${image[i]}.png",
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          image[i],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Best Coffee',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$30',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffe57734),
                        ),
                        child: Icon(
                          (Icons.add),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
