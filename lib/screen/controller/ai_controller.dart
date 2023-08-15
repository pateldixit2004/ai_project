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
    AiModel(name: 'Andi',photo:'assets/image/andi.png' ,con: 'Ai serch engine provides direct answers',link:'https://andisearch.com/' ,),
    AiModel(name: 'Fliki',photo:'assets/image/fliki.png' ,con: 'Create video from scripts using realistic in 2 min',link:'https://fliki.ai/',),
    AiModel(name: 'Leonardo.Ai',photo:'assets/image/L1.jpeg' ,con: 'Create video from scripts using realistic in 2 min',link: 'https://leonardo.ai/',),
    AiModel(name: 'Claude.ai',photo:'assets/image/Claude.png' ,con: 'Ai chatbot just like chatGpt',link: 'https://claude.ai/',),
    AiModel(name: 'Namelix ai',photo:'assets/image/nam.jpeg' ,con: 'Generate short, brandable business .',link: 'https://namelix.com/',),
    AiModel(name: 'Genmo Ai',photo:'assets/image/gemo.jpeg' ,con: 'Fantastical video generation with al',link:'https://alpha.genmo.ai/', ),
    AiModel(name: 'Tome',photo:'assets/image/thome.png' ,con: 'Unlock Your Work With create story From Tome.',link: 'https://tome.app/',),
    AiModel(name: 'Codeium',photo:'assets/image/Codeium.jpeg' ,con: 'Al-Ponvod Code Toolkit So Code Smarter',link: 'https://codeium.com/', ),
    AiModel(name: 'Erase It',photo:'assets/image/erase.png' ,con: 'Remove unwanted objects from your photos in seconds',link: 'https://erase-it.cloudinary.com/',),
    AiModel(name: 'Riffusion',photo:'assets/image/riffusion.jpeg' ,con: 'Make music from text with steals, modifiers and genres',link: 'https://www.riffusion.com/',),
    AiModel(name: 'Writesonic',photo:'assets/image/Writesonic.jpeg' ,con: 'Craete SEO-friendly content with Ai for bCoges,website.',link: 'https://writesonic.com/',),
    AiModel(name: 'Looka',photo:'assets/image/Looka.png' ,con: 'Create custom logo maker Ai',link:'https://looka.com/' ,),
    AiModel(name: 'Copy.ai',photo:'assets/image/Copy.png' ,con: 'Ai-powered copywriter for marketing started free',link:'https://www.copy.ai/' ,),
    AiModel(name: 'Durable',photo:'assets/image/Durable.jpeg' ,con: 'Create a website automate marketing & finances in 30 sec',link:'https://durable.co/' ,),
    AiModel(name: 'Piggy Magic',photo:'assets/image/magic.jpeg' ,con: 'Social story maker',link:'https://piggy.to/magic' ,),

    // AiModel(name: 'Andi',photo:'assets/image/andi.png' ,con: 'Ai serch engine provides direct answers',link:'https://andisearch.com/' ,),
    AiModel(name: 'GPTGO',photo:'assets/image/gptgo.jpeg' ,con: 'Chatgpt combined with Google search',link:'https://gptgo.ai/?hl=en' ,),
    AiModel(name: 'Grammer Checker',photo:'assets/image/grammer.png' ,con: 'free grammer checker for essays and reserach',link:'https://quillbot.com/grammar-check' ,),
    AiModel(name: 'Logo Maker',photo:'assets/image/namecheap.png' ,con: 'Ask questions,get free logo to download',link:'https://www.namecheap.com/logo-maker/' ,),

    AiModel(name: 'Soundful',photo:'assets/image/Soundful.jpeg' ,con: 'Royalty-free music with a click of a button',link:'https://soundful.com/' ,),

    AiModel(name: 'Cody',photo:'assets/image/Cody.jpeg' ,con: 'ChatGpt but trained on your business ',link:'https://meetcody.ai/' ,),
    AiModel(name: 'Browse Ai',photo:'assets/image/browse.jpeg' ,con: 'Train a robot to extract& monitor data from website no coding',link:'https://www.browse.ai/?via=fhuatgs2' ,),

    AiModel(name: 'Humata ai',photo:'assets/image/humata.png' ,con: 'ChatGpt For your files',link:'https://www.humata.ai/' ,),
    AiModel(name: 'REimagine',photo:'assets/image/REimagine.png' ,con: 'Redesign any room in seconds using Ai',link:'https://www.reimaginehome.ai/' ,),
    //
    AiModel(name: 'Boomy',photo:'assets/image/Boomy.png' ,con: 'Craate music& get paid for every listen on 40+platform',link:'https://boomy.com/' ,),
    AiModel(name: 'Dream Interpreter',photo:'assets/image/Dream.jpeg' ,con: 'Dream interpreter using GPT-3',link:'https://dreaminterpreter.ai/' ,),
    //
    AiModel(name: 'NightCafe Studio',photo:'assets/image/NightCafe.jpeg' ,con: 'Explore creative possibilities',link:'https://creator.nightcafe.studio/' ,),
    AiModel(name: 'Tutor Ai',photo:'assets/image/Tutor.png' ,con: 'Learing platform,enter topic,get learing option',link:'https://www.tutorai.me/' ,),

    AiModel(name: 'Dalle-2',photo:'assets/image/Dalle-2.jpeg' ,con: 'Create realistic image from textand styles',link:'https://openai.com/dall-e-2' ,),
    AiModel(name: 'ChatGpt Writer',photo:'assets/image/writer.png' ,con: 'GEnerate email/replies based on keywords',link:'https://chatgptui.org/' ,),

    AiModel(name: 'Magic Studio',photo:'assets/image/ma.jpeg' ,con: 'Create stunning visuals in seconds',link:'https://magicstudio.com/' ,),
    AiModel(name: 'Talk To Books',photo:'assets/image/books.jpeg' ,con: 'Expore books with Ai',link:'https://books.google.com/talktobooks/' ,),

    AiModel(name: 'Fy! Studio',photo:'assets/image/fy.png' ,con: 'Create unique wall art from ypur ideas!',link:'https://www.iamfy.co/studio' ,),
    AiModel(name: 'AutoDraw',photo:'assets/image/AutoDraw.png' ,con: 'Ai-powered drawing tool to help you draw faster',link:'https://www.autodraw.com/' ,),

    AiModel(name: 'Validator Ai',photo:'assets/image/valider.jpeg' ,con: 'Get feedback to validate & imporve statup odeas',link:'https://validatorai.com/' ,),
    AiModel(name: 'Stable Diffusion',photo:'assets/image/stable.jpeg' ,con: 'Deep learing text to image model',link:'https://stablediffusionweb.com/' ,),
    //
    // AiModel(name: '',photo:'assets/image/.jpeg' ,con: '',link:'' ,),
    // AiModel(name: '',photo:'assets/image/.jpeg' ,con: '',link:'' ,),

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