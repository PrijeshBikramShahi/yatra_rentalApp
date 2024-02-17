
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rental_app/screens/Rental/product_page.dart';

import 'package:rental_app/utils/ad_tile.dart';
import 'package:rental_app/utils/fonts.dart';
import 'package:rental_app/utils/new_info_tile.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FourWheeler extends StatefulWidget {
  const FourWheeler({super.key});

  @override
  State<FourWheeler> createState() => _FourWheelerState();
}

class _FourWheelerState extends State<FourWheeler> {
  TextEditingController textController = TextEditingController();
  List<dynamic> _rental = [
    ['Toyota Camry', '3000', 'SitaRam Cars', 'Thamel, Kathmandu', true],
    ['Honda Accord', '2850', 'GitaShrestha Rentals', 'Patan, Lalitpur', true],
    ['Ford Mustang', '3500', 'NabinShahi Motors', 'Dharan, Sunsari', true],
    ['Chevrolet Cruze', '2500', 'AnjaliGurung Cars', 'Lakeside, Pokhara', true],
    [
      'Mercedes-Benz',
      '4500',
      'RameshKoirala Rentals',
      'Birgunj, Parsa',
      true
    ],
    ['Jeep Wrangler', '4000', 'PoojaThapa Motors', 'Jomsom, Mustang', false],
    ['Hyundai Elantra', '2650', 'BimalRaj Cars', 'Chitwan, Narayani', true],
    ['Mazda CX-5', '3200', 'KalpanaTamang Rentals', 'Syangja, Gandaki', false],
    ['Ford F-150', '3850', 'SureshLuitel Cars', 'Hetauda, Makwanpur', true],
    [
      'Kia Sportage',
      '2900',
      'PratimaAdhikari Rentals',
      'Gulmi, Lumbini',
      false
    ],
    ['Tesla Model 3', '5500', 'RajendraOli Motors', 'Kathmandu, Bagmati', true],
    ['Honda Civic', '2780', 'SaritaMaharjan Rentals', 'Tansen, Palpa', false],
  ];
  List<String> _imgSrc = [
    'https://imgs.search.brave.com/XsxkK_sRVUmKVIZ6e49srKFSZo-DlCwpFNCn9Q7g29A/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lZGdl/Y2FzdC1pbWcueWFo/b28ubmV0L215c3Rl/cmlvL2FwaS83RTZE/ODg2QUM2RjU4NzMx/OEM0MzNBQjI0MjlD/QkRGMkRGMkFERDBG/OEUwRkRFN0I2RjIw/MDAyNkQ0NkJDNjdF/L2F1dG9ibG9nL3Jl/c2l6ZWZpbGxfdzEy/MDBfaDY3NTtxdWFs/aXR5XzgwO2Zvcm1h/dF93ZWJwO2NjXzMx/NTM2MDAwOy9odHRw/czovL3MuYW9sY2Ru/LmNvbS9jb21tZXJj/ZS9hdXRvZGF0YS9p/bWFnZXMvVVNEMzBU/T0MwMjFBMDIxMDAx/LmpwZw',
    'https://imgs.search.brave.com/x-Z-VRoUmFnvQTiPxlLTbDE4LJk4RabKyJEpKlXLH9E/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/Y29uY2VwdGNhcnou/Y29tL2ltYWdlcy9I/b25kYS8yMDE3LUhv/bmRhLUFjY29yZC1T/ZWRhbi1pbWFnZS0w/MS0yMDAuanBn',
    'https://shorturl.at/erHJ4',
    'https://shorturl.at/ahjKP',
    'https://shorturl.at/xMNTY',
    'https://shorturl.at/aefuD',
    'https://shorturl.at/tLSY0',
    'https://edgecast-img.yahoo.net/mysterio/api/EBB9FF6151846654EE63065124501D70D1B5F806B8BDC51490A2B281AF06557F/autoblog/resizefill_w1200_h675;quality_80;format_webp;cc_31536000;/https://s.aolcdn.com/os/ab/_cms/2020/09/28151642/mazda-cx5-f34-21.jpg',
    'https://media.gettyimages.com/id/1209372602/photo/2020-ford-f-150-raptor.jpg?s=612x612&w=0&k=20&c=a19NLjXfUO9BDSWh1wLlJ8Qh7PgM8l1zCVTQYo4JIoA=',
    'https://stimg.cardekho.com/images/carexteriorimages/930x620/Kia/Sportage/5860/1623155125464/rear-left-view-121.jpg?imwidth=890&impolicy=resize',
    'https://images.hgmsites.net/med/2021-tesla-model-3_100777876_m.jpg',
    'https://edgecast-img.yahoo.net/mysterio/api/AE99E7760AADF4B7A319438215E6B4946753B65EFA7228D719B75E91FF22B93E/autoblog/resizefill_w1200_h675;quality_80;format_webp;cc_31536000;/https://s.aolcdn.com/commerce/autodata/images/USD20HOC021B021001.jpg',
  ];
  List<String> filter = [
    'Mileage 25≥',
    'Kathmandu',
    '<Rs.5000',
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
                                      ontapp: (){
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
