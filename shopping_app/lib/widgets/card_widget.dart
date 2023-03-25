import 'package:flutter/material.dart';
import 'package:shopping_app/models/models.dart';
import 'package:shopping_app/pages/detail_Page.dart';

import '../constants/constants.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemCount: appModels.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            appModels: appModels[index],
                          )));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.all(15),
              height: 330,
              width: MediaQuery.of(context).size.width * 0.55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(1, 2),
                        blurRadius: 10,
                        spreadRadius: 3,
                        color: Color.fromARGB(255, 232, 232, 232))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(
                          appModels[index].img,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    appModels[index].title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor1),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    appModels[index].description,
                    style: TextStyle(
                        fontSize: 14, color: AppColors.textTitleColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(appModels[index].price,
                          style: const TextStyle(
                            fontSize: 20,
                          )),
                      CircleAvatar(
                        backgroundColor: AppColors.textColor1,
                        radius: 20,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
