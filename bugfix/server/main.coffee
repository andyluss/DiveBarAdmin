Meteor.publish 'notes', ->
  Notes.find()

Meteor.publish 'says', ->
  Says.find()

Meteor.publish 'journeys', ->
  Journeys.find()

Meteor.publish 'products', ->
  Products.find()

Meteor.publish 'profiles', ->
  Profiles.find()

