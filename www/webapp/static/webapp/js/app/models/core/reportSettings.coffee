Vosae.ReportSettings = DS.Model.extend
  fontName: DS.attr("string", defaultValue: 'bariol')
  fontSize: DS.attr("number")
  fontColor: DS.attr("string")
  baseColor: DS.attr("string")
  paperSize: DS.attr("string")
  forceBw: DS.attr("boolean")
  language: DS.attr("string")

  defaultLanguage: (->
    Vosae.languages.findProperty('code', @get('language'))
  ).property('language')

  otherLanguages: (->
    defaultLang = @get('language')
    Vosae.languages.filter (language)->
      if language.get('code') != defaultLang
        return language
  ).property('language')
