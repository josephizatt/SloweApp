import React, { Component } from 'react';
import { Text, View, Image } from 'react-native';



class NewsItem extends Component {
  render() { 
    var items = 
        [{ 
          "id" : 1,
          "title": "Title 1", 
          "desc": "A short description", 
          "image": "uri: https://upload.wikimedia.org/wikipedia/commons/d/de/Bananavarieties.jpg",
        },
        {
          "id" :2,
          "title": "Title 2", 
          "desc": "A short description", 
          "image": "uri: https://upload.wikimedia.org/wikipedia/commons/d/de/Bananavarieties.jpg",
        },
        {
          "id" :3,
          "title": "Title 3", 
          "desc": "A short description", 
          "image": "uri: https://upload.wikimedia.org/wikipedia/commons/d/de/Bananavarieties.jpg",
        }];

    var arrayLength = items.length;
    
    

    for (var i = 0; i < arrayLength; i++) {



      return (
        <View>
          <Text>{items[i].title}</Text>
          <Text>{items[i].desc}</Text>
          <Image source={items[i].image} style={{width: 100}}/>
        </View>
      );
    }
  }
}

export default class Feed extends Component {
  render() {
    return (
      <View>
        <NewsItem id="1"/>
        <NewsItem id="2"/>
        <NewsItem id="3"/>
      </View>
    );
  }
}