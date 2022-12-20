import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  int _likes = 0;
  late final DatabaseReference _likesRef;
  late StreamSubscription<DatabaseEvent> _likesSub;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    _likesRef = FirebaseDatabase.instance.ref('likes');
    try {
      final likeSnap = await _likesRef.get();
      _likes = likeSnap.value as int;
    } catch (err) {
      debugPrint(err.toString());
    }

    _likesSub = _likesRef.onValue.listen((DatabaseEvent event) {
      setState(() {
        _likes = (event.snapshot.value ?? 0) as int;
      });
    });
  }

  like() async {
    await _likesRef.set(ServerValue.increment(5));
  }

  @override
  void dispose() {
    _likesSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        SizedBox(
          height: 50,
          width: 20,
        ),
        IconButton(onPressed: like, icon: Icon(Icons.abc_outlined)),
        Text(_likes.toString()),
      ]),
    ));
  }
}
