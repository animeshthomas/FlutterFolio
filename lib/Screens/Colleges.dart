import 'package:flutter/material.dart';
import 'package:testone/Screens/MyDrawer.dart';
import 'package:testone/model/ApiModel.dart';
import 'package:testone/services/ApiService.dart';

class ApiCall extends StatefulWidget {
  const ApiCall({Key? key}) : super(key: key);

  @override
  _ApiCallState createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  List<ApiModel>? posts;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final apiService = ApiService();
    posts = await apiService.getPosts();

    // Ensure that the state is updated after fetching the data
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('API Call Example'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          child: posts == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
            itemCount: posts!.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 3,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  title: Text(
                    posts![index].title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(posts![index].body),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://iconape.com/wp-content/png_logo_vector/avatar.png",
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                   },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
