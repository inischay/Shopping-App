import 'package:flutter/cupertino.dart';
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Product",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 25,
              ))
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
                    child: Image.asset(widget.appModels.img),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 20,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: AppColors.priceColor,
                            size: 30,
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.appModels.price,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.priceColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.appModels.title,
                          style: const TextStyle(fontSize: 17),
                        ),
                        Row(
                          children: [
                            Text(
                              "${widget.appModels.rating.toString()}/ 5.0",
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              width: 5,
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
                                    Icons.star_border_outlined,
                                    color: Colors.amber,
                                  );
                                }
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Color Option",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 5,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.priceColor,
                        ),
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey,
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.iconColor1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ReadMoreText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                      trimLines: 4,
                      style: TextStyle(
                          height: 1.5,
                          color: AppColors.textTitleColor,
                          fontSize: 16),
                      trimMode: TrimMode.Line,
                      moreStyle: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 60,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.iconColor1,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: CupertinoButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Add to Cart",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                  onPressed: () {}),
            ),
          )
        ],
      ),
    );
  }
}
