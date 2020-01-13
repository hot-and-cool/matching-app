class Body < ActiveHash::Base
  self.data = [
      {id: 1, name: 'ガリガリ'}, {id: 2, name: 'モデル体型'}, {id: 3, name: '普通'},
      {id: 4, name: 'グラマー'}, {id: 5, name: 'マッチョ'}, {id: 6, name: 'ぽっちゃり'}, {id: 7, name: 'デブ'}
  ]
end