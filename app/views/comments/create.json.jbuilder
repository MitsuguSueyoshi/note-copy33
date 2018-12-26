json.user_name @comment.user.name
json.body @comment.body
json.time @comment.created_at.strftime("%Y/%m/%d %H:%M")
json.id @comment.id
json.user_image @comment.user.main_image.url
