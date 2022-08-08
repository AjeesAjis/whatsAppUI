
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/ViewModel/MessageViewModel.dart';

class WhatsAppUi extends StatefulWidget {
  const WhatsAppUi({Key? key}) : super(key: key);

  @override
  State<WhatsAppUi> createState() => _WhatsAppUiState();
}

class _WhatsAppUiState extends State<WhatsAppUi> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      MessageViewModel messageViewModel = context.read<MessageViewModel>();
      messageViewModel.setValues();
    });
  }

  @override
  Widget build(BuildContext context) {
    MessageViewModel messageViewModel = context.watch<MessageViewModel>();
    return  DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.green[300],child: const Icon(Icons.message),),
          appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: Colors.black.withOpacity(.9),
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.camera_alt,color: Colors.white.withOpacity(.7),size: 25,),
                  ),
                  Expanded(
                    // width: MediaQuery.of(context).size.width/2,
                    child: TabBar(
                      labelColor: Colors.green.shade500,
                      unselectedLabelColor: Colors.white.withOpacity(.7),
                      indicatorColor:  Colors.green,
                      tabs: const [
                        Tab(text: "Chats", ),
                        Tab(text: "Status", ),
                        Tab(text: "Calls",),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            title:  Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("WhatsApp",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.search,color: Colors.white.withOpacity(.5),size: 28,),
                      const SizedBox(width: 20,),
                      Icon(Icons.more_vert,color: Colors.white.withOpacity(.5),size: 28,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            color:Colors.black,
            child: TabBarView(
              children:  <Widget>[
                ListView.builder(itemCount: messageViewModel.list.isNotEmpty ? messageViewModel.list.length : 0,itemBuilder: (context, int index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text(messageViewModel.list[index]!.name,style: const TextStyle(color: Colors.white),),
                      leading:  CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(messageViewModel.list[index]!.image),
                      ),
                      subtitle: Row(
                        children: [
                          messageViewModel.list[index]!.seenType == 3 ?  const Icon(Icons.check,color: Colors.blueAccent,size: 16,) : messageViewModel.list[index]!.seenType == 2 ? const Icon(Icons.check,size: 16,color: Colors.grey,) : const Icon(Icons.check,size: 16,color: Colors.grey,) ,
                          Flexible(child: Text(messageViewModel.list[index]!.message,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white.withOpacity(.5)))),
                        ],
                      ),
                      trailing:  Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(messageViewModel.list[index]!.time,style: TextStyle(color: Colors.white.withOpacity(.7),fontSize: 10)),
                            messageViewModel.list[index]!.mute  ? Icon(Icons.volume_mute,size: 32,color: Colors.white.withOpacity(.3),) : const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                const Center(
                  child: Text("Trains"),
                ),
                const Center(
                  child: Text("Hotels"),
                ),

              ],
            ),
          ),)
    );
  }
}
