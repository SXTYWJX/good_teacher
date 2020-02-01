import 'package:flutter/material.dart';
import 'package:good_teacher/pages/NewRequest.dart';
import 'package:good_teacher/provider/RequestProvider.dart';
import 'package:provider/provider.dart';

class Demand extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DemandState();
  }

}

class _DemandState extends State<Demand>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("需求发布"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){},)
        ],
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: RequestProvider()),
        ],
        child: RequestList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return NewRequest();
          }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
    );
  }

}


class RequestList extends StatelessWidget{
  const RequestList({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    RequestProvider provider = Provider.of<RequestProvider>(context);
    if(provider==null){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    // TODO: implement build
    return  ListView.builder(
        itemCount: provider.requestList.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            //Image.asset(provider.requestList[index].poster.avatarURL)
            leading: SizedBox(
              width: MediaQuery.of(context).size.width/6,
              height: MediaQuery.of(context).size.height/10,
              child: Image.asset(provider.requestList[index].poster.avatarURL)),
            title: Text(provider.requestList[index].subject),
            subtitle: Text(provider.requestList[index].frequency),
            trailing: Text("地点是 ${provider.requestList[index].location}, 报酬为 ${provider.requestList[index].salary}"),
            onTap: (){

            },
          );
        });
  }
}