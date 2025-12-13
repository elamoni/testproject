import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  List products = [];
  bool isLoading = true;
  @override
  void initState(){
    super.initState();
    getchProducts();
  }

  Future<void> getchProducts() async {
    //http://35.73.30.144:2008/api/v1
    final url = Uri.parse("http://35.73.30.144:2008/api/v1/ReadProduct");
    final response = await http.get(url);

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body) ;
      setState(() {
        products = jsonResponse['data'];
        isLoading = false;
      });
    }//if end
    else{
      setState(() {
        isLoading = false;

      });
    }//else end

  }

  @override
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My CRUD'),
      ),
      body: isLoading ?Center(child: CircularProgressIndicator()) : GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 1
          ),
          itemCount: products.length,
          itemBuilder: (context,index){
            final item = products[index];
            return Card(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                      child: Image.network(item['Img'].toString()),
                    ),
                    Text(item['ProductName'],
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('Price: \$${item['UnitPrice']} | QTY:${item['Qty']}')
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}