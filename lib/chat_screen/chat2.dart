import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat/chat_tile.dart';

class ChatScreenTwo extends StatelessWidget {
  const ChatScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // custom app bar
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // dp
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
                                  "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 58,
                              top: 10,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      // serach
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          size: 36,
                          Icons.search,
                          color: Color.fromRGBO(116, 128, 136, 1),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                // selection
                Container(
                  height: 37,
                  width: double.infinity,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(241, 242, 246, 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(28, 206, 158, 1),
                        ),
                        child: const Center(
                          child: Text(
                            "Chats",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Center(
                            child: Text(
                              "Match",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                // chat tile
                const ChatTilesWidget(
                  imageUrl:
                      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  statusColor: Colors.green,
                  name: "Angela Garrett",
                  fontColor: Colors.black,
                  message: "Hello, how are you?",
                  time: "12 min",
                  containerColor: Colors.red,
                  messageCount: "3",
                ),
                const SizedBox(height: 10),
                const ChatTilesWidget(
                  imageUrl:
                      "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  statusColor: Colors.orange,
                  name: "Tammy Hayets",
                  fontColor: Colors.grey,
                  message: "Thank you",
                  containerColor: Colors.white,
                  time: "12 min",
                  messageCount: "1",
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 10),

                const SizedBox(height: 10),

                const SizedBox(height: 10),

                const SizedBox(height: 10),

                const SizedBox(height: 10),

                const SizedBox(height: 10),

                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
