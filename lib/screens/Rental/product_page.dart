import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rental_app/utils/fonts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ProductPage extends StatelessWidget {
  const ProductPage(
      {super.key,
      required this.vehicleName,
      required this.productPrice,
      required this.imgSrc});
  final String vehicleName;
  final String productPrice;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(),
        backgroundColor: Colors.white,
        shadowColor: Colors.black.withOpacity(0.5),
        title: Text(
          "Details",
          style: Fonts.appbarTitile,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(imgSrc))),
              height: 250,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0)
                      .copyWith(left: 15, right: 15, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        vehicleName,
                        style: Fonts.tileTitle,
                      ),
                      Text(
                        "Rs. " + productPrice + "/Day",
                        style: Fonts.tilePrice,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 30,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 1,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (value) {},
                      ),
                      Text(
                        "4.8 (67 reviews)",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text(
                        "Features",
                        style: Fonts.tileTitle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  Icon(Icons.air),
                                  Text(
                                    "Air Conditioning",
                                    style: Fonts.featuresFont,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.verified,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        "Verified",
                                        style: Fonts.featuresFont,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Icon(
                                Icons.speed,
                                color: Colors.amber,
                              ),
                              Text(
                                "Well Monitored",
                                style: Fonts.featuresFont,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Icon(
                                Icons.two_wheeler,
                                color: Colors.red,
                              ),
                              Text(
                                "Good Condition",
                                style: Fonts.featuresFont,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text(
                        "Reach Us",
                        style: Fonts.tileTitle,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Wrap(
                      spacing: 7,
                      children: [
                        FaIcon(FontAwesomeIcons.envelope),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(
                            "fredrick04@gmail.com",
                            style: Fonts.greetFont,
                          ),
                        )
                      ],
                    ),
                    Wrap(
                      spacing: 7,
                      children: [
                        FaIcon(FontAwesomeIcons.phone),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(
                            "+977-9822388129",
                            style: Fonts.greetFont,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  width: 150,
                  height: 60,
                  child: Center(
                    child: Text(
                      "Call Now",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(
                        20,
                      )),
                  width: 150,
                  height: 60,
                  child: Center(
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 60,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Book a ride",
                                  style: Fonts.tileTitle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Pick a date",
                                    style: Fonts.tileTitle.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0)
                                  .copyWith(top: 5, bottom: 4),
                              child: Container(
                                color: Colors.grey.withOpacity(0.2),
                                height: 200,
                                child: SfDateRangePicker(
                                  headerHeight: 30,
                                  onSelectionChanged:
                                      (dateRangePickerSelectionChangedArgs) {},
                                  selectionMode:
                                      DateRangePickerSelectionMode.range,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 200,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Dropoff Location",
                                          style: Fonts.tileTitle.copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(),
                                        ),
                                        height: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Wrap(
                                                spacing: 20,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons.mapMarker,
                                                    color: Colors.red,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 2.0),
                                                    child: Text(
                                                      "Search Destination",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              FaIcon(FontAwesomeIcons
                                                  .magnifyingGlass)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 5,
                                              offset: Offset(1, 2),
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.blue),
                                      width: 150,
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
