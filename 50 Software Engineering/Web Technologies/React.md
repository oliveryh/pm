# Resources

## Links

[React - State and Lifecycle](https://reactjs.org/docs/state-and-lifecycle.html)
[React Placeholder](https://github.com/buildo/react-placeholder)
[React Project Structure](https://medium.com/hackernoon/the-100-correct-way-to-structure-a-react-app-or-why-theres-no-such-thing-3ede534ef1ed)
[Zero to React](https://github.com/kay-is/react-from-zero)
[Jira Clone using React](https://github.com/oldboyxx/jira_clone)

# Libraries

## Plotting

[Victory Charts](https://github.com/FormidableLabs/victory-chart)

## UI

[Material UI](https://material-ui.com/)

# Notes

## Components

### State

### Two Components Communicating

[StackOverflow - Two Components Communicating](https://stackoverflow.com/questions/21285923/reactjs-two-components-communicating)

### Components That Don't Own Datum

[Source](http://brewhouse.io/blog/2015/03/24/best-practices-for-component-state-in-reactjs.html)[Why You Shouldn't Set State as Props](http://johnnyji.me/react/2015/06/26/why-setting-props-as-state-in-react-is-blasphemy.html)

The state attribute of a component **should not depend on the props that are passed in**. If we decide to update the state depending on the props, then we can see from the following example that we get code smell.

```jsx
var React = require('react/addons');

class UserWidget extends React.Component {
  // ...

  // BAD: set this.state.fullName with values received through props
  constructor (props) {
    this.state = {
      fullName: `${props.firstName} ${props.lastName}`
    };
  }

  render () {
    var fullName = this.state.fullName;
    var picture = this.props.picture;

    return (
      <div>
        <img src={picture} />
        <h2>{fullName}</h2>
      </div>
    );
  }
}
```

- You can see that if the values of `firstName` or `lastName` are changed, it will not update the view of the `UserWidget`
- The `constructor`function only runs once when the component is mounted
- Since the component doesn't own `firstName` or `lastName` (they weren't created internally in the component), the state should not depend on it.

The solution, is to **calculate `fullName` as part of the `render` function**.

## Render

### Make Calculations in the Render Function

Wherever possible, it's advised to **make decisions and do calculations at the last possible moment, in the `render` function**.

However having said this, using helper functions and memoization should be used to reduce the load in the render function and abstract large calculations out.

```jsx
// GOOD: Helper function to render fullName
renderFullName () {
  return `${this.props.firstName} ${this.props.lastName}`;
}

render () {
  var fullName = this.renderFullName();
  // ...
}
```

**[LoDash](https://lodash.com/)** facilitates a memoization function.