json.user_name @comment.user.nickname
json.body @comment.body
json.time @comment.created_at.strftime("%Y/%m/%d %H:%M")
json.user_image @comment.user.main_image.url
json.id @comment.id
json.note_id @comment.note_id
