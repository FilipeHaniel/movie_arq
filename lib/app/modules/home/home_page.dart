import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_arq/app/modules/event_handler.dart';
import 'package:movie_arq/app/modules/home/contract/home_page_contract.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomePageContract {
  @override
  void error() {}

  @override
  void initial() {
    log('App iniciado');
  }

  @override
  void loading() {}

  @override
  void success() {}

  @override
  void initState() {
    GetIt.I<EventHandler>().setHomePage(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 2),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (_, index) => const SizedBox(width: 1),
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'movie',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
