import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CookSpace',

      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CookSpace'),
      ),
      body: HomeItems(),


      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('Menu'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Profile'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text(
              'Messages ',
            ),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class HomeItems extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[


          SizedBox(height: 10.0),
          Container(
            child: Column(
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: TextField(
                      // controller: TextEditingController(text: locations[0]),
                      cursorColor: Theme.of(context).primaryColor,

                      decoration: InputDecoration(
                          hintText: "Search Food ",
                          hintStyle: TextStyle(
                              color: Colors.black38, fontSize: 16),
                          prefixIcon: Material(
                            elevation: 0.0,
                            borderRadius:
                            BorderRadius.all(Radius.circular(30)),
                            child: Icon(Icons.fastfood),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 13)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Popular Food Items",
              style: GoogleFonts.lobster(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0  ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 250,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16.0),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: _buildItem1,
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Regular Food Items",
               style: GoogleFonts.lobster(
                fontWeight: FontWeight.bold,
                fontSize: 22.0  ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 100,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16.0),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: _buildItem2,
            ),
          ),

        ],
      ),
    );
  }

  final List<Image> images = [
    Image.asset("images/food1.jpg"),
    Image.asset("images/food2.jpg"),
    Image.asset("images/food3.jpg"),
    Image.asset("images/food4.jpg"),
    Image.asset("images/food1.jpg"),
    Image.asset("images/food2.jpg"),
    Image.asset("images/food3.jpg"),
    Image.asset("images/food4.jpg"),
  ];

  Widget _buildItem1(
    BuildContext context,
    index,
  ) {
    return Container(
      margin: EdgeInsets.only(right:10),
      child: GestureDetector(
        onTap: () => {
          print('clicked')
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.transparent,
          elevation: 2,
          child: Container(
//            color: Color(0xff00005c),
            width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: images[index].image, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 10),
                Text(

                  'Fast Food Items',
                  style: GoogleFonts.questrial(
                    fontSize: 16
                  ),
                ),
                Text(
                  'TK. 180',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: Colors.purple

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.red),
                        onPressed: (){}),
                    IconButton(
                        icon: Icon(Icons.add_shopping_cart, color: Colors.cyanAccent),
                        onPressed: (){}),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem2(
      BuildContext context,
      index,
      ) {
    return Container(
      margin: EdgeInsets.only(right:10),
      child: GestureDetector(
        onTap: () => {},
        child: Card(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.transparent,
          elevation: 2,
          child: Container(


//            color: Color(0xff00005c),
            width: 200,
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: images[index].image, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(

                    height: 90,
                    child: Column(
                      children: <Widget>[

                        Text(

                          'Fast Food Items',
                          style: GoogleFonts.questrial(
                            fontSize: 16
                          ),
                        ),
                        Text(
                          'TK. 180',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.purple
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.favorite_border, color: Colors.red),
                                onPressed: (){}),
                            IconButton(
                                icon: Icon(Icons.add_shopping_cart, color: Colors.cyanAccent),
                                onPressed: (){}),
                          ],
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

}
