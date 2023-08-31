import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: const Color(0xff1d1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0)
            ]),
            child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(16),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                        // height: 24,
                        // width: 24,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                        // height: 24,
                        // width: 24,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none))),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Breakfast',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/icons/arrow-left.svg',
            height: 24,
            width: 24,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 36,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 6,
              width: 6,
            ),
          ),
        )
      ],
    );
  }
}
