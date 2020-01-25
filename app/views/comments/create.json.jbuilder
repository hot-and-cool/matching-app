# json.text @comment.text
# json.rate @comment.rate をまとめる↓
json.(@comment, :text, :rate)

json.date @comment.created_at.strftime('%Y/%m/%d %H:%M')
json.user_name @comment.from_user.name
json.user_img_name @comment.from_user.img_name
