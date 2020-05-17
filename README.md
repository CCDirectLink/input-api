# input-api

[![go to the releases page](https://raw.githubusercontent.com/CCDirectLink/organization/master/assets/badges/releases@2x.png)](https://github.com/CCDirectLink/input-api/releases)

This mod allows other mods to add rebindable key bindings.

## Guide for modders

Adding your input actions is incredibly simple. Firstly, you have to define an option in `sc.OPTIONS_DEFINITION` (as you normally would) which will be written to the save file and show up in the "Controls" tab:

```javascript
// it is recommended to do this in either `postload` or `prestart`
sc.OPTIONS_DEFINITION['keys-jump'] = {
  type: 'CONTROLS',
  init: { key1: ig.KEY.CTRL, key2: undefined },
  cat: sc.OPTION_CATEGORY.CONTROLS,
};
```

And after that you have to add a localized label for your key binding:

```javascript
// there are other ways to do this, but here is the simplest
// you have to put this in `main`
ig.lang.labels.sc.gui.options.controls.keys.jump = 'Jump';
```

A good example of using this mod can be seen in the [Jetpack](https://github.com/CCDirectLink/CCJetpack) mod.
