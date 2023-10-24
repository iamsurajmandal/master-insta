CREATE TABLE posts (
    id integer PRIMARY KEY AUTO_INCREMENT,
    likes integer,
    username VARCHAR(255) NOT NULL,
    urlImage VARCHAR(255) NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT NOW()
  );
  
  INSERT INTO posts (likes, username, urlImage)
  VALUES 
  (555,'suraj' ,'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
  (243,'manish' ,'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80'),
  (122,'chandra' ,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'),
  (155,'buntty' ,'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
  (743,'rakesh' ,'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80'),
  (162,'chandra' ,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'),
  (255,'kabir' ,'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
  (23,'rohan' ,'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80'),
  (12,'chandra' ,'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png')
  ;