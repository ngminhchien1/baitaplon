
import 'package:flutter/material.dart';
List<String> titles = <String>[
  'Nhân Khẩu',
  'Hộ Khẩu',
];

class ManageBar extends StatelessWidget {
   final TextEditingController _searchController = TextEditingController();
   ManageBar({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(length: 2, 
    child: Scaffold(
        appBar: AppBar(
          title: Text("Quản lý"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            isScrollable: true, // Cho phép cuộn tab
            tabs: [
              Tab(text: 'Hộ khẩu',icon: Icon(Icons.house)),
              Tab(text: 'Nhân khẩu',icon: Icon(Icons.person)),
            ],
          ),
          flexibleSpace: Container(
            
            width: double.infinity,
            margin: EdgeInsets.only(right: 5.0), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.3),
                    child: TextField(

                      cursorColor: Colors.white,
                      controller: _searchController,
                      onChanged: (value) {
                        print('Search text changed: $value');
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10),
                        hintText: 'Tìm kiếm' ,hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),
                  ),
                ),
          
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          Text("tabbar 1"),
          Text("tabbar 2"),
        ]),
    ));
    
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 243, 243, 245), borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton( icon: Icon(Icons.clear),
                onPressed: (){ 
                }
                ),
                hintText: "Tìm kiếm...",
                border: InputBorder.none
              ),
            ),
          ),
        ),
      ),
    );
  }
}
        