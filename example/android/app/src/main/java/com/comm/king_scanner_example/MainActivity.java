package com.comm.king_scanner_example;

import com.comm.king_scanner.KingScannerPlugin;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine){
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }
}
