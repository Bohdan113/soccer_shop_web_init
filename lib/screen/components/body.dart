import 'package:flutter/material.dart';
import '../../constant.dart';
import '../shop_screen/shop_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height/1.6,
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.65),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Soccer Shop".toUpperCase(),
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: kTextcolor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Text(
                "Спортивний магазин саме для тебе,\nтакі бренди як: Addidas, Nike, Puma, Joma\nЗа доступними цінами",
                style: TextStyle(
                  backgroundColor: Colors.black.withOpacity(0.7),
                  fontSize: 21,
                  color: kTextcolor.withOpacity(0.9),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    // ignore: prefer_const_constructors
                    MaterialPageRoute(builder: (context) => ShopScreen()),
                  );
                },

                splashColor: Colors.white,focusColor: Colors.white,autofocus: true,
                child: FittedBox(
                  // Now it just take the required spaces
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 38,
                          width: 38,
                          decoration: const BoxDecoration(
                            color: kTextcolor,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "Get Start Shop".toUpperCase(),
                          style: const TextStyle(
                            color: kTextcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
