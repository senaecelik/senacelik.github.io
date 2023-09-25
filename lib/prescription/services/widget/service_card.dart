import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:senaecelik/prescription/services/widget/service_back_card.dart';
import 'package:senaecelik/resources/values_manager.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const ServiceCard({
    Key? key,
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
  }) : super(key: key);

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.height / 3,
          padding: EdgeInsets.all(AppPadding.p30),
          decoration: BoxDecoration(
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : null,
          ),
          child: ServiceCardBackWidget(
            serviceDesc: widget.serviceDescription,
            serviceTitle: widget.serviceTitle,
          ),
        ),
        front: Container(
          width: MediaQuery.of(context).size.width / 6,
          height: MediaQuery.of(context).size.height / 3,
          padding: EdgeInsets.all(AppPadding.p30),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 233, 231, 231),
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                widget.serviceIcon,
                height: 60,
                color: Colors.black,
              ),
              Text(
                widget.serviceTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
