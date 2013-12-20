Bootstrap.Button = Ember.View.extend
  label: null
  tagName: "button"
  classNames: ["btn"]
  defaultTemplate: Ember.Handlebars.compile('{{view.label}}')

  # iconPosition: "left"
  # iconClassNames: [""]