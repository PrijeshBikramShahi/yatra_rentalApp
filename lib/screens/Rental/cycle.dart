import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rental_app/screens/Rental/product_page.dart';

import 'package:rental_app/utils/ad_tile.dart';
import 'package:rental_app/utils/fonts.dart';

import 'package:rental_app/utils/new_info_tile.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Bicycle extends StatefulWidget {
  const Bicycle({super.key});

  @override
  State<Bicycle> createState() => _BicycleState();
}

class _BicycleState extends State<Bicycle> {
  TextEditingController textController = TextEditingController();

  List<dynamic> _rental = [
    ['Trek', '500', 'BishalThapa Cycles', 'Biratnagar, Morang', false],
    ['Giant', '450', 'AshaKoirala Bikes', 'Jhapa, Mechi', true],
    ['Schwinn', '400', 'PrabinTamang Rentals', 'Butwal, Rupandehi', true],
    ['Specialized', '550', 'ManjuGiri Cycles', 'Gulmi, Lumbini', false],
    ['Cannondale', '480', 'RameshShrestha Bikes', 'Bhaktapur, Kathmandu', true],
    ['Scott', '520', 'SangitaMagar Rentals', 'Nawalpur, Gandaki', true],
    ['BMC', '600', 'SujanGurung Cycles', 'Dhulikhel, Kavrepalanchok', true],
    ['Fuji', '470', 'AnitaShahi Rentals', 'Damauli, Tanahun', false],
    ['Orbea', '490', 'DipeshLama Bikes', 'Lalitpur, Bagmati', true],
    ['GT', '530', 'MinaRai Rentals', 'Dharan, Sunsari', true],
    ['Pinarello', '570', 'SanjayThakuri Cycles', 'Pokhara, Kaski', false],
    ['Raleigh', '450', 'AnjaliGautam Rentals', 'Bhairahawa, Lumbini', true],
  ];
  List<String> _imgSrc = [
    'https://wallpaperaccess.com/full/225353.jpg',
    'https://i.pinimg.com/originals/a8/fb/e6/a8fbe67eac056dbfec53102ec3ffe30b.jpg',
    'https://i5.walmartimages.com/asr/8d1f50c9-6c4e-4715-8165-fc165c4aa505_1.3ef6fb025540ab431812e5aca701a38e.jpeg?odnHeight=580&odnWidth=580&odnBg=FFFFFF',
    'https://hips.hearstapps.com/hmg-prod/images/img-0686-1570830419.jpeg?resize=980:*',
    'https://marketplacer.imgix.net/kv/m5-Rr87IzIIEZratm9T6_FQLw.jpg?auto=format&fm=pjpg&fit=fillmax&w=400&h=300&s=1cfc627e2e3eca38edb07409d9fa22a4',
    'https://i.pinimg.com/originals/90/49/0a/90490ac99e78be81284a91c769cb5909--road-conditions-scott-bikes.jpg',
    'https://marketplacer.imgix.net/dH/wJC9C29XcycXY2Ue3RTssbYi0.jpg?auto=format&fm=pjpg&fit=fillmax&w=400&h=300&s=28f2b19dd026b46612c746db81a58114',
    'https://i.pinimg.com/originals/35/ec/50/35ec50451cc8aa35d8b569b315846e7f--fuji-mountain-bike.jpg',
    'https://i.pinimg.com/originals/1d/bd/9c/1dbd9c5744512f97bc09574d51acad00--orbea-bikes-dream-garage.jpg',
    "https://gtbicycles.com/cdn/shop/files/G23_FuryPro_PD_ea7554f2-ede0-41e1-81ff-0dab4768d53d.jpg?v=1694717371&width=1150",
    'https://cdn.shopify.com/s/files/1/0483/9040/6312/files/PinarelloParisbike_blue_blog2.jpg?v=1649886241',
    'https://i.pinimg.com/originals/79/52/4c/79524c9d43dc57f50b0c961d2960fbe4.jpg'
  ];
  List<String> filter = [
    'Geared',
    'Bhaktapur',
    '<Rs.800',
    'Brand New',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Text(
          "Two Wheelers",
          style: Fonts.tileTitle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Icon(Icons.filter_alt),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: SearchBar(
                      controller: textController,
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: FaIcon(
                            FontAwesomeIcons.magnifyingGlass,
                            size: 20,
                          ),
                        ),
                      ),
                      trailing: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                textController.clear();
                              });
                            },
                            child: FaIcon(
                              FontAwesomeIcons.x,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                      constraints: BoxConstraints.expand(height: 20)),
                ),
              ),
            ),
            Expanded(
                flex: 10,
                child: ListView.builder(
                    clipBehavior: Clip.none,
                    padding: EdgeInsets.zero,
                    itemCount: _rental.length,
                    itemBuilder: (context, index) {
                      return (index != 3)
                          ? GestureDetector(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: InfoTileNew(
                                      ontapp: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    height: 60,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20.0),
                                                      child: Text(
                                                        "Book a ride",
                                                        style: Fonts.tileTitle,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20.0),
                                                    child: Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          "Pick a date",
                                                          style: Fonts.tileTitle
                                                              .copyWith(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal),
                                                        )),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                                8.0)
                                                            .copyWith(
                                                                top: 5,
                                                                bottom: 4),
                                                    child: Container(
                                                      color: Colors.grey
                                                          .withOpacity(0.2),
                                                      height: 200,
                                                      child: SfDateRangePicker(
                                                        headerHeight: 30,
                                                        onSelectionChanged:
                                                            (dateRangePickerSelectionChangedArgs) {},
                                                        selectionMode:
                                                            DateRangePickerSelectionMode
                                                                .range,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Container(
                                                      height: 200,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 20.0),
                                                            child: Container(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Text(
                                                                "Dropoff Location",
                                                                style: Fonts
                                                                    .tileTitle
                                                                    .copyWith(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.normal),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        15.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                                border: Border
                                                                    .all(),
                                                              ),
                                                              height: 50,
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        15.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Wrap(
                                                                      spacing:
                                                                          20,
                                                                      children: [
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .mapMarker,
                                                                          color:
                                                                              Colors.red,
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsets
                                                                              .only(
                                                                              top: 2.0),
                                                                          child:
                                                                              Text(
                                                                            "Search Destination",
                                                                            style:
                                                                                TextStyle(color: Colors.grey),
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
                                                                    blurRadius:
                                                                        5,
                                                                    offset:
                                                                        Offset(
                                                                            1,
                                                                            2),
                                                                  ),
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: Colors
                                                                    .blue),
                                                            width: 150,
                                                            height: 50,
                                                            child: Center(
                                                                child: Text(
                                                              "Book Now",
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .white,
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
                                      productName: _rental[index][0],
                                      productPrice: _rental[index][1],
                                      imgSrc: _imgSrc[index],
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (value) => ProductPage(
                                              vehicleName: _rental[index][0],
                                              imgSrc: _imgSrc[index],
                                              productPrice: _rental[index][1],
                                            )));
                              },
                            )
                          : AdTile();
                    })),
          ],
        ),
      ),
    );
  }
}
