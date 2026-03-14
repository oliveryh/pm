# Introduction to Vue.js

[Vue Mastery - Vue.js](https://www.vuemastery.com/courses/intro-to-vue-js/vue-instance)

## Creating an App

In order to create a Vue app, we use the function `new Vue` to instantiate the app. We can plug into the instance in HMTL and add data to it.

```jsx
var app = new Vue({
	el: '#app',
	data: {
		product: 'Socks'
	}
})
```

```html
<div id="app">
	<h1>I love {{ product }}</h1>
</div>
```

**String Interpolation**
The ability to template data in the html using the `{{}}` syntax

The `data` and `methods` are proxied by the `this` keyword, so we can access that data or function without having to bind to it.

# Vue File Structure

- `<template></template>` Tags
- `<script></script>`
- `<style></style>` (Optional)

# Installation

## Getting Started

1. Install NodeJS
2. Globally install the Vue CLI
`sudo npm -g vue-cli`

## Vue CLI

The Vue CLI allows us to easily create a build process with various tools.

## Development Workflow

### Single File Templates

We'll be using a template in a single file, as opposed to using `template` tags.

### Case-insensitive Component Selectors

This allows us to remove the compiler from the bundle, reducing our bundle ~30% in size.

# Class and Style Bindings

[Vue - Class and Style Bindings](https://vuejs.org/v2/guide/class-and-style.html)

## Binding HTML Classes

```html
<div v-bind:class="classObject"></div>

data: {
  isActive: true,
  error: null
},
computed: {
  classObject: function () {
    return {
      active: this.isActive && !this.error,
      'text-danger': this.error && this.error.type === 'fatal'
    }
  }
}
```

## Array Syntax

`<div v-bind:class="[activeClass, errorClass]"></div>`

# Conditional Rendering

## `v-if`

We can use a template to group multiple tags that we want to have the same condition on

```html
<template v-if="show">
	<p>Item 1</p>
	<p>Item 2</p>
</template>
```

# Directives

[VueJS - Directives](https://vuejs.org/v2/api/#Directives)

Directives are instructions that you put in your code. In general, all directives are of the form `v-*`

## `v-for`

**Loop through an array with `v-for`**

`<ul><li v-for="ingredient in ingredients">{{ ingredient }}</li></ul>`

**Include the index in a `v-for` directive**

`<ul><li v-for="(ingredient, i) in ingredients">{{ ingredient }} {{ i }}</li></ul>`

## Loop through objects

## `v-bind`

**String Interpolation inside HTML Element**
It's not possible to do string interpolation inside HTML attributes, this is where **binds** come in.

We can use the term `v-bind` in to dynamically bind an attribute to an expression.

The shorthand for `v-bind:attribute="content"` is to just remove the `v-bind` so we just have `:attribute="content"`

We can see an example of this by how you might create a hyperlink using some data

`<p><a v-bind:href="link">My Link</a></p>`

## `v-on`

With `v-on` we can watch events that might occur on interactive elements. So for example, we might increment a counter using the following code.

```html
<button v-on:click="increase">Click me!</button>
<p>{{ counter }}</p>
```

```jsx
new Vue({
	...
	data: {
		counter: 0
	},
	methods: {
		increase: function() {
			this.counter++;
		}
	}
})
```

**Parsing Events**

We can parse the listener event and other attributes by using `$event` for example, we might do the following

`<button v-on:click="increase(2, $event)">Click me!</button>`

## `v-once`

This allows you to fix the content, rendering only once.

## Custom Directives

[VueJS - Custom Directives](https://vuejs.org/v2/guide/custom-directive.html)

We can use [Hooks](https://vuejs.org/v2/guide/custom-directive.html#Hook-Functions) to create our custom directives.

Here is a basic example of a custom directive that turns an element Orange.

```js
// main.js
Vue.directive("orange", function(el, binding, vnode) {
    el.style.color = "orange";
});

// my component
<p v-orange>This is Orange!</p>
```

We can break down the directive into the following

`v-<name>.<arg>.<modifier1>.<modifier2>="<value>"`

And we can accesss these in the custom directive like the following

- arg: `binding.arg`
- modifiers: `binding.modifiers` (returns a dictionary)
- value: `binding.value`

We can set `<value>` to be a dictionary if we want to input more information than a single value.

# Options / Data

## Computed

[Vue - Computed](https://vuejs.org/v2/api/#computed)

The computed property analyses which dependent attributes it needs to update, so is only called if necessary. Additionally, it's possible to refer to the functions in the `computed` object as an attribute.

## Watch

Should be used instead of computed for **asynchronous tasks**.

# Event Handling

## Event Modifiers

[Vue - Event Modifiers](https://vuejs.org/v2/guide/events.html#Event-Modifiers)

We can use event modifiers to alter events, such as stopping propagation of an event to the enclosing tags. For example, we can create a dead zone that

## Key Modifiers

[Vue - Key Modifiers](https://vuejs.org/v2/guide/events.html#Key-Modifiers)

When listening for keyboard events, we often need to check for specific keys. Vue allows adding key modifiers for `v-on` when listening for key events:

```html
<!-- only call `vm.submit()` when the `key` is `Enter` -->
<input v-on:keyup.enter="submit">
```

# Special Attributes

## `ref`

[https://vuejs.org/v2/api/#ref](https://vuejs.org/v2/api/#ref)

# VueJS Instance

Vue proxies and provides watchers for all the properties and functions we create in the Vue object. (data, methods, etc)

## Multiple Vue Instances on the Same Page

```html
<div id="vm1">
  <h1>{{ name }}</h1>
</div>

<div id="vm2">
  <button @click="showName">Show name</button>
</div>
```

```jsx
var vm1 = new Vue({
	el: '#vm1',
	data: {
		name: 'Vue Instance #1'
	}
});

var vm2 = new Vue({
	el: '#vm2',
	methods: {
		showName: function() {
			alert("The name of the other Vue instance is: ");
		}
	}
});

setTimeout(function() {
	vm1.name = 'Hello from the other side!';
}, 2000);
```

# Components

[VueJS - Components](https://vuejs.org/v2/guide/components.html)

In a component, the `data` should be a function.

```js
Vue.component('my-comp', {
	data: function() {
		someData: 'foo'
	}
})
```

## Local / Global Components

[VueSchool - Global vs Local Components](https://vueschool.io/lessons/global-vs-local-components?friend=vuejs)

Registering components locally can reduce the size of your bundle, but also ensure that the scope of the components is kept minimal. Here is an example of how to do this

```js
var cmp = {
	data = function() {
		return {
			foo: 'bar'
		}
	}
}

new Vue({
	el: '#app',
	components: {
		'fooComponent': cmp
	}
})
```

## Automatic Component Registering

[VueJS - Components Registration: Local Registration](https://vuejs.org/v2/guide/components-registration.html#Local-Registration)

In ES6, we can just put the component name when registering our components

```js
import ComponentA from './ComponentA.vue'

export default {
  components: {
    ComponentA
  },
  // ...
}
```

## Component Styling

If we add directly to the `<style></style>` tags, this will be applied globally. In order to apply styles to the component only, we need to add the `scoped` keyword to the `style` tags

```js
<style scoped>
    div {
        border: 1px solid red;
    }
</style>
```

## Content Distribution with Slots

In the child component where we want to recieve the data, we put the `<slot></slot>` tags inside the template. And then when we're referring to the child component in the parent component, we can put the content we want to appear instead of `<slot></slot>` inbetween the child component tags.

```js
// parent component
<template>
	<div>
		<p>Here is a child</p>
		<child-component>
			<h1>Title</h1>
			<p>Conent</p>
		</child-component>
	</div>
</template>
```

```js
// child component
<template>
	<div>
		<slot></slot>
	</div>
</template>
```

The styling for the child component is set up on the child component, whereas and string interpolation or vue directives are done on the parent component. Therefore we can do something like this in the parent

```js
// parent component
<template>
	<div>
		<p>Here is a child</p>
		<child-component>
			<h1>Title</h1>
			<p v-for="paragraph in 5">{{ paragraph }}</p>
		</child-component>
	</div>
</template>
```

## Named Slots

We can have multiple slots too!
[VueJS - Named Slots](https://vuejs.org/v2/guide/components-slots.html#Named-Slots)

## Dynamic Components

[VueJS - Dynamic Components](https://vuejs.org/v2/guide/components.html#Dynamic-Components)

### Keep Alive

Note that when dynamically changing the components, the component is destroyed by default. We can override this behaviour if we want.

[VueJS - keep-alive](https://vuejs.org/v2/api/#keep-alive)

```js
<keep-alive>
  <component :is="view"></component>
</keep-alive>
```

### Activated and Deactivated

We can use the `activated` and `deactivated` lifecycle hooks for when the component is loaded or unloaded when using the `<keep-alive>` tags.

# Communication

## Parent -> Child Communication

[VueJS - Passing Data to Child Components with Props](https://vuejs.org/v2/guide/components.html#Passing-Data-to-Child-Components-with-Props)

We use the `props` keyword to set properties from outside

## Prop Validation

[VueJS - Prop Validation](https://vuejs.org/v2/guide/components-props.html#Prop-Validation)

We can also do prop validation using the following syntax

```js
props: {
	myString: String
}
```

## Listening to Children Components with EventBus

[VueJS - Emitting a Value With an Event](https://vuejs.org/v2/guide/components.html#Emitting-a-Value-With-an-Event)

A standard way of communicating to siblings is to use a parent as proxy. While this works, it can be troublesome for large applications. An alternative is to use an EventBus, that is a PubSub type model.

[Alligator.io - Creating a Global Event Bus with Vue.js](https://alligator.io/vuejs/global-event-bus/)

# Forms

[VueJS - Forms](https://vuejs.org/v2/guide/forms.html)

## `v-model`

We can set up two-way binding to a form and the related data by using the `v-model` directive.

## Modifying User Input

**Note:** Everything in HTML forms are treated as a string by default. You can use the `.number` input modifier to use numbers.

- [Lazy Modifier](https://vuejs.org/v2/guide/forms.html#lazy) - Updates only when a new input is selected

## Custom Input

[VueJS - Using v-model on Components](https://vuejs.org/v2/guide/components.html#Using-v-model-on-Components)

`v-model` works in the background by exposing two things.

- A value bind to parse data to the component
- A change/input listener that returns the input data to the parent.

```js
<input
  v-bind:value="searchText"
  v-on:input="searchText = $event.target.value"
>
```

## Form Submission

We can use the `click.prevent` directive to stop the form from being sent to the server so we can handle the form with Vue instead.

# Animations

[VueJS - Transitions](https://vuejs.org/v2/api/#transition)

## Transitions

Single elements can be animated by wrapping them in `<transition></transition>` tags. We can name a particular transition by adding a `name` attribute to these tags.

Once this is done, Vue will add the following classes to the element.

- `<name>-enter` / `v-enter`
- `<name>-enter-active` / `v-enter-active`
- `<name>-leave` / `v-leave`
- `<name>-leave-active` / `v-leave-active`

![[vue-transitions.png.png]]

We can then set the following style to create a fade transition

```js
<style>
	.fade-enter {
		fade: 0;
	}

	.fade-enter-active {
		transition: opacity 1s;
	}

	.fade-leave-active {
		transition: opacity 1s;
		opacity: 0;
	}
</style>
```

## Transitions on Initial Render

[VueJS - Transitions on Initial Render](https://vuejs.org/v2/guide/transitions.html#Transitions-on-Initial-Render)

We can add transitions when an element appears on the DOM using the `appear` keyword.

## V-if Transitions

When animating a transition using `v-if`, we need to assign keys to each element, and we can also use [transition modes](https://vuejs.org/v2/guide/transitions.html#Transition-Modes) in order to alter the way in which elements are animated.

## Javascript Transition Hooks

**Note:** If you use only javascript transition hooks, you can instruct Vue to ignore css by setting `:css="false"` in the transition attribute.

[VueJS - Transitions: Javascript Hooks](https://vuejs.org/v2/guide/transitions.html#JavaScript-Hooks)

## Transition Groups

We can use this methodology for animating a group of elements.

```js
<ul>
	<li
		v-for="(number, index) in numbers"
		@click="removeItem(index)"
		style="cursor: pointer"
	>
	{{ number }}
	</li>
</ul>

// methods
addItem() {
	const pos = Math.floor(Path.random() = this.numbers.length);
	this.numbers.splice(pos, 0, this.numbers.length + 1);
},
removeItem(index) {
	this.numbers.splice(index, 1);
}
// styles
.slide-leave-action {
	animation: slide-out 1s ease-out forwards;
	transition: opacity 1s;
	opacity: 0;
	position: absolute;
}
.slide-move {
	transition: transform 1s;
}
```

# Front End

## Vuetify

[https://vuetifyjs.com/en/](https://vuetifyjs.com/en/)

# Debugging

[https://github.com/vuejs/vue-devtools](https://github.com/vuejs/vue-devtools)

# Configuring IDE

We can use the extension Viter on VSCode in order to get syntax highlighting in our vue files.

# Resources

[VueUse · GitHub](https://github.com/vueuse)
