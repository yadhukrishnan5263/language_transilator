import 'package:flutter/material.dart';
import 'package:tgh_task/widgets/dividers.dart';

class bottomsheet extends StatelessWidget {
  List<String>languages=[
  'Afrikaans' , 'Albanian','Amharic ', 'Arabic ', 'Armenian' , 'Azerbaijani', 'Basque', 'Belarusian', 'Bengali', 'Bosnian', 'Bulgari', 'Catalan', 'Cebuano ', 'Chinese' ,
  'Corsican', 'Croatian', 'Czech' , 'Danish' , 'Dutch' , 'English' , 'Esperanto' , 'Estonian' , 'Finnish' , 'French' , 'Frisian' , 'Galician' , 'Georgian''German' , 'Greek' ,
  'Gujarati' , 'Haitian'  , 'Hausa' , 'Hawaiian' , 'Hebrew' , 'Hindi', 'Hmong' , 'Hungarian', 'Icelandic', 'Igbo' , 'Indonesian' , 'Irish' , 'Italian' , 'Japanese', 'Javanese' , 'Kannada' , 'Kazakh' , 'Khmer' , 'Korean' ,
  'Kurdish', 'Kyrgyz' , 'Lao' , 'Latin' , 'Latvian' , 'Lithuanian', 'Luxembourgish', 'Macedonian' , 'Malagasy' , 'Malay' , 'Malayalam' , 'Maltese' , 'Maori' , 'Marathi' , 'Mongolian', 'Myanmar' , 'Nepali' , 'Norwegian', 'Nyanja' , 'Pashto' , 'Persian' , 'Polish' , 'Portuguese',
  'Punjabi' , 'Romanian' , 'Russian' , 'Samoan' , 'Scots'  , 'Serbian', 'Sesotho' , 'Shona' , 'Sindhi' , 'Sinhala' , 'Slovak' , 'Slovenian' , 'Somali' , 'Spanish' , 'Sundanese' , 'Swahili' ,

  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("From"),
                ),
                h_size10,
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.search)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("All Languages"),
                ),

              ],
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                selectedColor: Colors.deepOrangeAccent,
                tileColor: Colors.white54,
                leading: CircleAvatar(backgroundColor: Colors.pink,),
                title: Text(languages[index]),
                onTap: (){

                },
              ),
            );
          },childCount: languages.length))
        ],
      )
    );
  }
}
