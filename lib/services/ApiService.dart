import 'package:testone/model/ApiModel.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<List<ApiModel>?> getPosts() async{
    var client=http.Client();
    var apiUrl=Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response=await client.get(apiUrl);
    if(response.statusCode==200){
      var data=response.body;
      print(data);
      return apiModelFromJson(data);
    }
    else{
      print("Unable to call!!");
    }
  }
}