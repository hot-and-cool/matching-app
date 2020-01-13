class Height < ActiveHash::Base
  self.data = [
      {id: 1, name: '150cm未満'}, {id: 2, name: '150cm以上〜155cm未満'}, {id: 3, name: '155cm以上〜160cm未満'},
      {id: 4, name: '160cm以上〜165cm未満'}, {id: 5, name: '165cm以上〜170cm未満'}, {id: 6, name: '170cm以上〜175cm未満'}, 
      {id: 7, name: '175cm以上〜180cm未満'},{id: 8, name: '180cm以上'}
  ]
end