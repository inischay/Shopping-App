import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class SearchBarAndCart extends StatelessWidget {
  const SearchBarAndCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 25,
                    spreadRadius: 1,
                    color: Color.fromARGB(255, 221, 221, 221)),
              ],
              borderRadius: BorderRadius.circular(15)),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                  ),
                ),
                hintText: "Search",
                border: InputBorder.none,
                hintStyle:
                    TextStyle(color: AppColors.textTitleColor, fontSize: 20)),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: AppColors.iconColor1,
            )),
      ],
    );
  }
}
