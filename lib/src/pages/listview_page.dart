import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State {
  List<int> _numberList = new List();
  int _lastNumber = 0;
  bool _isLoading = false;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _addTen();

    _scrollController.addListener(() {
      print('Scroll');
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Stack(children: <Widget>[
        _createList(),
        _createLoading(),
      ]),
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: _getPageOne,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _numberList[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image=$image'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },
      ),
    );
  }

  Future<Null> _getPageOne() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _numberList.clear();
      _lastNumber++;
      _addTen();
    });

    return Future.delayed(duration);
  }

  _addTen() {
    for (var i = 0; i < 10; i++) {
      _lastNumber++;
      _numberList.add(_lastNumber);
    }

    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);

    _addTen();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(height: 15.0),
        ],
      );
    } else {
      return Container();
    }
  }
}
