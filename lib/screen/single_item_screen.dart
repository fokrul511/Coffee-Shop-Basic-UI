import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  SingleItemScreen(this.image, {super.key});
  String image; // dipoon you miss this ? Question mark

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image(
                    image: AssetImage('images/$image.png'),
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best Coffee',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        image,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(color: Colors.white)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      CupertinoIcons.minus,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              '\$30',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Coffee is a major source of antioxident in the diet, It has many helthy benifit',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.4), fontSize: 16),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            'Volume: 60ml',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Add to cart"),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(200, 44),
                                backgroundColor: Color(0xffe57734),
                                textStyle: TextStyle(fontSize: 20)),
                          ),ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.add),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                minimumSize: Size(44, 44),
                                backgroundColor: Color(0xffe57734),
                                textStyle: TextStyle(fontSize: 20)),
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
      ),
    );
  }
}
