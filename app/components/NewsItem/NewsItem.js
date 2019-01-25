import React from 'react';
import { View, Text } from 'react-native';

class NewsItem extends React.Component {
    render() {
      return (
        <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
          <Text>A News Item</Text>
        </View>
      );
    }
}

export default NewsItem;