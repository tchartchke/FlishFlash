u1 = User.create(:username => "char", :password => "test")
u2 = User.create(:username => "g", :password => "asdf")
u3 = User.create(:username => "luha", :password => "qwerty")

col1 = Collection.create(name: "kanji", description: "jlpt 1", user_id: u1.id)
col2 = Collection.create(name: "vocab", description: "chinese 1", user_id: u2.id)
col3 = Collection.create(name: "medicine", description: "medicine stuff to learn", user_id: u3.id)


Card.create(front: "hito", back: "person", info: "hi-to", collection_id: col1.id)
Card.create(front: "sei", back: "life", info: "u-ru", collection_id: col1.id)

Card.create(front: "ni", back: "you", info: "3", collection_id: col2.id)
Card.create(front: "ta", back: "him/her", info: "1", collection_id: col2.id)

Card.create(front: "ibuprofen", back: "pain reliever", info: "not to be used with acetemetiphen", collection_id: col3.id)
Card.create(front: "bacitracin", back: "open wounds", info: "kinda like neosporin", collection_id: col3.id)
