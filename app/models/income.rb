class Income < ActiveHash::Base
  self.data = [
      {id: 1, name: '200万円未満'}, {id: 2, name: '200万円以上〜400万円未満'}, {id: 3, name: '400万円以上〜600万円未満'},
      {id: 4, name: '600万円以上〜800万円未満'}, {id: 5, name: '800万円以上〜1000万円未満'}, {id: 6, name: '1000万円以上〜1500万円未満'}, 
      {id: 7, name: '1500万円以上〜2000万円未満'},{id: 8, name: '2000万円以上'}
  ]
end