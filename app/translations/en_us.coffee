module.exports =
  navigation:
    home: 'Home'
    about: 'About'
    classify: 'Classify'
    profile: 'Profile'
    discuss: 'Discuss'
    blog: 'Blog'
    education: 'Education'

  home:
    heading: 'Chicago Wildlife Watch'
    rightBannerHeader: "What is Chicago Wildlife Watch?"
    leftBannerHeader: "
      <h2>Welcome to</h2>
      <h1>Chicago <br/> Wildlife Watch</h1>
    "
    content: '''
      Chicago Wildlife Watch is a collaboration between the Lincoln Park Zoo and the Adler Planetarium, born of the desire to get everyone involved in the scientific process. The project aims to achieve a greater understanding of how our urban development affects local biodiversity. Anyone can participate and help us learn about this great city we live in!
    '''
    action: 'Get Started'
    currentStatus: '<span class="classification-count">0</span> classifications by <span class="user-count">0</span> volunteers'
    preFooterText: "Chicago Wildlife Watch is a collaboration between Lincoln Park Zoo, the Adler Planetarium, and the Zooniverse. Maybe another line about Chicago to pad this out."

    stats:
      header: "CHICAGO WILDLIFE WATCH Classification Statistics"
      activeUsers: "Active Users"
      crittersIdentified: "Critters Identified"
      totalImages: "Images Total"
      complete: "Complete"

  filterPage:
    header: "Choose Your Data"
    name: "Education Mode"
    filtered: "Curated"
    unfiltered: "Uncurated"
    question: "Would you like to view Curated or Uncurated data?"
    notification: "These images have been taken by cameras in public spaces"
    description: """
      If you are using the Chicago Urban Wildlife Watch for educational purposes or with young children, you might want to use our 'Curated' dataset option.  The images in this data set are much more likely to contain an animal, but still require additional classifications to confirm the animal type. For a younger audience, or for a situation where classification time is limited, this may provide a more engaging experience.
    """

  siteIntro:
    s1:
      title: "Welcome to Snapshot Chicago"
      content: "Welcome to Chicago Wildlife Watch! In this project, we are asking you to identify animals found in camera trap photos from around the city. Your help allows us to continue our research into urban biodiversity, making the city a better home for both humans and animals."
    s2:
      title: "Identifying animals"
      content: "Welcome to Chicago Wildlife Watch! In this project, we are asking you to identify animals found in camera trap photos from around the city. Your help allows us to continue our research into urban biodiversity, making the city a better home for both humans and animals."
    s3:
      title: "Filtering by characteristics"
      content: "You are presented with a photo on the left and a list of potential animals on the right. When you spot an animal within a photo, simply click the corresponding animal on the right. You will be asked to supply some followup info, such as number of animals found in the image."
    s4:
      title: "Made a mistake?"
      content: "If you need to delete any of your existing marks while viewing an image, simply find your animal in the list below the image and click the 'X' icon"
    s5:
      title: "That's it!"
      content: "If you need to delete any of your existing marks while viewing an image, simply find your animal in the list below the image and click the 'X' icon"


  classify:
    deleteAnnotation: 'Delete'
    notSignedIn: 'You\'re not signed in!'
    favorite: 'Favorite'
    unfavorite: 'Unfavorite'
    nothingLabel: 'Nothing here'
    nextSubjectButton: 'Finish'
    share: 'Share'
    tweet: 'Tweet'
    pin: 'Pin it'
    discuss: 'Discuss'
    next: 'Next capture'
    search: 'Search'

    nothingToShow: 'There\'s nothing to show with these filters.'
    clearFilters: 'Clear filters'

    oftenConfused: 'Often confused with:'

    count: 'How many'

    behavior: 'Behavior'
    behaviors:
      headUp: 'Head Up'
      headDown: 'Head Down'
      neither: 'Neither'
      notVisible: 'Not Visble'
      notApplicable: 'N/A'


    babies: 'Young present'
    rain: 'Raining'

    cancel: 'Cancel'
    identify: 'Identify'

    tutorial:
      small: "Site Intro"
      button: "Tutorial"
      continueButton: 'Continue'

      welcomeHeader: 'Welcome to Chicago Wildlife Watch!'
      welcome: '''
        This short tutorial will walk you through your first classification. Let's get started!
      '''

      trapsHeader: 'Check out the Images'
      traps: '''
        All over Chicago, scientists have set up motion sensitive camera traps.
        The camera snaps a few shots anytime something moves in front of it.
      '''

      taskHeader: 'Identify the Animals'
      task: '''
        Your task is to identify all the different animals that appear in the photos.
        The species that will appear are listed here.

        It's a big list, and some species may be unfamiliar,
        but there are a few ways to narrow that list down using the characteristics you see.
      '''

      chooseRodentHeader: 'Looks like...'
      chooseRodent: '''
        The animal in the foreground of this photo looks like a rodent of some kind.

        Let's choose <strong>"Rodent"</strong> from the <strong>"Looks like"</strong> menu.
      '''

      chooseTanYellowHeader: 'Characteristic: Coat'
      chooseTanYellow: '''
        Let's narrow the list down a bit by choosing the <strong>"Tan Yellow"</strong> swatch from the <strong>"Coat"</strong> menu.
      '''

      chooseBushyHeader: 'Characteristic: Tail'
      chooseBushy: '''
        We've narrowed the list down enough to see thumbnail previews of the remaining animals.

        Choose the <strong>"Bushy"</strong> icon from the <strong>"Tail"</strong> menu to narrow the list down further.
      '''

      chooseGraySquirrelHeader: 'Make a choice'
      chooseGraySquirrel: '''
        Great, that leaves us with just one option!
        Let's choose <strong>"Gray Squirrel"</strong> it and make sure it's a match.
      '''

      confirmWildebeestHeader: 'Looks Good!'
      confirmWildebeest: '''
        By comparing the animal to the photos here and reading the description below, we can confirm that this is indeed a Gray Squirrel.
        You can flip through the photos to see examples of the animal from multiple angles using the bullets on the right.
      '''

      identifyWildebeestHeader: 'Count & Behavior'
      identifyWildebeest: '''
        Once you're confident that this is a Gray Squirrel,
        choose <strong>"1"</strong> from the count menu and <strong>"Head Up"</strong> from the behavior menu.
        Then click "Identify."
      '''

      findZebrasHeader: 'Identify another animal'
      findZebras: '''
        We want to try to identify all the animals in each capture.
        Look closely and you'll notice that there are some zebras in the distance.

        Let's look at another way of classifying when we already know which species we can see.
      '''

      typeZebraHeader: 'Search'
      typeZebra: '''
        The seach field is a quick way to highlight animals whose descriptions contain certain words.

        Type "zebra" in the search field...
      '''

      clickZebraHeader: 'Search'
      clickZebra: '''
        ...and click "Zebra," which is the only animal highlighted.
      '''

      confirmZebraHeader: 'Just do your best!'
      confirmZebra: '''
        It's hard to make out the zebras in the distance, so classify as best you can.
        Each classification is compared with the classifications of other volunteers, so even if you're not sure, just try your best!
      '''

      identifyZebraHeader: 'Count & Behavior'
      identifyZebra: '''
        There are two zebras in the distance, and they appear to be grazing with their heads bowed.
        Mark "2," "Standing," and "Eating," then click "Identify."
      '''

      finishHeader: 'Nice Job!'
      finish: '''
        Now you're ready to classify some images on your own.

        In each image, do your best to identify all the animals you can,
        even if you can't see enough to be completely sure.
        If there aren't any animals in an image, check "Nothing here" and then "Finish."

        Your observations will be combined with those of multiple volunteers,
        so even if you're not sure on something, your contribution is still very useful!

        Don't forget: after classifying an image you can always <strong>discuss</strong> it with professional and citizen scientists or share it with friends.

        Click <strong>"Finish"</strong> now to move on.
      '''

  animals:
    beaver:
      label: 'Beaver'
      description: '''
        Usually brown with large sharp front teeth, front feet has claws, back feet are webbed, round body, and a large flat tail. As the second largest rodent in the world, beavers are semi-aquatic and primarily nocturnal. They are known for building dams, canals, and lodges out of tree limbs and branches for homes.
    '''

    bike:
      label: 'Bike'
      description: '''
        Describe Bike
    '''

    car:
      label: 'Car'
      description: '''
        Describe Car
    '''

    chipmunk:
      label: 'Chipmunk'
      description: '''
        A small member of the squirrel family that use their cheek pouches to carry various foods of nuts, berries, seeds, etc into their burrow or nest to store their food. These have smaller less bushy tails than a typical squirrel and sport signature white and brown stripes around their eye and going down their back. Typically brown or tan in color.
    '''

    coyote:
      label: 'Coyote'
      description: '''
        Commonly brown and tan in color, this member of the dog family is smaller than wolves and have occasionally been called prairie wolves or brush wolves due to their wolf like appearance. Although, they differ from wolves with their pointed snouts, slender body, and tall, pointy ears. In the fall and winter they form packs for more effective hunting. Humans should not fear urban coyotes, but take precautions not to feed the animals and keep small pets indoors.
    '''

    deer:
      label: 'Deer'
      description: '''
        A fairly big, tan animal that is in the same family as moose and reindeer. They have large ears and short fluffy tails. The males are called bucks while females are called does and the young are called fawns. Some males may have antlers depending on the time of the year.
    '''

    domCat:
      label: 'Cat, Domestic'
      description: '''
        A common household pet with a small build, long tails, and small pointed ears. This animals come in a variety of color, patterns (spotted or stripes), and breeds.
    '''

    domDog:
      label: 'Dog, Domestic'
      description: '''
        A common household pet related to wolves, foxes, and jackals, but come in a variety of colors, sizes, patterns, and breeds. Dogs communicate in many different ways; such as scent, facial expressions, body position, and movement.
    '''

    flyingSquirrel:
      label: 'Squirrel, Flying'
      description: '''
        A member of the squirrel family, this animal has large, dark eyes, loose skin between the front and back legs, clawed feet, and a long, bushy tail with dark fur on top and light below. It travels from tree to tree by launching itself and spreading its limbs so it can glide, while using its legs to steer and its tail to brake when it reaches its destination.
    '''

    foxSquirrel:
      label: 'Squirrel, Fox'
      description: '''
        The largest species of tree squirrel in North America, they look like a larger typical squirrel with an orange tone to their fur. They can be around 2 feet in length and weight 1 - 2 lbs. It spends most time in forging food  and roaming around fields.
    '''

    grayFox:
      label: 'Fox, Gray'
      description: '''
        A small to medium sized animal with gray coat on its back and head with light fur on its chest and belly. They have a signature black tipped, bushy tail and band of black fur from the inner corner of their eyes around the bottom of their snout. They are tree climbers, typically sleep during the day at very rocky locations, and are active during the night.
    '''

    graySquirrel:
      label: 'Squirrel, Gray'
      description: '''
        Small squirrels that are gray-brown all over their bodies except the white patch along their belly. This animals diet consists of acorns, hickory nuts, maple, walnuts, etc.
    '''

    horse:
      label: 'Horse'
      description: '''
        A large, muscular animal with a mane of hair along the back of the head and neck. These animals have hooves and a long tail of hair. Males are called stallions, females are mares, and young ones are called foals. Domesticated these animals are used for transportation and competitive sports.
    '''

    human:
      label: 'Human'
      description: '''
        Describe Human
    '''

    livestock:
      label: 'Livestock'
      description: '''
        Describe Livestock
    '''

    mink:
      label: 'Mink'
      description: '''
        Related to otters, weasels, and ferrets, Minks have pointed snouts with dark eyes. They also have clawed feet with webbing and bodies covered in thick brown fur that sheds water quickly. These animals live in semi aquatic habitats.
    '''

    mouse:
      label: 'Mouse'
      description: '''
        A very small animal with a long snout, big round ears, and a long hairless tail. This animal can be found in and around grasslands and homes.
    '''

    mower:
      label: 'Mower'
      description: '''
        Describe Mower
    '''

    muskrat:
      label: 'Muskrat'
      description: '''
        This animal normally has brown fur and a black tail with small dark eyes. The furless, scaly tail is half of its total length. When it walks, the tail creates a trail. Their front paws are clawed while in the rear they are semi-webbed clawed feet.
    '''

    opossum:
      label: 'Opossum'
      description: '''
        Adept tree climbers with their clawed feet and opposable big toe on rear paw. This animal known for playing dead has a white face with a pink nose,  black eyes, black ears, long tail and long, gray fur on their body.
    '''

    otherVehicle:
      label: 'Vehicle, Other'
      description: '''
        Describe Vehicle, Other
    '''

    rabbit:
      label: 'Rabbit'
      description: '''
        Rabbits we see in urban settings have large, dark eyes, long ears pointed upwards, and brown fur with a short, fluffy, white tail.
    '''

    raccoon:
      label: 'Raccoon'
      description: '''
        This brown-gray furry animal looks like it’s wearing a bandit mask with the black patches around its eyes on its white face. Another notable features are its finger like clawed toes and its black-ringed tail with long fur. Raccoons are nocturnal and often seen foraging for food in trash bins.
    '''

    rat:
      label: 'Rat'
      description: '''
        A large mouse like critter with a pointy nose, round ears, and a long, hairless, pinkish tail. Many people think they only roam the subway and sewers, but its not uncommon to see then running across the street above ground.
    '''

    redFox:
      label: 'Fox, Red'
      description: '''
        An animal with orange brownish fur along its head and back with and white fur on its belly and typically at the tip of its bushy tail. It’s tail helps it balance just like a cat’s. Some have black fur on the back of its ears and legs. They often hunt for food but can adapt to eating garbage and pet food.
    '''

    skunk:
      label: 'Skunk'
      description: '''
        An animal, well known for its stinky spray towards predators, has black with white stripe patterns. It has a single thin, white stripe down the middle of its face and two, thicker white stripes originated at the top of its head running down either side of the back into its thick, bushy tail.
    '''

    woodChuck:
      label: 'Woodchuck'
      description: '''
        This animal is also known as a groundhog. It has a brown furry coat, clawed feets, small eyes and ears, and a short, flat tail.
    '''

    melanisticGraySquirrel:
      label: 'Squirrel, Melanistic Gray'
      description: '''
        Is an animal that has a color morph to change its fur from gray to black. You may occasionally see them during the color changing process, they will appear to be brown and black patchy.
    '''

  differences:
    beaver:
      muskrat: '''
      to do description
      '''

      woodchuck: '''
      to do description
      '''

      mink: '''
      to do description
      '''

    chipmunk:
      graySquirrel: '''
      to do description
      '''

      foxSquirrel: '''
      to do description
      '''

    coyote:
      domDog: '''
      to do description
      '''

      grayFox: '''
      to do description
      '''

      redFox: '''
      to do description
      '''

    deer:
      horse: '''
      to do description
      '''

    domCat:
      raccoon: '''
      to do description
      '''

    domDog:
      coyote: '''
      to do description
      '''

      grayFox: '''
      to do description
      '''

      redFox: '''
      to do description
      '''

    flyingSquirrel:
      mouse: '''
      to do description
      '''

      graySquirrel: '''
      to do description
      '''

      foxSquirrel: '''
      to do description
      '''

      rat: '''
      to do description
      '''

    foxSquirrel:
      graySquirrel: '''
      to do description
      '''

    grayFox:
      domDog: '''
      to do description
      '''

      coyote: '''
      to do description
      '''

      redFox: '''
      to do description
      '''

    graySquirrel:
      foxSquirrel: '''
      to do description
      '''

    horse:
      deer: '''
      to do description
      '''

    mink:
      muskrat: '''
      to do description
      '''

      beaver: '''
      to do description
      '''

      woodChuck: '''
      to do description
      '''

    mouse:
      rat: '''
      to do description
      '''

    muskrat:
      mink: '''
      to do description
      '''

      beaver: '''
      to do description
      '''

      woodChuck: '''
      to do description
      '''

    opossum:
      rat: '''
      to do description
      '''

      raccoon: '''
      to do description
      '''

    rabbit:
      opossum: '''
      to do description
      '''

    raccoon:
      opossum: '''
      to do description
      '''

      domCat: '''
      to do description
      '''

    rat:
      mouse: '''
      to do description
      '''

      opossum: '''
      to do description
      '''

    redFox:
      grayFox: '''
      to do description
      '''

      domCat: '''
      to do description
      '''

      coyote: '''
      to do description
      '''

    skunk:
      raccoon: '''
      to do description
      '''

    woodChuck:
      mink: '''
      to do description
      '''

      beaver: '''
      to do description
      '''

      muskrat: '''
      to do description
      '''

    melanisticGraySquirrel:
      mink: '''
      to do description
      '''

  characteristics:
    like: 'Looks like...'
    coat: 'Coat'
    tail: 'Tail'
    build: 'Build'

  characteristicValues:
    likeCatDog: 'Cat Dog'
    likeRodent: 'Rodent'
    likeManMade: 'Vehicles'
    likeOther: 'Other'
    coatTanYellow: 'Tan Yellow'
    coatRedBrown: 'Red Brown'
    coatBrownBlack: 'Brown Black'
    coatGrayBlack: 'Gray Black'
    coatMottled: 'Mottled'
    coatSolid: 'Solid'
    coatOrTailStriped: 'Or Tail Striped'
    tailBushy: 'Bushy'
    tailSmooth: 'Smooth'
    tailLong: 'Long'
    buildStocky: 'Stocky'
    buildLanky: 'Lanky'
    buildSmall: 'Small'
    buildLowSlung: 'Low Slung'

  profile:
    header: "Your Profile"
    favorites: 'Favorites'
    recents: 'Recents'
    noFavorites: 'You have no favorites!'
    noRecents: 'You have no recent classifications!'
    showing: 'Showing'
    loadMore: 'Load more'

  about:
    science:
      nav: "Science"
      header: "Science"
      p: """
        <p>
          Cities can be hostile places for wildlife, with threats coming from habitat destruction, roads and traffic, humans, pets and large numbers of invasive species.
          However, with proper management, urban areas can house a number of important wildlife species, including carnivores and small mammals.
        </p>
        <p>
          To assess the biodiversity of the greater Chicagoland area, Lincoln Park Zoo’s Urban Wildlife Institute has established monitoring stations within city parks,
          forest preserves, golf courses and cemeteries across a four-county area, including downtown Chicago and its suburbs. Motion-triggered cameras are deployed four
          times per year at more than 100 sites to determine which species are present and to assess spatial and long-term patterns in wildlife communities.
        </p>
        <p>
          Knowing where Chicago’s urban wildlife is located will help us to better conserve it. This knowledge will pave the way for future studies on the behavior and
          ecology of specific urban species, helping stakeholders to better manage wildlife conflict.
        </p>

        <img src="./images/animals/fox-squirrel-1.jpg">
      """

      questions: """
        <h1>Our Scientific Questions</h1>

        <h2>Where do they go?</h2>
        <p>We don’t know as much as we’d like about species in urban systems.  Even basic facts like what types of habitat attract which species are often unknown in areas like cities.
        Finding out where certain species are most likely to occur allows us to target conservation and management efforts to ensure we can coexist with our wildlife neighbors.</p>

        <h2>How are they doing?</h2>
        <p>While we can’t directly measure populations with the data from our cameras, we can get a sense of which species are most common, and which may be in decline.
        This can help us make recommendations about how to improve conditions for the species that are in trouble.</p>

        <h2>How do they compete?</h2>
        <p>We know almost nothing about how species in urban areas might compete with one another, engage in predator-prey dynamics, or avoid each other.
        Preliminary results indicate that the normal community interactions we observe in natural systems don’t apply to urban areas, where entirely new dynamics seem to be in place.
        By evaluating our camera images, we can begin to assemble the first complete picture of an urban ecosystem, including how all the species interact.</p>

        <h2>How do they interact with us?</h2>
        <p>By also collecting data on humans, and on pets like cats and dogs, we can get a sense of how animals in urban settings react to the people who make the city their home.
        Some animals may be attracted to sites that are often visited by humans, while others may be looking for more secluded places.   Humans are a critical part of the system,
        and our camera data allows us to understand our impact, as well as the importance of food and habitat.</p>
      """

    uwi:
      nav: "Urban Wildlife Inst."
      header: "Urban Wildlife Institute"
      content: """
        <p>Utilizing Lincoln Park Zoo’s diverse scientific specialties, the Urban Wildlife Institute studies the interaction between urban development and the natural ecosystem to develop scientific standards for minimizing conflict between these overlapping areas. Landscape ecology, population biology, epidemiology, endocrinology, veterinary medicine and other core disciplines contribute to an increased understanding of ecosystem health in an urban setting. The Urban Wildlife Institute aims to use Chicago as a model for urban areas struggling to deal with wildlife relocation, rehabilitation, disease and conflicts.</p>

        <p>One issue receiving special emphasis is the transmission of disease from animals to humans—another byproduct of urban sprawl. By studying how people and animals interact in an urban setting, the Urban Wildlife Institute can help scientists to better understand—and curb—zoonotic disease threats such as West Nile virus, rabies and avian influenza.</p>

        <p>Supported by a $1.5 million grant from the Davee Foundation, the Urban Wildlife Institute is forming partnerships with local nature and conservation organizations and conducting pilot studies into ecosystem health and human-wildlife interaction. By developing standards for managing urban wildlife issues, the institute is creating a conflict-management model that can be followed worldwide.</p>

        <p>To learn more, you can visit <a href="http://www.lpzoo.org/conservation-science/science-centers/urban-wildlife-institute">their website</a>.</p>
      """
    zooniverse:
      nav: "Zooniverse"
      header: "Zooniverse"
      content: """
        <p>The amount of data collected by modern research equipment is often too large for any one person or small team of people to effectively analyze. Over the past several decades, scientists have explored partnering with the public to help do real science when human eyes and thinking are still better at analysis than computers.</p>

        <p>Known online as the Zooniverse, the Adler's Citizen Science department designs and develops web applications using data sets that would normally take a science team over 100 years to analyze and, with the help of a worldwide network of volunteers, complete the analysis with a high level of accuracy in weeks or months.</p>

        <p>To participate in other citizen science efforts, visit <a href="http://www.zooniverse.org">Zooniverse.org</a>.</p>
      """
    organizations:
      nav: "Organizations"
      header: "Organizations"
      adler:
        header: "Adler Planetarium"
        p: """
          <img src="./images/logos/adler-black.png" class="inline">
          <a href="http://www.adlerplanetarium.org/">The Adler Planetarium</a> - America's First Planetarium - was founded in 1930 by Chicago business leader Max Adler.
          The Adler is a recognized leader in science education, with a focus on inspiring young people to pursue careers in science, technology, engineering and math.
          Throughout 80 years, the Adler has inspired the next generation of explorers by sharing the personal stories of space exploration and America’s space heroes.
        """
      lincolnParkZoo:
        header: "Lincoln Park Zoo"
        p: """
          <img src="./images/logos/lpz-black.png" class="inline">
          <a href=""http://www.lpzoo.org/">Lincoln Park Zoo</a> is a world of wildlife in the shadow of skyscrapers. Located within a verdant park just minutes north of Chicago, the zoo has been a natural, free oasis for generations of animal lovers, who visit the zoo to hear a lion’s roar echo off nearby apartment buildings, see gorillas climb trees as the Willis Tower looms in the distance, or forget where they are as they immerse themselves in tropical rainforests, dry-thorn forests or spacious savannas.<br><br>

          The Lincoln Park Zoo is dedicated to connecting people with nature by providing a free, family-oriented wildlife experience in the heart of Chicago and by advancing the highest quality of animal care, education, science and conservation.
        """

    team:
      nav: "Team"
      header: "Team"
      science:
        magle:
          name: 'Seth Magle'
          image: 'http://placehold.it/100'
          description: '''
            <p>Seth first became interested in conservation and ecology as a college student in 1997 while observing black-tailed prairie dogs living in sidewalk median strips near his home in Boulder, Colorado. Daily interactions with these resilient animals made him wonder what adaptations enabled these small mammals to persist in highly urban habitat and which factors contributed to their distribution and abundance. Eventually he completed an honors thesis on the behavior of this urban-adapted keystone species; he ultimately expanded on that research for both a master’s degree and a doctorate.</p>

            <p>However, Seth’s interests go far beyond prairie dogs to encompass all wildlife species impacted by urbanization and human development. He has also engaged in research on movement behavior of white-tailed deer in a rural landscape characterized by high prevalence of disease outbreaks, assessments of the diversity of bird communities residing in agricultural habitat and the conservation of Canada lynx reintroduced to the southern edge of their historical range, where they are threatened by roads and traffic.</p>

            <p>Seth strongly believes that if rare and imperiled species are to be conserved in our modern world, we must understand and mitigate all potential impacts of urban areas on wildlife. To that end, he engages in studies of urban wildlife that span a broad range of scientific disciplines, including behavioral ecology, conservation genetics, landscape ecology, environmental education and human dimensions of wildlife. His vision is to help create a world in which urban ecosystems represent an important component of the worldwide conservation of biodiversity.</p>
          '''
        lehrer:
          name: "Liza Lehrer"
          image: 'http://placehold.it/100'
          description: '''
            <p>Liza’s interest in wildlife began as a kid, while digging through her backyard and looking for bugs and worms to scare her sister. In college, she expanded her education with summer internships including wildlife rehabilitation, collecting behavioral data on Mexican wolves and a semester abroad studying marine life in the Great Barrier Reef.</p>

            <p>After earning her degree in zoology, Liza was fortunate to work as a research intern at Lincoln Park Zoo and later as animal records keeper. It was her work at the zoo, and life in Chicago, that lead to her fascination with urban wildlife. Coyotes and foxes were becoming regular residents of the city, but how do they move about the urban landscape? What types of adjustments do they make to survive? To examine some of these questions, Liza returned to graduate school to study how urbanization affects survival, movements and behavior of an urban-adapter species, the woodchuck.</p>

            <p>As urban wildlife ecologist for the Urban Wildlife Institute, Liza manages and collects data for the institute’s field research projects, including the Urban Wildlife Biodiversity Monitoring project. She coordinates collaborations and leads a project in partnership with the University of Illinois on the effects of relocation on nuisance woodchucks, which expands upon her master’s research. Liza’s research interests include urban wildlife, landscape ecology, behavioral ecology, wildlife disease and managing human-wildlife conflict.</p>

            <p>Prior to joining the Urban Wildlife Institute, Liza served as an avian field assistant on a project examining urban disease ecology of West Nile virus and as a guest engagement leader at Lincoln Park Zoo.</p>
        '''

      development:
      
        raden:
          name: 'Steve Raden'
          image: 'http://placehold.it/100'
          description: '''
            Steve is a software developer at Adler Planetarium and Zooniverse. 
            As a Chicagoan, he enjoys walking the city's parks and streets and occasionally spotting
            animals. 
          '''

        vansingel:
          name: 'Heath Van Singel'
          image: 'http://placehold.it/100'
          description: '''
            Heath is the UX/UI Designer for projects at the Zooniverse where he works to craft thoughtful and engaging user experiences. Apart from design Heath also enjoys illustration, a good sci-fi or fantasy novel, and trips back to Michigan.
          '''

        weiksnar:
          name: 'Alex Weiksnar'
          image: 'images/about/team/michael.jpg'
          description: '''
           <p>Alex currently works as a front-end developer for the Zooniverse out of the Adler Planetarium. He spends his time building rich and engaging user interfaces for the web.
           Alex previously attended University of Miami, where he studied Psychology, Biology, and English. 
           </p>
          '''

        whyte:
          name: 'Laura Whyte'
          image: 'http://placehold.it/100'
          description: '''
            <p>The citizen science department at the Adler Planetarium is home to a development team who design and build Zooniverse websites - the worlds largest and most successful collection of citizen science projects. This team, who bring expertise in technology, education, science outreach and research, reach beyond the internet into the local community through school visits, youth programs and hack days events. As former astronomer, high school teacher, museum educator, and web developer, Dr. Whyte leads these initiatives and the opportunity they bring to engage a wider Chicago audience in actively doing science.</p>
          '''
    connect:
      header: "Connect"
      action: "Get Started"
      social: """
        Follow the <a href= '#/'>Chicago Wildlife Watch Blog</a> and <a href='#/'>@Chicago_Wildlife_Watch</a> to keep current with the latest findings
      """

  education:
    header: "Education"
    overview:
      nav: "Overview"
      header: "Can I use Chicago Wildlife Watch in the classroom?"
      p: """
        Absolutely! Chicago Wildlife Watch, just like all the Zooniverse projects, offers a unique opportunity to explore real scientific data, while making a contribution to cutting edge research. We would like to stress that as each image is marked by the volunteers, it really does not matter if your students don't mark all the features. That being said, the task itself is simple enough that we believe most people can take part and make a worthwhile contribution regardless of age.
      """
    resources:
      nav: "Resources"
      header: "What resources are there to support use in the classroom?"
      content: """
        <p>Over the Summer of 2014, teen interns at Adler Planetarium developed a floor activity to bring awareness to the fact that nature is everywhere and we live in nature. A Lesson plan for this activity can be found on <a href='http://www.zooteach.org'>ZooTeach</a></p>

        <p>Videos are also a great tool to introduce students to Chicago Wildlife Watch. Here are a couple of our favorites:</p>

        <ul>
          <li><a href='https://www.youtube.com/watch?v=87OSgoYyxWw'>Bill Nye: The Science Guy - Biodiversity</a></li>
          <li><a href='https://www.youtube.com/watch?v=iRhdDs91aas'> TropicMind.com: Ecosystem and Food Chain (aimed for younger children)</a> </li>
        </ul>

        <p>We also recommend checking out the Urban Wildlife Institute webpage for more information on the organization</p>

      """
    aside:
      content: """
        <h1>Connect with Education</h1>
        <p>The Chicago Wildlife Watch blog, as well as the partner Facebook pages below, are great places to keep up to date with the latests science results, but there is also a Zooniverse Education Blog as well as a <a href='https://www.twitter.com/ZooTeach'>@ZooTeach</a> Twitter feed. The Urban Wildlife Institute also has a twitter account, <a href='https://www.twitter.com/LPZ_UWI'>@LPZ_UWI</a> that you can follow for more information on their work.</p>
      """
