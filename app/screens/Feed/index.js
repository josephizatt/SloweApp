import React from 'react';
import { Button, View, Text } from 'react-native';

class Feed extends React.Component {
    render() {
      return (
        <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
          <Text>Feed</Text>
          <Button
            title="Go to a News Item"
            onPress={() => this.props.navigation.navigate('NewsItem')}
          />
        </View>
      );
    }
}

export default Feed;