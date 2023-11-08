import 'package:booktickets/Screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/tickets_tab.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Tickets",
              style: Styles.headLineStyle1,
            ),
            SizedBox(
              height: 20,
            ),
            AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "5221 364869",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "364738 28274478",
                        secondText: "Number of E ticket",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "B2SG28",
                        secondText: "Booking Code",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                scale: 3,
                              ),
                              Text(
                                "*** 2462",
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Payment Method",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.grey),
                          ),
                          Row(
                            children: [
                              AppColumnLayout(
                                  firstText: "\$250",
                                  secondText: "Price",
                                  alignment: CrossAxisAlignment.end)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TicketView(ticket: ticketList[0]),
            )
          ],
        ),
      ]),
    );
  }
}
