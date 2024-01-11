import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:timetable_ugrasu/features/qr_code/ui/scanner_result_screen.dart';
import 'package:timetable_ugrasu/features/qr_code/ui/widgets/qr_scanner_overlay.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key}) : super();

  @override
  State<ScannerScreen> createState() => _ScannerState();
}

class _ScannerState extends State<ScannerScreen> {
  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;

  @override
  void initState() {
    _screenWasClosed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        body: Stack(
          children: [
            MobileScanner(
              controller: cameraController,
              onDetect: _foundBarcode,
            ),
            QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5))
          ],
        ));
  }

  void _foundBarcode(BarcodeCapture barcodeCapture) {
    if (!_screenOpened) {
      final String code = barcodeCapture.barcodes[0].rawValue ?? "Test";
      _screenOpened = true;
      //Todo добавить проверку токена
      if (code == "JWT token from API") {
        Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoundScreen(
                        value: code, screenClose: _screenWasClosed)))
            .then((value) => _screenWasClosed());
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Это не наш QR код")));
        Future.delayed(const Duration(seconds: 2))
            .then((value) => _screenOpened = false);
      }
      //Todo добавить обработку токена(если не наш, то вывести ошибку)
    }
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }
}
