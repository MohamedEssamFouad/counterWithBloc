import 'package:firstt/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value is :',
            ),
            BlocBuilder<CounterBloc,CounterState>(builder: (context,state){

              if(state is CounterInitial){
                return Text('counter 0 ');
              }
              else if(state is counterChangeState){
                return Text(
                state.counter.toString(),
                );
              }
              return Container();
            }),

          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: (){
         BlocProvider.of<CounterBloc>(context).add(Inc());

          }, icon:Icon(Icons.add)),
          IconButton(onPressed: (){
            BlocProvider.of<CounterBloc>(context).add(Re());
          }, icon:Icon(Icons.exposure_zero)),
          IconButton(onPressed: (){
            BlocProvider.of<CounterBloc>(context).add(Dec());

          }, icon:Icon(Icons.minimize)),


        ],
      ),
    );
  }
}
