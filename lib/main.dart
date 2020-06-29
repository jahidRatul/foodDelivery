import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CookSpace',

      theme: ThemeData(
        primarySwatch: Colors.pink,
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
  final Color color1 = Color(0xff511845);
  final Color color2 = Color(0xff900c3f);
  final Color color3 = Color(0xffc70039);
  final Color color4 = Color(0xffff5733);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color3, color4],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
      ),
      Container(
        height: 490,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
            color: color2),
      ),
      Container(
        height: 370,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
            color: color1),
      ),


        SingleChildScrollView(
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
                                child: Icon(Icons.search),
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
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
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
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
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
        ),
      ],
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
          elevation: 1,
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: Colors.white

                  ),
                ),
                Text(
                  'TK. 180',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: Colors.tealAccent

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.amberAccent),
                        onPressed: (){}),
                    IconButton(
                        icon: Icon(Icons.add_shopping_cart, color: Colors.cyan),
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
          elevation: 1,
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
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          'TK. 180',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.tealAccent
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.favorite_border, color: Colors.amberAccent),
                                onPressed: (){}),
                            IconButton(
                                icon: Icon(Icons.add_shopping_cart, color: Colors.cyan),
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
