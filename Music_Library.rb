music_library = [
  ["Adele",
    ["19",
      ["Day Dreamer", "Best for Last"]
    ],
    ["21",
      ["Rolling in the Deep", "Rumor Has It"]
    ]
  ],
  ["Beyonce",
    ["4",
      ["1 + 1", "Countdown"]
    ],
    ["Beyonce",
      ["Haunted", "Pretty Hurts"]
    ]
  ]
];

# Lets try iterating over our music_library array.

music_library.each do |artist_array|
  # Iterate through the parent array, returning each element sequentially
  # For the first pass: artist_array = music_library[0] = ["Adele", ["19", ["Day Dreamer", "Best for Last"]], ["21", ["Rolling in the Deep", "Rumor Has It"]]]
 
  artist_array.each do |artist_element|
    # Iterate through each element of the child (second-level) array returned by the above parent iteration
    # For the first pass: artist_element = artist_array[0] = music_library[0][0] = "Adele"
 
    if artist_element.class != Array
      puts "Artist: #{artist_element}"
    else
      artist_element.each do |album_element|
        # Iterate through each element of the grandchild (third-level) array
        # For the first pass (that makes it past the "if" clause and reaches this "else" clause):
        # album_element = artist_element[0] = artist_array[1][0] = music_library[0][1][0] = "19"
 
        if album_element.class != Array
          puts "Album: #{album_element}"
        else
          album_element.each do |song_element|
            # For the first pass (that makes it past the "if" clause and reaches this "else" clause):
            # song_element = album_element[0] = artist_element[1][0] = artist_array[1][1][0] = music_library[0][1][1][0] = "Day Dreamer"
 
            puts "Song: #{song_element}"
          end
        end
      end
    end
  end
end
