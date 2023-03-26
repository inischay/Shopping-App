import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app/constants/constants.dart';
import 'package:shopping_app/models/models.dart';
import 'package:shopping_app/pages/home_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.appModels});
  final AppModels appModels;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Product",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60)),
                      child: Image.asset(widget.appModels.img)),
                  Positioned(
                    bottom: 10,
                    right: 20,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.priceColor,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.appModels.price,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColors.priceColor,
                                fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.appModels.title,
                          style: const TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            const Text(
                              "4/5",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Row(
                              children: List.generate(5, (index) {
                                if (index < widget.appModels.rating) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  );
                                } else {
                                  return const Icon(
                                    Icons.star_border,
                                    color: Colors.amber,
                                  );
                                }
                              }),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Color Option"),
                    SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 5,
                      children: [
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: AppColors.priceColor,
                        ),
                        const CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.grey,
                        ),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: AppColors.iconColor1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ReadMoreText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                      style: TextStyle(
                          color: AppColors.textTitleColor,
                          fontSize: 16,
                          height: 1.5),
                      trimMode: TrimMode.Line,
                      trimLines: 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                  color: AppColors.iconColor1,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 23,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
