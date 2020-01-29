require('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()



gryffindor = House.new(
  {
  'name' => 'Gryffindor',
  'url' => 'https://www.partyrama.co.uk/wp-content/uploads/2017/10/1st-gryffindor-emblem-wall-cut-out-harry-potter-wizarding-world-gallery-view-image.jpg'
  }
)

gryffindor.save()

ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'url' => 'https://www.partyrama.co.uk/wp-content/uploads/2017/10/ravenclaw-emblem-wall-cutout-harry-potter-wizarding-world-product-image.jpg'
  }
)

ravenclaw.save()

hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'url' => 'https://www.partyrama.co.uk/wp-content/uploads/2017/10/hufflepuff-emblem-wall-cutout-harry-potter-wizarding-world-product-image.jpg'
  })

hufflepuff.save()

slytherin = House.new({
  'name' => 'Slytherin',
  'url' => 'https://www.partyrama.co.uk/wp-content/uploads/2017/10/slytherin-emblem-wall-cutout-harry-potter-wizarding-world-product-image.jpg'
  }
)

slytherin.save()

harry = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 11,
  'house' => gryffindor.id
  });

harry.save()
hermione = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'age' => 10,
  'house' => gryffindor.id
  });

hermione.save()
draco = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 13,
  'house' => slytherin.id
  });

draco.save()



binding.pry
nil
