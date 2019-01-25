import { createStackNavigator, createAppContainer } from 'react-navigation';

import Feed from '../screens/Feed/index';
import NewsItem from '../components/NewsItem/index';

const RootStack = createStackNavigator(
    {
      Feed: Feed,
      NewsItem: NewsItem,
    },
    {
      initialRouteName: 'Feed',
    }
  );

const AppContainer = createAppContainer(RootStack);

export default AppContainer;