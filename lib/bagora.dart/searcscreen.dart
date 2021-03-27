import 'package:flutter/material.dart';

class ExampleSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: GestureDetector(
          onTap: () => showSearch(context: context, delegate: DataSearch()),
          child: Container(
              margin: EdgeInsets.all(0),
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey, width: 5)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Card(
                    elevation: 25,
                  ))),
        ),
      )),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final city = [
    "tamilnadu",
    "andrapredhesh",
    "bangaloor",
    "maharashtra",
    "kaerala",
    "goa",
    "PUNE",
    "chennai",
    "gujarath",
    "telungana",
    "varanasi",
    "sikkim",
    "jargatt"
  ];
  final recentcityvisited = [
    "chennai",
    "gujarath",
    "telungana",
    "varanasi",
    "sikkim",
    "jargatt"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
    //throw UnimplementedError();
    //google did the same
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });

    // throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionlist = query.isEmpty
        ? recentcityvisited
        : city.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionlist.length,
      itemBuilder: (context, index) => ListTile(
          title: Text(
        suggestionlist[index],
      )),
    );
    // here used astream buider google
    //retun Listview(children:snapshot.map<Widget>(a)=>or Listtile (ontap(){qurry = a.tit})or direct into that content ontap(){close(contex,a)},Text(a.tit)).tolist

    //throw UnimplementedError();
  }
}
