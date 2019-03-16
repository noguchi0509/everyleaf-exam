# タスク管理アプリ


## テーブルイメージ

### User
```
create_table "user"
    string   "name"
    integer  "id"
    string   "email"
    datetime "created_at", null: false
    datetime "updated_at", null: false
end
```

### Task
```
create_table "tasks"
    string   "title"
    text    "content"
    string  "label"
    string  "priority"
    string  "status"
    datetime "deadline_date"
    integer  "user_id",    null: false
    datetime "created_at", null: false
    datetime "updated_at", null: false
    index ["user_id"]
end
```

2019/02
