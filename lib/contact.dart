import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

void _launchEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      throw 'Could not launch $params';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'ABOUT US',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 19, 164, 255),
              Color.fromARGB(255, 65, 206, 241),
              Color.fromARGB(255, 143, 228, 254),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.info_rounded,
                  size: 50.0,
                  color: Color.fromARGB(255, 7, 100, 176),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60),
                        const Row(
                          children: [
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Text(
                                "Created by Students of Jyothi Engineering College, Thrissur as a part of Internship in Flutter App Development, Conducted by ICT Kerala.",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Row(
                          children: [
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Text(
                                "• Freejo Jaison K",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Text(
                                "• Ageto Sunny",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Text(
                                "• Satchidhanand E",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Text(
                                "• Hareesh T",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Column(
                          children: [
                            const Row(
                              children: [
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: Text(
                                    "It was a great opportunity to work together. Thank you ICT Kerala for the great opportunity. We look forward to working together in the future.",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 5,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                const SizedBox(width: 10.0),
                                const Icon(Icons.mail, color: Colors.black),
                                GestureDetector(
                                  onTap: () => _launchEmail("agetosunny1@gmail.com"),
                                  child: const Text(
                                    "agetosunny1@gmail.com",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 10.0),
                                const Icon(Icons.mail, color: Colors.black),
                                GestureDetector(
                                  onTap: () => _launchEmail("hareesh0q@gmail.com"),
                                  child: const Text(
                                    "hareesh0q@gmail.com",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 10.0),
                                const Icon(Icons.mail, color: Colors.black),
                                GestureDetector(
                                  onTap: () => _launchEmail("freejojaisonk@gmail.com"),
                                  child: const Text(
                                    "freejojaisonk@gmail.com",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 10.0),
                                const Icon(Icons.mail, color: Colors.black),
                                GestureDetector(
                                  onTap: () => _launchEmail("satchidanand@gmail.com"),
                                  child: const Text(
                                    "satchidanand@gmail.com",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}