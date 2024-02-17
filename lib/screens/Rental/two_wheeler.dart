import 'package:flutter/material.dart';
import 'package:rental_app/screens/Rental/product_page.dart';
import 'package:rental_app/utils/ad_tile.dart';
import 'package:rental_app/utils/fonts.dart';
import 'package:rental_app/utils/new_info_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TwoWheeler extends StatefulWidget {
  const TwoWheeler({super.key});

  @override
  State<TwoWheeler> createState() => _TwoWheelerState();
}

class _TwoWheelerState extends State<TwoWheeler> {
  TextEditingController textController = TextEditingController();
  List<String> _imgSrc = [
    'https://shorturl.at/bdsOX',
    'https://shorturl.at/lCHW3',
    'https://shorturl.at/pxB16',
    'https://shorturl.at/wACO9',
    'https://shorturl.at/euNTZ',
    'https://shorturl.at/lIUY7',
    'https://shorturl.at/ptCMZ',
    'https://shorturl.at/pxB16',
    'https://shorturl.at/wyAX1',
    'https://shorturl.at/wACO9',
    'https://shorturl.at/euNTZ',
    'https://shorturl.at/eNU25',
    'https://shorturl.at/hszE1',
    'https://shorturl.at/ptCMZ',
    'https://shorturl.at/lIUY7',
  ];
  List<dynamic> _rental = [
    ['Harley Davidson', '1000', 'RadheShyam Motors', 'RadheRadhe', true],
    ['Yamaha', '800', 'RonishShah Rentals', 'Sano Thimi', true],
    ['Suzuki', '950', 'RishavDas Rentals', 'Lake Side, Pokhara', false],
    ['Kawasaki', '1120', 'HariBikram Bikes', 'Boudha, Kathmandu', true],
    ['Ducati', '1250', 'SaritaSharma Motors', 'Baneshwor, Kathmandu', false],
    ['Honda', '980', 'DilipRai Rentals', 'Dhankuta, Koshi', true],
    ['Royal Enfield', '890', 'AashaLama Motors', 'Tansen, Palpa', false],
    ['KTM', '1100', 'SumanMagar Rentals', 'Ghorahi, Dang', true],
    ['BMW', '1500', 'NimaSherpa Bikes', 'Namche Bazaar, Solukhumbu', false],
    ['Aprilia', '1350', 'RajendraThapa Rentals', 'Kusma, Parbat', true],
    ['Suzuki', '1030', 'AnjuPoudel Motors', 'Ilam, Mechi', false],
    [
      'Harley Davidson',
      '1280',
      'BibekGautam Rentals',
      'Lumbini, Rupandehi',
      true
    ],
  ];

  List<String> filter = [
    'Brand New',
    'Mileage 25≥',
    'Kathmandu',
    '<Rs.5000',
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
                                                                    blurRadius: 5,
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
                                                                fontWeight: FontWeight.bold,
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
