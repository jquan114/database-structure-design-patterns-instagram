table users{
id serial [pk, increment]
created_at timestamp
updated_at timestamp
username varchat(30)

}

table posts {
  id serial [pk, increment]
  created_at timestamp
  updated_at timestamp
  url varchar(200)
  user_id integer [ref: > users.id]
}

table comments{
  id serial [pk, increment]
  created_at timestamp
  updated_at timestamp
  contents varchar(240)
  user_id integer [ref: > users.id]
  post_id integer [ref: > posts.id]
}
