import 'package:flutter/material.dart';
import 'package:flutter_study/components/userCard.dart';
import 'package:flutter_study/widgets/bottomNav.dart';

void main() {
  runApp(const MaterialApp(
    home: ScrollableLayout(),
  ));
}

class ScrollableLayout extends StatelessWidget {
  const ScrollableLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var container = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: const DecorationImage(
          image: AssetImage('images/bg.png'),
          fit: BoxFit.cover, // 可以根据需要调整图片的填充方式
        ),
      ),
      padding: const EdgeInsets.fromLTRB(8, 11, 8, 9),
      child: const SizedBox(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('images/boost.png'),
            height: 15,
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            children: [
              Expanded(
                child: UserCard(
                  isWhite: true,
                ),
              ),
              SizedBox(width: 7.0),
              Expanded(
                child: UserCard(
                  isWhite: true,
                ),
              ),
            ],
          ),
        ],
      )),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 10,
        title: const Text(
          'Daily Picks',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 100, 107)),
        ),
        leading: Container(
          width: 30,
          height: 30,
          padding: const EdgeInsets.only(left: 16),
          child: CircleAvatar(
            child: Image.asset(
              'images/avatar.png', // Path to your image
              width: 30.0,
              height: 30.0,
            ),
          ),
        ),
        actions: [
          Image.asset('images/like_icon.png', width: 30, height: 30),
          const SizedBox(width: 16)
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: ListView(
          children: [
            container,
            const SizedBox(height: 10.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Want to be here too?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 68, 68, 68), fontSize: 16),
                ),
                SizedBox(width: 5.0),
                Row(
                  children: [
                    Text(
                      'Try Boost',
                      style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            99,
                            214,
                            250,
                          ),
                          fontSize: 16),
                    ),
                    Image(
                        image: AssetImage(
                          'images/arrow.png',
                        ),
                        width: 18,
                        height: 18),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            ...List.generate(20, (index) => generateRow())
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }

  Widget generateRow() {
    return const SizedBox(
        child: Row(
      children: [
        Expanded(
          child: UserCard(),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: UserCard(),
        ),
      ],
    ));
  }
}
