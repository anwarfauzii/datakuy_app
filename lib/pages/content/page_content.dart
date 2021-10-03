import 'dart:convert';

import 'package:datakuy_app/pages/content/page_detail.dart';
import 'package:datakuy_app/widget/text/text_style.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  _GetDataScreenState createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  final String url = "https://datasekolahapi.herokuapp.com/api/data/sd/jakarta";
  List? data;
  @override
  void initState() {
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async {
    this.getJsonData(context);
  }

  Future<String?> getJsonData(BuildContext context) async {
    final response =
        await http.get(Uri.parse(url), headers: {"Accept": "aplication/json"});
    
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['Kepulauan_Seribu'];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Data SD di Kepulauan Seribu"),
        ),
        body: RefreshIndicator(
          onRefresh: _getRefreshData,
          child: ListView.builder(
              itemCount: data?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                        onTap: () {
                          var data1 = data![index]['nama'];
                          var data2 = data![index]['npsn'];
                          var data3 = data![index]['alamat'];
                          var data4 = data![index]['kodepos'];
                          var data5 = data![index]['desa'];
                          var data6 = data![index]['kecamatan'];
                          var data7 = data![index]['kabupaten'];
                          var data8 = data![index]['provinsi'];
                          var data9 = data![index]['status'];
                          var data10 = data![index]['jenjang'];

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(value: [
                                        data1,
                                        data2,
                                        data3,
                                        data4,
                                        data5,
                                        data6,
                                        data7,
                                        data8,
                                        data9,
                                        data10
                                      ])));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    data![index]['nama']!,
                                    style: font14
                                  ),
                                  Icon(Icons.chevron_right),
                                ],
                              ),
                              SizedBox(height: 3),
                              Divider(
                                height: 20,
                                thickness: 1,
                                endIndent: 25,
                                indent: 15,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}
