# Загрузка seed-даних для моделі User
user1 = User.create(firstName: 'John', lastName: 'Doe', fatherName: 'David', NickName: 'johndoe', birthday: Date.new(1990, 5, 15), email:'oleksaole12@gmail.com', password:'123456789')
user2 = User.create(firstName: 'Jane', lastName: 'Smith', fatherName: 'Michael', NickName: 'janesmith', birthday: Date.new(1995, 8, 22), email:'oleksaole11@gmail.com', password:'12345678')

# Загрузка seed-даних для моделі Category
category1 = Category.create(categoryName: 'Technology')
category2 = Category.create(categoryName: 'Sports')

# Загрузка seed-даних для моделі Post
post1 = Post.create(title: 'First Post', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', postTime: DateTime.now, imagePost: 'image1.jpg', user: user1)
post2 = Post.create(title: 'Second Post', text: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem.', postTime: DateTime.now, imagePost: 'image2.jpg', user: user2)

# Загрузка seed-даних для моделі Like
like1 = Like.create(likeTime: DateTime.now, post: post1)
like2 = Like.create(likeTime: DateTime.now, post: post2)

# Загрузка seed-даних для моделі Comment
comment1 = Comment.create(commentText: 'Great post!', commentTime: DateTime.now, post: post1)
comment2 = Comment.create(commentText: 'Nice article!', commentTime: DateTime.now, post: post2)

# Встановлення зв'язків "багато до багатьох" між моделями Post і Category
post1.categories << category1
post2.categories << category2
