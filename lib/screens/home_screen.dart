import 'package:flutter/material.dart';
import 'package:flutter_application_splash_screen/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                header(size),
                SizedBox(
                  height: size.height / 25,
                ),
                SizedBox(
                  width: size.width / 1.1,
                  child: RichText(
                    text: const TextSpan(
                      text: "Find Your",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Love...",
                          style: TextStyle(
                            fontSize: 24,
                            color: redColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 100,
                ),
                textField(size),
                SizedBox(
                  height: size.height / 100,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1.5,
                ),
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return listViewBuilderItem(size);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: bottomNavigationBar(size),
        ),
      ),
    );
  }

  Widget listViewBuilderItem(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        height: size.height / 2.2,
        width: size.width / 1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: redColor, width: 1.2),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: size.height / 4,
                width: size.width / 1.05,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/img1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height / 10,
                    width: size.height / 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: redColor,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "No Photo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: "Rahul Naik\n",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "BE Computer Science.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: size.height / 15,
                    width: size.height / 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: redColor,
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.favorite_outline,
                      color: redColor,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height / 14,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 35,
                  ),
                  const Text(
                    "Match",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: size.width / 100,
                  ),
                  Container(
                    height: size.height / 20,
                    width: size.width / 200,
                    color: Colors.white,
                  ),
                  const Icon(
                    Icons.clear,
                    color: Colors.white,
                    size: 35,
                  ),
                  const Text(
                    "Mismatch",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavigationBar(Size size) {
    return Container(
      height: size.height / 11,
      width: size.width,
      color: redColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: size.width / 15,
          ),
          Container(
            height: size.height / 22,
            width: size.width / 4.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.only(left: 3, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: Icon(
                    Icons.home_outlined,
                    color: redColor,
                    size: 25,
                  ),
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(
              child: Icon(Icons.send, color: Colors.white),
            ),
          ),
          const Expanded(
            child: SizedBox(
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
          const Expanded(
            child: SizedBox(
              child: Icon(Icons.notifications, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget textField(Size size) {
    return Container(
      height: size.height / 15,
      width: size.width / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: redColor, width: 1.5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Search here...",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.search,
            color: redColor,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget header(Size size) {
    return SizedBox(
      height: size.height / 10,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.menu,
            size: 34,
            color: redColor,
          ),
          RichText(
            text: const TextSpan(
              text: "Soul",
              style: TextStyle(
                fontSize: 28,
                color: redColor,
                fontWeight: FontWeight.w500,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "mate",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.account_circle,
            size: 34,
            color: redColor,
          )
        ],
      ),
    );
  }
}
