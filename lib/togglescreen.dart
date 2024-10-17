import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:togglescreenprovider/toggle_provider.dart';
class ToggleScreen extends StatefulWidget{
  @override  
  State<ToggleScreen>createState()=>_ToggleScreenState();
}
class _ToggleScreenState extends State<ToggleScreen>{
  
  
  @override  

  Widget build(BuildContext context){
    final toggleProvider=Provider.of<ToggleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              toggleProvider.isOn?'ON':'OFF',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: toggleProvider.toggleSwitch,
             child: Text(toggleProvider.isOn?'Turn OFF':'Turn ON'),
             ),
          ],
        ),
      ),
    );
  }
}