'use strict';

var React = require('react-native');
var {
  Text,
  View
} = React;

var styles = React.StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: 40,
    backgroundColor: 'red'
  }
});

var SimpleModule = require('NativeModules').SimpleModule;

class SimpleApp extends React.Component {
  componentWillMount() {
    SimpleModule.sayHello();
  }

  render() {
    return (
      <View style={styles.container}>
        <Text>
          This is a simple application that
          demonstrates using React Native as a dynamic framework.
        </Text>
      </View>
    )
  }
}

React.AppRegistry.registerComponent('SimpleApp', () => SimpleApp);
