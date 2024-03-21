import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';

class UserHiCard extends StatelessWidget {
  final idx;
  final imgSrc;
  final selectedCardIndex;
  final handleCardTap;
  const UserHiCard(
      {Key? key,
      required this.imgSrc,
      required this.idx,
      required this.selectedCardIndex,
      required this.handleCardTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          handleCardTap(idx);
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: idx == selectedCardIndex
                  ? const Color.fromARGB(255, 99, 214, 250)
                  : const Color.fromARGB(255, 241, 241, 241),
              width: 2.0,
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    imgSrc,
                    fit: BoxFit.cover,
                    width: 81,
                    height: 76,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '80',
                    style: BodyText_14.copyWith(
                      color: Black_444,
                    ),
                  ),
                  const Image(
                    image: AssetImage('images/stone.png'),
                    width: 17,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
