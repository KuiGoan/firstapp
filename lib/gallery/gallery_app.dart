import 'package:firstapp/controller/snackbar_controller.dart';
import 'package:flutter/material.dart';

class GalleryApp extends StatefulWidget {
  const GalleryApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  @override
  Widget build(BuildContext context) {
    final String appName = 'Gallery App';

    return new MaterialApp(
        title: appName,
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.lightBlue[800],
            accentColor: Colors.cyan[600]),
        home: _GalleryAppPage(
          title: appName,
        ));
  }
}

class _GalleryAppPage extends StatelessWidget {
  final String title;

  _GalleryAppPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child:
//          Text(
//            'Check new Gallery App...',
//            style: Theme.of(context).textTheme.title,
//          ),
              SnackBarPage(text: 'Test SnackBar show'),
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.brown),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          )),
    );
  }
}
