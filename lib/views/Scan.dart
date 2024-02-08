import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chainway_plugin/chainway_plugin.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  var channel = const MethodChannel('chainway');
  var chainway = ChainwayPlugin();

  Widget build(BuildContext context) {
    return Scaffold(
      body: RawKeyboardListener(
        focusNode: FocusNode(),
        onKey: (RawKeyEvent event) {
          print('onKey');
          if (event is RawKeyDownEvent) {
            print('Pressed key: ${event.logicalKey}');
          }
        },
        child: ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(20.0),
                child: MaterialButton(
                  color: Colors.blue[400],
                  child: Text(
                    'startScan',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // var barcodeSubscription;
                    //
                    // chainway.barcodeInitialize();
                    //
                    // Stream<String> barcodeStream = chainway.barcodeStream;
                    //
                    // barcodeSubscription =
                    //     barcodeStream.listen((String barcode) {
                    //   // Handle the barcode event
                    //   chainway.stopScan();
                    //   chainway.closeScan();
                    //
                    //   print('Received barcode: $barcode');
                    //
                    //   barcodeSubscription.cancel();
                    // });
                    //
                    // chainway.startScan();
                    //
                    // Future.delayed(Duration(seconds: 5), () {
                    //   if (barcodeSubscription != null) {
                    //     print('Too much time open. Closing...');
                    //     chainway.stopScan();
                    //     chainway.closeScan();
                    //     barcodeSubscription.cancel();
                    //   }
                    // });
                  },
                )),
          ],
          // crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Listen for key press events
    RawKeyboard.instance.addListener(handleKeyPress);
  }

  @override
  void dispose() {
    // Dispose of the keyboard listener when the widget is disposed
    RawKeyboard.instance.removeListener(handleKeyPress);
    super.dispose();
  }

  void handleKeyPress(RawKeyEvent event) {
    print('handle');
    // Check if the key event is a key down event
    if (event is RawKeyDownEvent) {
      print(event.logicalKey);
    }
  }
}
