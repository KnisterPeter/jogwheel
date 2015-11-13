<%= props.partials.header('', '',
	[
		'About',
		'Install',
		'Usage',
		{
			name: 'Browser Support',
			href: '#browser-support'
		},
		{
			name: 'API Documentation',
			href: './documentation/api.md'
		},
		{
			name: 'Examples',
			href: './examples/readme.md'
		},
		{
			name: 'Contributing',
			href: './contributing.md'
		}
	]
) %>

<%= props.partials.badges(['ci']) %>
<%= props.partials.badges(['coverage', 'climate']) %>


<%= props.partials.badges(['npm', 'npm-dl']) %>


<%= props.partials.badges(['pr', 'issue']) %>


<%= props.partials.badges(['dependency-manager', 'release-manager', 'ecma', 'codestyle', 'license', 'commitizen']) %>

## About
${props.pkg.name} gives you the power to take full control over your CSS keyframe animations via JavaScript.

- [x] **separation of concerns**: Declare animations with CSS
- [x] **full control**: Play, pause and scrub your animations
- [x] **animation sequences**: No brittle fiddling with animationEnd
- [ ] world peace

## Install
[${props.pkg.name}](npm-url) is available on npm.
```
npm install --save ${props.pkg.name}
```

## Usage
${props.pkg.name} exposes its API as commonjs module.

```js
import JogWheel from '${props.pkg.name}';
const element = document.querySelector('[data-animated]');
const player = JogWheel.create(element);

// Jump halfway into the animation
player.seek(0.5);
```
---
See [API Documentation](./documentation/api.md) for details.


## Example
${props.pkg.name} shines brightest when used with CSS animations.

**JavaScript**

```js
import JogWheel from '${props.pkg.name}';
const element = document.querySelector('[data-animated]');
const player = JogWheel.create(element);

// Jump halfway into the animation
player.seek(0.5);
```

**CSS**

```css
@keframes bounce {
	0% {
		transform: none;
	}

	25% {
		transform: translateY(-100%);
	}

	50% {
		transform: none;
	}

	75% {
		transform: translateY(100%);
	}

	100% {
		transform: none;
	}
}

[data-animated] {
	animation: bounce 1s;
	/* animation-fill-mode and animation-play-state are recommended */
	animation-fill-mode: both;
	animation-play-state: paused;
	height: 100px;
	width: 100px;
	background: #333;
	border-radius: 50%;
}

```

**HTML**

```html
<div data-animated>
</div>
```
---
See [Examples](./examples/readme.md) for more use cases.


## Browser support
${props.pkg.name} performs cross browser testing with SauceLabs

[![Browser Support](https://saucelabs.com/browser-matrix/jogwheel-unit.svg)](https://saucelabs.com/u/jogwheel-unit)

## Development
You dig ${props.pkg.name} and want to submit a pull request? Awesome!
Be sure to read the [contribution guide](./contributing.md) and you should be good to go.
Here are some notes to get you coding real quick.

Fetch, install and start the default watch task
```
git clone ${props.pkg.repository.url}
cd ${props.pkg.name}
npm install
npm start
```
This will watch all files in `source` and start the appropriate tasks when changes are detected.

## Roadmap
${props.pkg.name} is up to a lot of good. This includes but is not limited to
- [x] super-awesome cross-browser tests
- [ ] unit-tested documentation code examples, because rust isn't the only language that can do cool dev convenience stuff
- [ ] an interactive playground and animation editor
- [ ] a plug-an-play react integration component

---
See [Roadmap](./documentation/roadmap.md) for details.


<%= props.partials.footer() %>