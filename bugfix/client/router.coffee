Router.waitOn(
  ->
    Meteor.subscribe('notes')
    Meteor.subscribe('says')
    Meteor.subscribe('journeys')
    Meteor.subscribe('products')
    Meteor.subscribe('profiles')
)
