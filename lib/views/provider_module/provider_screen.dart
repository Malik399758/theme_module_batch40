import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_module_batch40/controllers/providers/testing_provider.dart';
import 'package:theme_module_batch40/views/provider_module/provider_screen1.dart';

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({super.key});

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TestingProvider>(
      builder: (context,provider,_){
        return  Scaffold(
          appBar: AppBar(
            title: Text('Provider'),
            backgroundColor: Colors.amber,
          ),
          body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(provider.count.toString(),style: TextStyle(
                fontSize: 30
              ),),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProviderScreen1(count: provider.count)));
                  },
                  child: Text('Next Page',style: TextStyle(
                    color: Colors.white
                  ),))
            ],
          )),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: (){
              provider.increment();
            },
            child: Icon(Icons.add,color: Colors.white,),),
        );
      },
    );
  }
}
