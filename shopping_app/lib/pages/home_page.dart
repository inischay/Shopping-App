import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/widgets/card_widget.dart';

import '../widgets/searchbar_and_cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgrundColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgrundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: AppColors.iconColor1,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person))),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const SearchBarAndCart(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Explore",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColors.textColor1, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Flexible(child: CardWidget()),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Best Selling",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColors.textColor1, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const BestSellingCard()
        ],
      ),
    );
  }
}

class BestSellingCard extends StatelessWidget {
  const BestSellingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 10,
                spreadRadius: 3,
                color: Color.fromARGB(255, 232, 232, 232))
          ],
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/img2.jpg")),
        title: const Text(
          "Minimal Chair",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        subtitle: const Text("Lorem Ipsum"),
        trailing: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.textColor1),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
