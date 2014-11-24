# Coffeescript JSX transform for brunch

## coffee-react-brunch
Adds [React](http://facebook.github.io/react) support to [brunch](http://brunch.io)
by automatically compiling `*.cjsx` files.

### Optional

You can configure react-brunch to automatically insert a react header
(`# @cjsx React.DOM`) into all `*.cjsx` files. Disabled by default.

Example `config.coffee`:

```coffeescript
exports.config =
  plugins:
    react:
      autoIncludeCommentBlock: yes

  modules:
    nameCleaner: (path) ->
      path
        # Strip the .cjsx extension from module names
        .replace(/\.cjsx/, '')


  # Usual brunch config stuf...
  files:
    javascripts:
      joinTo: 'app.js'
    stylesheets:
      joinTo: 'app.css'
    templates:
      joinTo: 'app.js'
```

## Usage
Install the plugin via npm with `npm install --save coffee-react-brunch`.

Or, do manual install:

* Add `"coffee-react-brunch": "x.y.z"` to `package.json` of your brunch app.
  Pick a plugin version that corresponds to your minor (y) brunch version.
* If you want to use git version of plugin, add
`"coffee-react-brunch": "git+ssh://git@github.com:brunch/coffee-react-brunch.git"`.

## Credit

This is based on Paul Miller's [javascript-brunch](https://github.com/brunch/javascript-brunch)
project and Matt McCray's [react-brunch](https://github.com/darthapo/react-brunch) and adjusted to compile React (.cjsx) files.
