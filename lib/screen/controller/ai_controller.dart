import 'package:ai_project/screen/model/model.dart';
import 'package:get/get.dart';

class AiController extends GetxController


{



  RxDouble p1=0.0.obs;

  void changeProg(double update)
  {
    p1.value=update;
  }
  List<AiModel> itemList=[
    AiModel(name: 'ChatGPT',photo:'assets/image/chat.png' ,con: 'ChatGPT is an AI chatbot that uses natural language',link: 'https://chat.openai.com/',),
    AiModel(name: 'Playground AI',photo:'assets/image/play.png' ,con: 'FreeAi image creator.Use it to create art',link: 'https://playgroundai.com/',),
    AiModel(name: 'Google Bard',photo:'assets/image/go.jpeg' ,con: 'Conversational Ai sercvice,powered by LaMDA',link: 'https://bard.google.com/',),
    AiModel(name: 'Fliki',photo:'assets/image/fliki.png' ,con: 'Create video from scripts using realistic in 2 min',link:'https://fliki.ai/',),
    AiModel(name: 'Leonardo.Ai',photo:'assets/image/L1.jpeg' ,con: 'Create video from scripts using realistic in 2 min',link: 'https://leonardo.ai/',),
    AiModel(name: 'Claude.ai',photo:'assets/image/Claude.png' ,con: 'Ai chatbot just like chatGpt',link: 'https://claude.ai/',),
    AiModel(name: 'Namelix ai',photo:'assets/image/nam.jpeg' ,con: 'Generate short, brandable business .',link: 'https://namelix.com/',),
    AiModel(name: 'Genmo Ai',photo:'assets/image/gemo.jpeg' ,con: 'Fantastical video generation with al',link:'https://alpha.genmo.ai/', ),
    AiModel(name: 'Tome',photo:'assets/image/thome.png' ,con: 'Unlock Your Work With create story From Tome.',link: 'https://tome.app/',),
    AiModel(name: 'Codeium',photo:'assets/image/Codeium.jpeg' ,con: 'Al-Ponvod Code Toolkit So Code Smarter',link: 'https://codeium.com/', ),
    AiModel(name: 'Erase It',photo:'assets/image/erase.png' ,con: 'Remove unwanted objects from your photos in seconds',link: 'https://erase-it.cloudinary.com/',),
    AiModel(name: 'Riffusion',photo:'assets/image/riffusion.jpeg' ,con: 'Make music from text with steals, modifiers and genres',link: 'https://www.riffusion.com/',),
  ];
//   List inkList=[
//     'https://chat.openai.com/',
// '    https://playgroundai.com/',
//     'https://bard.google.com/',
//     'https://fliki.ai/',
//     'https://leonardo.ai/',
//     'https://claude.ai/',
//     'https://namelix.com/',
//     'https://alpha.genmo.ai/',
//     'https://tome.app/',
//     'https://codeium.com/',
//     'https://erase-it.cloudinary.com/',
//     'https://www.riffusion.com/',
//   ];



  RxList<AiModel> list=<AiModel>[].obs;
  List<AiModel> filterList=[];

  void serchProduct(String serch)
  {
    if(serch.isEmpty)
      {
        list.value=List.from(itemList);
        print("==============================${list.length}");
      }
    else
      {
        filterList.clear();

        for(var c in itemList)
          {
            if(c.con!.toLowerCase().contains(serch!.toLowerCase()) || c.name!.toLowerCase().contains(serch!.toLowerCase()))
              {
                filterList.add(c);
              }
          }
        list.value=List.from(filterList);
      }
  }



}