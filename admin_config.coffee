AdminConfig =
  name: '潜水吧管理后台'
  adminEmails: ['root@divebar.com']
  nonAdminRedirectRoute: 'entrySignIn'
  collections :
    Notes: {
      color: 'red'
      tableColumns: [
        {label: '标题', name: 'title'}
        {label: '日期', name: 'date'}
        {label: '用户', name: 'user', collection: 'Users'}
      ]
    }
    Says: {
      color: 'purple'
      tableColumns: [
        {label: '标题', name: 'title'}
        {label: '日期', name: 'date'}
        {label: '用户', name: 'user', collection: 'Users'}
      ]
    }
    Journeys: {
      color: 'green'
      tableColumns: [
        {label: '标题', name: 'title'}
        {label: '日期', name: 'date'}
        {label: '用户', name: 'user', collection: 'Users'}
      ]
    }
    Products: {
      color: 'yellow'
      tableColumns: [
        {label: '标题', name: 'title'}
        {label: '日期', name: 'date'}
        {label: '用户', name: 'user', collection: 'Users'}
      ]
    }
    Profiles: {
      color: 'blue'
      tableColumns: [
        {label: 'ID', name: '_id'}
        {label: '昵称', name: 'nickname'}
        {label: '用户', name: 'user', collection: 'Users'}
      ]
    }
#    Comments: {
#      color: 'green'
#      icon: 'comments'
#      auxCollections: ['Posts']
#      tableColumns: [
#        {label: '内容', name: 'content'}
#        {label: '文章', name: 'doc', collection: 'Posts', collection_property: 'title'}
#        {label: '用户', name: 'owner', collection: 'Users'}
#      ]
#    }
  dashboard:
    homeUrl: '/'
  autoForm:
    omitFields: ['createdAt', 'updatedAt', 'category']

if Meteor.isClient
  window.AdminConfig = AdminConfig
else if Meteor.isServer
  global.AdminConfig = AdminConfig