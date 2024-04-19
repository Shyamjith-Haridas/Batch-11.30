import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatTilesWidget extends StatelessWidget {
  const ChatTilesWidget({
    super.key,
    required this.imageUrl,
    required this.statusColor,
    required this.name,
    required this.message,
    required this.time,
    required this.messageCount,
    required this.fontColor,
    required this.containerColor,
  });

  final String imageUrl;
  final Color statusColor;
  final String name;
  final String message;
  final String time;
  final String messageCount;
  final Color fontColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 51,
                top: 50,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: statusColor,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    color: fontColor,
                  ),
            ),
            Row(
              children: [
                Text(
                  message,
                  style: GoogleFonts.ptSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: fontColor,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  ".",
                  style: GoogleFonts.ptSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  time,
                  style: GoogleFonts.ptSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
        const Spacer(),
        Container(
          height: 30,
          width: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: containerColor,
          ),
          child: Text(
            messageCount,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
