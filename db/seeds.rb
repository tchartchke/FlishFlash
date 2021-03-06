s1 = Subject.create({name: "art", display_name: "Art"})
s2 = Subject.create({name: "language", display_name: "Language"})
s3 = Subject.create({name: "literature", display_name: "Literature"})
s4 = Subject.create({name: "math", display_name: "Math"})
s5 = Subject.create({name: "science", display_name: "Science"})
s6 = Subject.create({name: "social_studies", display_name: "Social Studies"})
s7 = Subject.create({name: "other", display_name: "Other"})

u1 = User.create({username: "char", password: "test"})

col1 = Collection.create({name: "ひらがな", description: "ABC's of Japanese!", user_id: u1.id, subject_id: s2.id})
Card.create({front: "あ", back: "a", info: "", collection_id: col1.id})
Card.create({front: "い", back: "i", info: "", collection_id: col1.id})
Card.create({front: "う", back: "u", info: "", collection_id: col1.id})
Card.create({front: "え", back: "e", info: "", collection_id: col1.id})
Card.create({front: "お", back: "o", info: "", collection_id: col1.id})
Card.create({front: "か", back: "ka", info: "", collection_id: col1.id})
Card.create({front: "き", back: "ki", info: "", collection_id: col1.id})
Card.create({front: "く", back: "ku", info: "", collection_id: col1.id})
Card.create({front: "け", back: "ke", info: "", collection_id: col1.id})
Card.create({front: "こ", back: "ko", info: "", collection_id: col1.id})
Card.create({front: "さ", back: "sa", info: "", collection_id: col1.id})
Card.create({front: "し", back: "shi", info: "", collection_id: col1.id})
Card.create({front: "す", back: "su", info: "", collection_id: col1.id})
Card.create({front: "せ", back: "se", info: "", collection_id: col1.id})
Card.create({front: "そ", back: "so", info: "", collection_id: col1.id})
Card.create({front: "た", back: "ta", info: "", collection_id: col1.id})
Card.create({front: "ち", back: "chi", info: "", collection_id: col1.id})
Card.create({front: "つ", back: "tsu", info: "", collection_id: col1.id})
Card.create({front: "て", back: "te", info: "", collection_id: col1.id})
Card.create({front: "と", back: "to", info: "", collection_id: col1.id})
Card.create({front: "な", back: "na", info: "", collection_id: col1.id})
Card.create({front: "に", back: "ni", info: "", collection_id: col1.id})
Card.create({front: "ぬ", back: "nu", info: "", collection_id: col1.id})
Card.create({front: "ね", back: "ne", info: "", collection_id: col1.id})
Card.create({front: "の", back: "no", info: "", collection_id: col1.id})
Card.create({front: "は", back: "ha", info: "", collection_id: col1.id})
Card.create({front: "ひ", back: "hi", info: "", collection_id: col1.id})
Card.create({front: "ふ", back: "fu", info: "", collection_id: col1.id})
Card.create({front: "へ", back: "he", info: "", collection_id: col1.id})
Card.create({front: "ほ", back: "ho", info: "", collection_id: col1.id})
Card.create({front: "ま", back: "ma", info: "", collection_id: col1.id})
Card.create({front: "み", back: "mi", info: "", collection_id: col1.id})
Card.create({front: "む", back: "mu", info: "", collection_id: col1.id})
Card.create({front: "め", back: "me", info: "", collection_id: col1.id})
Card.create({front: "も", back: "mo", info: "", collection_id: col1.id})
Card.create({front: "や", back: "ya", info: "", collection_id: col1.id})
Card.create({front: "ゆ", back: "yu", info: "", collection_id: col1.id})
Card.create({front: "よ", back: "yo", info: "", collection_id: col1.id})
Card.create({front: "ら", back: "ra", info: "", collection_id: col1.id})
Card.create({front: "り", back: "ri", info: "", collection_id: col1.id})
Card.create({front: "る", back: "ru", info: "", collection_id: col1.id})
Card.create({front: "れ", back: "re", info: "", collection_id: col1.id})
Card.create({front: "ろ", back: "ro", info: "", collection_id: col1.id})
Card.create({front: "わ", back: "wa", info: "", collection_id: col1.id})
Card.create({front: "を", back: "wo", info: "", collection_id: col1.id})
Card.create({front: "ん", back: "n", info: "", collection_id: col1.id})

col2 = Collection.create({name: "Days", description: "Japanese Names for Days of the Week", user_id: u1.id, subject_id: s2.id})
Card.create({front: "日曜日", back: "Sunday", info: "にちようび", collection_id: col2.id})
Card.create({front: "月曜日", back: "Monday", info: "げつようび", collection_id: col2.id})
Card.create({front: "火曜日", back: "Tuesday", info: "かようび", collection_id: col2.id})
Card.create({front: "水曜日", back: "Wednesday", info: "すいようび", collection_id: col2.id})
Card.create({front: "木曜日", back: "Thursday", info: "もくようび", collection_id: col2.id})
Card.create({front: "金曜日", back: "Friday", info: "きんようび", collection_id: col2.id})
Card.create({front: "土曜日", back: "Saturday", info: "どようび", collection_id: col2.id})

col3 = Collection.create({name: "Movies", description: "Movie Titles and directors", user_id: u1.id, subject_id: s1.id})
Card.create({front: "Parasite", back: "Bong Joon Ho", info: "", collection_id: col3.id})
Card.create({front: "Vertigo", back: "Alfred Hitchcock", info: "", collection_id: col3.id})
Card.create({front: "Seven Samurai", back: "Akira Kurosawa", info: "", collection_id: col3.id})
Card.create({front: "Schindler’s List", back: "Steven Spielberg", info: "", collection_id: col3.id})
Card.create({front: "Alice Doesn't Live Here Anymore", back: "Martin Scorsese", info: "", collection_id: col3.id})
Card.create({front: "Pulp Fiction", back: "Quentin Tarantino", info: "", collection_id: col3.id})
Card.create({front: "Strike", back: "Sergei Eisenstein", info: "", collection_id: col3.id})
Card.create({front: "The Great Dictator", back: "Charlie Chaplin", info: "", collection_id: col3.id})
Card.create({front: "La Dolce Vita", back: "Federico Fellini", info: "", collection_id: col3.id})

col4 = Collection.create({name: "Capitals", description: "Country Capitals", user_id: u1.id, subject_id: s6.id})
Card.create({front: "Ethiopia", back: "Addis Ababa", info: "", collection_id: col4.id})
Card.create({front: "Samoa", back: "Apia", info: "", collection_id: col4.id})
Card.create({front: "Brunei", back: "Bandar Seri Begawan", info: "", collection_id: col4.id})
Card.create({front: "Guinea-Bissau", back: "Bissau", info: "", collection_id: col4.id})
Card.create({front: "Argentina", back: "Buenos Aires", info: "", collection_id: col4.id})
Card.create({front: "Guinea", back: "Conakry", info: "", collection_id: col4.id})
Card.create({front: "Sierra Leone", back: "Freetown", info: "", collection_id: col4.id})
Card.create({front: "Botswana", back: "Gaborone", info: "", collection_id: col4.id})
Card.create({front: "Bermuda", back: "Hamilton", info: "", collection_id: col4.id})
Card.create({front: "Mongolia", back: "Ulaanbaatar", info: "", collection_id: col4.id})
Card.create({front: "Bhutan", back: "Thimphu", info: "", collection_id: col4.id})
Card.create({front: "Laos", back: "Vientiane", info: "", collection_id: col4.id})


u2 = User.create({username: "g", password: "asdf"})

col5 = Collection.create({name: "Sewing", description: "Terminology and techniques", user_id: u2.id, subject_id: s7.id})
Card.create({front: "Applique", back: "the process of applying one kind of fabric on top of another layer of fabric.", info: "This comes from the French word “appliquer,” which means to apply or put on", collection_id: col5.id})
Card.create({front: "Armscye", back: "The opening in a bodice to which the sleeve is attached; also known as an armhole.", info: "", collection_id: col5.id})
Card.create({front: "Baste", back: "Temporary long running stitches, made by either hand or machine, that holds the fabric together before permanent stitches are applied. ", info: "", collection_id: col5.id})
Card.create({front: "Bumblebunching", back: "That annoying tangled loop of stitching on the bobbin side of the fabric, that is a result of improper tension applied to the sewing machine", info: "", collection_id: col5.id})
Card.create({front: "Cord", back: "A twisted fiber, somewhere between rope and string", info: "", collection_id: col5.id})
Card.create({front: "Dart", back: "A common technique used for shaping garments. They normally appear around the waist and bust", info: "", collection_id: col5.id})
Card.create({front: "Edge stitch", back: "Straight stitching very close to the edge of a seam, trim or outer edge", info: "", collection_id: col5.id})
Card.create({front: "Feather stitch", back: "Hand stitch used to smoothly join 2 layers of fabric. Can also be a form of decorative hand stitch", info: "", collection_id: col5.id})
Card.create({front: "Grain", back: "Describes the direction of the warp and the weft in a woven fabric", info: "", collection_id: col5.id})
Card.create({front: "Interfacing", back: "A term for a textile used on the unseen (wrong) side of fabrics. They support and stabilize the fashion fabric of the garment", info: "", collection_id: col5.id})
Card.create({front: "Lapped seams", back: "Seams lapped one over the other – wrong side to right right – with seamlines meeting in the middle", info: "", collection_id: col5.id})
Card.create({front: "Overlay", back: "This refers to the top layer of fabric, when there is a different one underneath", info: "", collection_id: col5.id})
Card.create({front: "Pintuck", back: "A narrow, stitched fold of fabric. This style is usually seen in multiples and creates a stylish and smart finish", info: "", collection_id: col5.id})
Card.create({front: "Raw edge", back: "The edge of the piece of fabric after it is cut but before it is hemmed. If left raw, the fabric might fray", info: "", collection_id: col5.id})
Card.create({front: "Seam allowance", back: "This is the width of the fabric beyond the seam line. The standard seam allowance is normally 1.5cm", info: "", collection_id: col5.id})
Card.create({front: "Staystitch", back: "Stitching placed on or just outside the seamline. It is used to stablize the fabric and prevent it from stretching out of shape", info: "", collection_id: col5.id})
Card.create({front: "Wadding", back: "A fibrous material used for filling items such as quilts. It can also be known as batting or filler", info: "", collection_id: col5.id})

col6 = Collection.create({name: "Classic Books", description: "Classic Books and their Authors", user_id: u2.id, subject_id: s3.id})
Card.create({front: "Pride and Prejudice", back: "Jane Austen", info: "", collection_id: col6.id})
Card.create({front: "To Kill a Mockingbird", back: "Harper Lee", info: "", collection_id: col6.id})
Card.create({front: "Jane Eyre", back: "Charlotte Brontë", info: "", collection_id: col6.id})
Card.create({front: "Little Women", back: "Louisa May Alcott", info: "", collection_id: col6.id})
Card.create({front: "Rebecca", back: "Daphne du Maurier", info: "", collection_id: col6.id})
Card.create({front: "Wuthering Heights", back: "Emily Brontë", info: "", collection_id: col6.id})
Card.create({front: "Emma", back: "Jane Austen", info: "", collection_id: col6.id})
Card.create({front: "Of Mice and Men", back: "John Steinbeck", info: "", collection_id: col6.id})
Card.create({front: "Dracula", back: "Bram Stoker", info: "", collection_id: col6.id})

col7 = Collection.create({name: "Literary Devices", description: "Literary devices for writing", user_id: u2.id, subject_id: s3.id})
Card.create({front: "Imagery", back: "The use of visually descriptive or figurative language in writing", info: "", collection_id: col7.id})
Card.create({front: "Personification", back: "When you give human characteristics to non-human objects or elements", info: "", collection_id: col7.id})
Card.create({front: "Point of view", back: "How your story is told and through whose perspective is what your point of view is. This could be first person, second person, third person, or more", info: "", collection_id: col7.id})
Card.create({front: "Protagonist", back: "This is the “good guy” in your story or the person your readers will root for. Oftentimes, this is the main character", info: "", collection_id: col7.id})
Card.create({front: "Antagonist", back: "Also known as the “bad guy,” or the person trying to prevent your protagonist from succeeding. This person or group or organization will likely be the reason for your protagonist’s hardships in your book", info: "", collection_id: col7.id})
Card.create({front: "Foreshadowing", back: "the placement of clues about what will happen in the future of your story", info: "", collection_id: col7.id})
Card.create({front: "Conflict", back: "the difficulties your protagonist or you face in your book", info: "", collection_id: col7.id})
Card.create({front: "Rising Action", back: "the events that directly lead up to the climax of your novel", info: "", collection_id: col7.id})
Card.create({front: "Falling Action", back: "When writing a novel, this is often the last chapter or two after the climax to “tie up” loose ends in your story", info: "", collection_id: col7.id})
Card.create({front: "Climax", back: "The biggest, most pivotal point in your novel. This is when your protagonist faced their challenges head-on and either “wins” or “loses.” ", info: "", collection_id: col7.id})
Card.create({front: "Voice", back: "A writer’s voice is the unique narrative of the writing. This is the way in which the author chooses to display sentences and even down to the phrasing they use.", info: "", collection_id: col7.id})
Card.create({front: "Style", back: "the unique way the author writes but also encompasses the entirety of the novel and story as well", info: "", collection_id: col7.id})

col8 = Collection.create({name: "Astronomy Terms", description: "Terms and Definitions", user_id: u2.id, subject_id: s5.id})
Card.create({front: "Absolute Magnitude", back: " scale for measuring the actual brightness of a celestial object without accounting for the distance of the object. ", info: "", collection_id: col8.id})
Card.create({front: "Ablation", back: "A process by where the atmosphere melts away and removes the surface material of an incoming meteorite.", info: "", collection_id: col8.id})
Card.create({front: "Albedo Feature", back: "A dark or light marking on the surface of an object that may or may not be a geological or topographical feature", info: "", collection_id: col8.id})
Card.create({front: "Apparent Magnitude", back: "The apparent brightness of an object in the sky as it appears to an observer on Earth", info: "", collection_id: col8.id})
Card.create({front: "Blueshift", back: "A shift in the lines of an object's spectrum toward the blue end.", info: "", collection_id: col8.id})
Card.create({front: "Celestial Sphere", back: "An imaginary sphere around the Earth on which the stars and planets appear to be positioned", info: "", collection_id: col8.id})
Card.create({front: "Circumstellar Disk", back: "A torus or ring-shaped accumulation of gas, dust, or other debris in orbit around a star in different phases of its life cycle", info: "", collection_id: col8.id})
Card.create({front: "Double Star", back: "A grouping of two stars", info: "", collection_id: col8.id})
Card.create({front: "Hypergalaxy", back: "A system consisting of a spiral galaxy surrounded by several dwarf white galaxies, often ellipticals.", info: "eg: Andromeda and our galaxy", collection_id: col8.id})
Card.create({front: "Kirkwood Gaps", back: "Regions in the main belt of asteroids where few or no asteroids are found", info: "", collection_id: col8.id})

col9 = Collection.create({name: "Geometry", description: "geometry terms and definitions", user_id: u2.id, subject_id: s4.id})
Card.create({front: "Point", back: "A location in space - a dot on a piece of paper", info: "", collection_id: col9.id})
Card.create({front: "Line", back: "Connects two points via the shortest path and continues indefinitely (forever) in both directions", info: "", collection_id: col9.id})
Card.create({front: "Line Segment", back: "Part of a line between two points", info: "", collection_id: col9.id})
Card.create({front: "Perpendicular Line Segment", back: "Line Segments that intersect (cross) at an angle of 90°", info: "", collection_id: col9.id})
Card.create({front: "Parallel Line Segments", back: "Line segments that never intersect (they are always the same distance apart)", info: "", collection_id: col9.id})
Card.create({front: "Right Angle", back: "An angle that measures 90°", info: "", collection_id: col9.id})
Card.create({front: "Acute Angle", back: "An angle that measures less than 90°", info: "", collection_id: col9.id})
Card.create({front: "Obtuse Angle", back: "An angle that measures more than 90°", info: "", collection_id: col9.id})
Card.create({front: "Vertex", back: "Point at which two line segments intersect", info: "", collection_id: col9.id})
Card.create({front: "Scalene Triangle", back: "A triangle with all three sides with different lengths", info: "", collection_id: col9.id})
Card.create({front: "Isosceles Triangle", back: "A triangle with two equal length sides (and two equal internal angles)", info: "", collection_id: col9.id})
Card.create({front: "Equilateral Triangle", back: "A triangle with all three sides of equal length (each internal angles = 60°)", info: "", collection_id: col9.id})
Card.create({front: "Radius", back: "Distance (line segment) from center of a circle to any point on that circle's circumference.", info: "", collection_id: col9.id})
Card.create({front: "Diameter", back: "A line segment (or length) joining two points on a circles circumference and passes through the circle's center (twice the length of the radius)", info: "", collection_id: col9.id})
Card.create({front: "Circumference", back: "Distance around a circle (the perimeter)", info: "", collection_id: col9.id})
Card.create({front: "Chord", back: "A line segment joining two points on a curve", info: "", collection_id: col9.id})
Card.create({front: "Arc", back: "Part of a curve", info: "", collection_id: col9.id})