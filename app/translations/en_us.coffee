module.exports =
  navigation:
    home: 'Home'
    about: 'About'
    classify: 'Classify'
    profile: 'Profile'
    discuss: 'Discuss'
    education: 'Education'
    press: 'Press'

  home:
    heading: 'Chicago Wildlife Watch'
    rightBannerHeader: "What is Chicago Wildlife Watch?"
    leftBannerHeader: "
      <h2>Welcome to</h2>
      <h1>Chicago <br/> Wildlife Watch</h1>
    "
    imageCredit: "Image credit and &copy; Brian Koprowski"
    content: '''
      To find out which animals live in Chicago, we’ve collected more than 1 million photos of wildlife from the Loop to the burbs. To ID them, though, we need your help! 

      Chicago Wildlife Watch, developed by Lincoln Park Zoo and the Adler Planetarium, lets everyone help us understand how animals—from coyotes to chipmunks—share this great city.
    '''
    action: 'Get Started'
    currentStatus: '<span class="classification-count">0</span> classifications by <span class="user-count">0</span> volunteers'
    preFooterText: "Chicago Wildlife Watch is a collaboration between Lincoln Park Zoo, the Adler Planetarium and the Zooniverse."

    stats:
      header: "CHICAGO WILDLIFE WATCH Statistics"
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
      If you are using Chicago Wildlife Watch for educational purposes or with young children, you might want to use our 'Curated' dataset option.  The images in this data set are much more likely to contain an animal but still require additional attention to confirm the animal type. For a younger audience, or for a situation where time is limited, this may provide a more engaging experience.
    """

  siteIntro:
    s1:
      title: "Welcome!"
      content: "Welcome to Chicago Wildlife Watch! In this project, we are asking you to identify animals found in camera trap photos from around the city. Your help allows us to continue our research into urban biodiversity, making the city a better home for both humans and animals."
    s2:
      title: "Identifying animals"
      content: "You are presented with a photo on the left and a list of potential animals on the right. When you spot an animal within a photo, simply click the corresponding animal on the right. You will be asked to supply some followup info, such as the number of animals found in the image."
    s3:
      title: "Filtering by characteristics"
      content: "Occasionally it is difficult to determine which animal is in the photo. Just above the list of animals is a variety of methods to filter the animal list. Selecting different options reduces the number of choices, making your job easier."
    s4:
      title: "Made a mistake?"
      content: "If you need to delete any of your existing marks while viewing an image, simply find your animal in the list below the image and click the 'X' icon"
    s5:
      title: "That's it!"
      content: "That's it! You may catch up on project updates either on the blog or through speaking with other volunteers. If you need additional help using the interface, click Tutorial within the list of links below the Finish button."

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

    annotationsMessage: "See something? Animals you identify will appear here..."
    nothingToShow: 'There\'s nothing to show with these filters.'
    clearFilters: 'Clear filters'

    curatedError: "We can't find any subjects right now in our curated dataset', Click the 'Next Capture' button to try again or <a href='#/filter'>view our uncurated dataset</a>"

    oftenConfused: 'Often confused with:'

    count: 'How many'

    behavior: 'Behavior'
    behaviors:
      headUp: 'Head Up'
      headDown: 'Head Down'
      neither: 'Neither'
      notVisible: 'Not Visible'
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
        This short tutorial will walk you through your first identification. Let's get started!
      '''

      trapsHeader: 'Check out the Images'
      traps: '''
        All over Chicago, scientists have set up motion-sensitive camera traps.
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
        Let's choose <strong>"Gray Squirrel"</strong> and make sure it's a match.
      '''

      confirmWildebeestHeader: 'Looks Good!'
      confirmWildebeest: '''
        By comparing the animal to the photos here and reading the description below, we can confirm that this is indeed a gray squirrel.
        You can flip through the photos to see examples of the animal from multiple angles using the bullets on the right.
      '''

      identifyWildebeestHeader: 'Count & Behavior'
      identifyWildebeest: '''
        Once you're confident that this is a gray squirrel,
        choose <strong>"1"</strong> from the count menu and <strong>"Head Up"</strong> from the behavior menu.
        Then click "Identify."
      '''

      finishHeader: 'Nice Job!'
      finish: '''
        Now you're ready to identify some images on your own.

        In each image, do your best to identify all the animals you can,
        even if you can't see enough to be completely sure.
        If there aren't any animals in an image, check "Nothing here" and then "Finish."

        Your observations will be combined with those of multiple volunteers,
        so even if you're not sure on something, your contribution is still very useful!

        Don't forget: after identifying an image you can always <strong>discuss</strong> it with professional and citizen scientists or share it with friends.

        Click <strong>"Finish"</strong> now to move on.
      '''

  animals:
    beaver:
      label: 'Beaver'
      description: '''
        This animal is usually brown with large sharp front teeth, clawed front feet webbed back feet, a round body and a large flat tail. As the second largest rodent in the world, beavers are semi-aquatic and primarily nocturnal.
      '''

    bike:
      label: 'Bike'
      description: '''
        N/A. Identifying the frequency of bikes helps us understand the impact of human activity on the animal population in this urban habitat. 
      '''
    bird:
      label: 'Bird'
      description: '''
        All manner of birds will be captured in the pictures, from cardinals to seagulls. They will frequently be found either nesting in trees or scavenging for food on the ground.
      '''

    car:
      label: 'Car'
      description: '''
        N/A. Identifying the frequency of cars helps us understand the impact of human activity on the animal population in this urban habitat. 
      '''

    chipmunk:
      label: 'Chipmunk'
      description: '''
        A small member of the squirrel family that uses its cheek pouch to carry various nuts, berries and seeds into its burrow or nest to store its food. They have smaller, less bushy tails than a typical squirrel and sport signature white-and-brown stripes around their eye and going down their back. Typically brown or tan in color.
      '''

    coyote:
      label: 'Coyote'
      description: '''
        Commonly brown and tan in color, this member of the dog family is smaller than a wolf. They have occasionally been called prairie wolves or brush wolves due to their wolf-like appearance, but they differ from wolves with their pointed snouts, slender body and tall, pointy ears. In the fall and winter, they form packs for more effective hunting.
      '''

    deer:
      label: 'Deer'
      description: '''
        A fairly big, tan animal that is in the same family as moose and reindeer. They have large ears and short fluffy tails. The males are called bucks while females are called does, and the young are called fawns. Some males may have antlers depending on the time of the year.
      '''

    domCat:
      label: 'Cat, Domestic'
      description: '''
        A common household pet with a small build, a long tail and small pointed ears. This animal comes in a variety of color, patterns (spotted or stripes), and breeds.
      '''

    domDog:
      label: 'Dog, Domestic'
      description: '''
        A common household pet related to wolves, foxes and jackals. This animal comes in a variety of colors, sizes, patterns and breeds.
      '''

    flyingSquirrel:
      label: 'Squirrel, Flying'
      description: '''
        A member of the squirrel family, this animal has large, dark eyes, loose skin between the front and back legs, clawed feet and a long, bushy tail with dark fur on top and light below. It travels from tree to tree by launching itself and spreading its limbs so it can glide while using its legs to steer and its tail to brake when it reaches its destination.
      '''

    foxSquirrel:
      label: 'Squirrel, Fox'
      description: '''
        The largest species of tree squirrel in North America, they look like a larger typical squirrel with an orange tone to their fur. They can be around 2 feet in length and weight 1 - 2 lbs. It spends most of its time foraging for food and roaming around fields.
      '''

    grayFox:
      label: 'Fox, Gray'
      description: '''
        A small to medium-sized animal with a gray coat on its back and head with light fur on its chest and belly. They have a signature black-tipped, bushy tail and a band of black fur from the inner corner of their eyes around the bottom of their snout. They are tree climbers, typically sleep during the day at very rocky locations and are active during the night.
      '''

    graySquirrel:
      label: 'Squirrel, Gray'
      description: '''
        Small squirrels that are gray-brown all over their bodies except the white patch along their belly. This animal's diet consists of acorns, hickory nuts, maple and walnuts.
      '''

    horse:
      label: 'Horse'
      description: '''
        A large, muscular animal with a mane of hair along the back of the head and neck. These animals have hooves and a long tail of hair.
      '''

    human:
      label: 'Human'
      description: '''
        Identifying a human within a photo flags this image. We generally remove images of humans very quickly from the dataset.
      '''

    livestock:
      label: 'Livestock'
      description: '''
         N/A. Identifying the frequency of livestock helps us understand the impact of human activity on the animal population in this urban habitat. 
      '''

    mink:
      label: 'Mink'
      description: '''
        Related to otters, weasels and ferrets, minks have pointed snouts with dark eyes. They also have clawed feet with webbing and bodies covered in thick brown fur that sheds water quickly. These animals live in semi-aquatic habitats.
      '''

    mouse:
      label: 'Mouse'
      description: '''
        A very small animal with a long snout, big round ears and a long hairless tail. This animal can be found in and around grasslands and homes.
      '''

    mower:
      label: 'Mower'
      description: '''
        N/A. Identifying the frequency of mowers helps us understand the impact of human activity on the animal population in this urban habitat.
    '''

    muskrat:
      label: 'Muskrat'
      description: '''
        This animal normally has brown fur and a black tail with small dark eyes. The fur-less, scaly tail is half of its total length. When it walks, the tail creates a trail. Their front paws are clawed while  the rear feet are semi-webbed and clawed.
      '''

    opossum:
      label: 'Opossum'
      description: '''
        Adept tree climbers with their clawed feet and opposable big toe on rear paw. This animal is known for playing dead and has a white face with a pink nose, black eyes, black ears, long tail and long, gray fur on its body.
      '''

    otherVehicle:
      label: 'Vehicle, Other'
      description: '''
        N/A. Identifying the frequency of vehicles helps us understand the impact of human activity on the animal population in this urban habitat.
      '''

    rabbit:
      label: 'Rabbit'
      description: '''
        Rabbits we see in urban settings have large, dark eyes, long ears pointed upwards and brown fur with a short, fluffy, white tail.
      '''

    raccoon:
      label: 'Raccoon'
      description: '''
        This brown-gray furry animal looks like it is wearing a bandit mask with the black patches around its eyes on its white face. Another notable features are its finger-like clawed toes and its black-ringed tail with long fur. Raccoons are nocturnal and often seen foraging for food in trash bins.
      '''

    rat:
      label: 'Rat'
      description: '''
        A large mouse-like critter with a pointy nose, round ears and a long, hairless, pinkish tail. Many people think they only roam the subway and sewers, but it is not uncommon to see then running across the street above ground.
      '''

    redFox:
      label: 'Fox, Red'
      description: '''
        An animal with orange brownish fur along its head and back and white fur on its belly and typically at the tip of its bushy tail. Its tail helps it balance just like a cat’s. Some have black fur on the back of their ears and legs.
      '''

    skunk:
      label: 'Skunk'
      description: '''
        An animal well known for its stinky spray towards predators and black coat with white stripe patterns. It has a single thin, white stripe down the middle of its face and two thicker white stripes originating at the top of its head running down either side of the back into its thick, bushy tail.
      '''

    woodChuck:
      label: 'Woodchuck'
      description: '''
        This animal is also known as a groundhog. It has a brown furry coat, clawed feet, small eyes and ears, and a short, flat tail.
      '''

    melanisticGraySquirrel:
      label: 'Squirrel, Melanistic Gray'
      description: '''
        Melanism is a genetic trait that produces extra melanin in the skin and fur, making an organism appear jet black if it has two sets of this recessive gene or brown/black if it only has one.  Gray squirrels are known to carry this unusual genetic trait.   This trait may be beneficial to gray squirrels living at northern latitudes as they would lose less heat during the cold winter months.  The photo in this ID is of a brown/black melanistic gray squirrel.
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
    noRecents: 'You have no recent identifications!'
    showing: 'Showing'
    loadMore: 'Load more'

  about:
    press:
      nav:
        "Press"

    science:
      nav: "Science"
      header: "Science"
      p: """
        <p>
          Cities can be hostile places for wildlife, with threats coming from habitat destruction, roads and traffic, humans, pets and large numbers of invasive species. However, with proper management, urban areas can house a number of important wildlife species, including carnivores and small mammals.
        </p>
        <p>
          To assess the biodiversity of the greater Chicagoland area, Lincoln Park Zoo’s Urban Wildlife Institute has established monitoring stations within city parks, forest preserves, golf courses and cemeteries in parts of Cook, Lake, DuPage and Will Counties including downtown Chicago. Motion-triggered cameras are deployed four times per year at more than 100 sites to determine which species are present and to assess spatial and long-term patterns in wildlife communities.
        </p>
        <p>
          Knowing where Chicago’s urban wildlife is located will help us to better conserve it. This knowledge will pave the way for future studies on the behavior and ecology of specific urban species, helping stakeholders to better manage wildlife conflict.
        </p>

        <img src="./images/animals/fox-squirrel-1.jpg">
      """

      questions: """
        <h1>Our Scientific Questions</h1>

        <h2>Where do they go?</h2>
        <p>We don’t know as much as we’d like about species in urban systems.  Even basic facts like what types of habitat attract which species are often unknown in areas like cities.
        Finding out where certain species are most likely to occur allows us to target conservation and management efforts to ensure we can coexist with our wildlife neighbors.</p>

        <h2>How are they doing?</h2>
        <p>While we can’t directly measure populations with the data from our cameras, we can get a sense of which species are most common and which may be in decline.
        This can help us make recommendations about how to improve conditions for the species that are in trouble.</p>

        <h2>How do they compete?</h2>
        <p>We know almost nothing about how species in urban areas might compete with one another, engage in predator-prey dynamics or avoid each other.
        Preliminary results indicate that the normal community interactions we observe in natural systems don’t apply to urban areas, where entirely new dynamics seem to be in place.
        By evaluating our camera images, we can begin to assemble the first complete picture of an urban ecosystem, including how all the species interact.</p>

        <h2>How do they interact with us?</h2>
        <p>By also collecting data on humans, and on pets like cats and dogs, we can get a sense of how animals in urban settings react to the people who make the city their home.
        Some animals may be attracted to sites that are often visited by humans, while others may be looking for more secluded places.   Humans are a critical part of the system,
        and our camera data allows us to understand our impact, as well as the importance of food and habitat.</p>
      """

    uwi:
      nav: "Urban Wildlife Institute"
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
          <a href="http://www.lpzoo.org/">Lincoln Park Zoo</a> is a world of wildlife in the shadow of skyscrapers. Located within a verdant park just minutes north of Chicago, the zoo has been a natural, free oasis for generations of animal lovers, who visit the zoo to hear a lion’s roar echo off nearby apartment buildings, see gorillas climb trees as the Willis Tower looms in the distance or forget where they are as they immerse themselves in tropical rainforests, dry-thorn forests or spacious savannas.<br><br>

          Lincoln Park Zoo is dedicated to connecting people with nature by providing a free, family-oriented wildlife experience in the heart of Chicago and by advancing the highest quality of animal care, education, science and conservation.
        """

    team:
      nav: "Team"
      header: "Team"
      science:
        magle:
          name: 'Dr. Seth Magle'
          title: 'Director, Urban Wildlife Institute at Lincoln Park Zoo'
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

        fidino:
          name: 'Mason Fidino'
          description: '''
            <p>Mason first began conservation and ecology work in 2006. Since then he has aided in numerous studies, from collecting clams and fish in the Columbia River to coring trees and identifying birds on the mountains of Washington. Mason completed his undergraduate education at Western Washington University in 2009. After a year-long stay in Dublin, Ireland, he moved to Chicago and began working at the Urban Wildlife Institute as Coordinator of Wildlife Management.</p>
          '''

      development:
        raden:
          name: 'Steve Raden'
          image: 'http://placehold.it/100'
          description: '''
            <p>Steve is a software developer at Adler Planetarium and Zooniverse. As a Chicagoan, he enjoys walking the city's parks and streets and occasionally spotting animals. </p>
          '''

        vansingel:
          name: 'Heath Van Singel'
          image: 'http://placehold.it/100'
          description: '''
            <p>Heath is the UX/UI Designer for projects at the Zooniverse, where he works to craft thoughtful and engaging user experiences. Apart from design Heath also enjoys illustration, a good sci-fi or fantasy novel, and trips back to Michigan.</p>
          '''

        weiksnar:
          name: 'Alex Weiksnar'
          image: 'images/about/team/michael.jpg'
          description: '''
           <p>Alex currently works as a front-end developer for the Zooniverse out of the Adler Planetarium. He spends his time building rich and engaging user interfaces for the web.
           Alex previously attended University of Miami, where he studied psychology, biology and English. 
           </p>
          '''

        wang:
          name: 'Jun Wang'
          description: '''
            <p>Jun Wang is a research scientist at the Syracuse University School of Information Studies. He is interested in designing enjoyable web applications. He is currently a principal investigator of a project sponsored by National Academies: "Drawing-based social learning". He is also an investigator of a citizen science project (citizensort) at Syracuse University. Fascinated by the recent breakthrough in deep learning, he wonders how much computer and human can teach each other. He has enjoyed working with the Zooniverse n using Caffe, a fast deep learning framework, to accomplish pre-processing on the images displayed to volunteers on Chicago Wildlife Watch.</p>
          '''

        whyte:
          name: 'Dr. Laura Whyte'
          title: 'Director of Citizen Science at Adler Planetarium'
          image: 'http://placehold.it/100'
          description: '''
            <p>The citizen science department at the Adler Planetarium is home to a development team who design and build Zooniverse websites - the worlds largest and most successful collection of citizen science projects. This team, who bring expertise in technology, education, science outreach and research, reach beyond the internet into the local community through school visits, youth programs and hack days events. As former astronomer, high school teacher, museum educator, and web developer, Laura leads these initiatives and the opportunity they bring to engage a wider Chicago audience in actively doing science.</p>
          '''
    connect:
      header: "Connect"
      action: "Get Started"
      social: """
        Follow the Adler Planetarium [<a href='http://www.adlerplanetarium.org/blogs'>Blog</a> / <a href= 'https://twitter.com/adlerskywatch'>Twitter</a>] and Lincoln Park Zoo Urban Wildlife Institute [<a href='https://www.lpzoo.org/rss-feeds?'>Blog</a> / <a href='https://twitter.com/lpz_uwi'>Twitter</a>] to keep current with the latest findings!
      """

  education:
    header: "Education"
    overview:
      nav: "Overview"
      header: "Can I use Chicago Wildlife Watch in the classroom?"
      p: """
        Absolutely! Chicago Wildlife Watch, just like all the Zooniverse projects, offers a unique opportunity to explore real scientific data while making a contribution to cutting-edge research. We would like to stress that as each image is marked by the volunteers, it really does not matter if your students don't mark all the features. That being said, the task itself is simple enough that we believe most people can take part and make a worthwhile contribution regardless of age.
      """
    resources:
      nav: "Resources"
      header: "What resources are there to support use in the classroom?"
      content: """
        <p>Over the summer of 2014, teen interns at Adler Planetarium developed a floor activity to bring awareness to the fact that nature is everywhere and we live in nature. A Lesson plan for this activity can be found on <a href='http://www.zooteach.org'>ZooTeach</a></p>

        <p>Videos are also a great tool to introduce students to Chicago Wildlife Watch. Here are a couple of our favorites:</p>

        <ul>
          <li><a href='https://www.youtube.com/watch?v=iRhdDs91aas'> TropicMind.com: Ecosystem and Food Chain (aimed for younger children)</a> </li>
          <li><a href='https://www.youtube.com/watch?v=iFeRFmqFChQ'>Bill Nye: The Science Guy - Biodiversity</a></li>
        </ul>

        <p>We also recommend checking out the Urban Wildlife Institute <a href="http://www.lpzoo.org/conservation-science/science-centers/urban-wildlife-institute">webpage</a> for more information on the organization.
        </p>
      """
    partner_resources:
      nav: "Partner Resouces"
      header: "Partner resources"  
      content: """
          <p>Please visit Lincoln Park Zoo's Educator's Resources <a href="http://www.lpzoo.org/education/educators-resources"> webpage</a> to access curriculum guides, zoo field trip and self-tour information, accessibility  kits and links to several multi-media apps.
          </p>

          <p>The Adler Planetarium is dedicated to helping the public experience science and discover the universe through field trips, school partnerships, child and teen programming. See the Teach and Learn <a href="http://www.adlerplanetarium.org/educator-resources/">section</a> of the Adler's website for details.
          </p>
        """

    aside:
      content: """
        <h1>Connect with Education</h1>
        <p>The Chicago Wildlife Watch blog, as well as the partner Facebook pages, are great places to keep up to date with the latest science results, but there is also a Zooniverse Education Blog as well as a <a href='https://www.twitter.com/ZooTeach'>@ZooTeach</a> Twitter feed. The Urban Wildlife Institute also has a Twitter account, <a href='https://www.twitter.com/LPZ_UWI'>@LPZ_UWI</a>, that you can follow for more information on their work.</p>
      """

  press:
    header: "Press"
    intro: "Chicago Wildlife Watch Recruits Chicagoans to Help with Urban Wildlife Science Research from Home or Classroom"
    section_1: """
      The Adler Planetarium and Lincoln Park Zoo have launched <b>Chicago Wildlife Watch</b>, a new web-based citizen science initiative that provides an opportunity for students, teachers and members of the public to actively participate in Chicagoland wildlife research through photo identification technology. The platform is available at <a href="http://www.chicagowildlifewatch.org">chicagowildlifewatch.org</a>.
    """
    section_2: """
      <b>Chicago Wildlife Watch</b> is a collaboration between the Adler Planetarium’s Zooniverse team and Lincoln Park Zoo’s Urban Wildlife Institute that began in early 2014. Faced with a year’s worth of back logged research, the Urban Wildlife Institute enlisted the help of the Adler Planetarium’s Zooniverse development team to create a citizen science platform that would empower the people of Chicago to assist researchers in classifying important data essential in assessing local wildlife and their habitats.
    """
    downloads:
      header: "Chicago Wildlife Watch Media Downloads:"
      pressReleasePdf: "Press Release PDF"
      bRollFootage: "B-roll Footage"
      imagesDownloads: "Images Downloads"
      imageCaptionSheet: "Image Caption Sheet"
    slider:
      header: "Images"
      captions: """
        <div id="caption-1" class="nivo-html-caption">
          <p>The Adler Planetarium and Lincoln Park Zoo have launched Chicago Wildlife Watch, a new web-based citizen science initiative that provides an opportunity for students, teachers and members of the public to actively participate in Chicagoland wildlife research through photo identification technology available at chicagowildlifewatch.org. This data will help re- searchers apply findings that will positively influence urban wildlife policy.</p>
          <p>&copy; Adler Planetarium</p>
        </div>

        <div id="caption-2" class="nivo-html-caption">
          <p>The camera traps used for Chicago Wildlife Watch data collection are set up in urban areas throughout Chicago including this South Loop location.</p>
          <p>&copy; Urban Wildlife Institute/Lincoln Park Zoo</p>
        </div>

        <div id="caption-3" class="nivo-html-caption">
          <p>Seth Magle, PhD, Director of the Urban Wildlife Institute secures a camera trap that is used to capture data for Chicago Wildlife Watch. Urban Wildlife Institute scientists set up camera traps four times a year.</p>
          <p>&copy; Urban Wildlife Institute/Lincoln Park Zoo</p>
        </div>

        <div id="caption-4" class="nivo-html-caption">
          <p>A resting coyote is captured by a Urban Wildlife Institute camera trap southwest of Chicago. Coyotes are among the most common carnivores in the Chicagoland area.</p>
          <p>&copy; Urban Wildlife Institute/Linco]ln Park Zoo</p>
        </div>
        <div id="caption-5" class="nivo-html-caption">
          <p>This image shows a raccoon and opossum in the city of Chicago. Exploring the relationship between urban species is one goal of Chicago Wildlife Watch.</p>
          <p>&copy; Urban Wildlife Institute/Lincoln Park Zoo</p>
        </div>

        <div id="caption-6" class="nivo-html-caption">
          <p>Chicago Wildlife Watch will explore wildlife that utilize public spaces such as these coyotes foraging in a park on the Northwest side of Chicago.</p>
          <p>&copy; Urban Wildlife Institute/Lincoln Park Zoo</p>
        </div>

        <div id="caption-7" class="nivo-html-caption">
          <p>This red fox sits facing an Urban Wildlife Institute camera trap west of the city. Red foxes are becoming uncommon in the Chicago area, with some speculat- ing that coyotes may be outcompeting them in urban spaces. Chicago Wildlife Watch may shed light on why this is occurring.</p>
          <p>&copy; Urban Wildlife Institute/Lincoln Park Zoo</p>
        </div>

        <div id="caption-8" class="nivo-html-caption">
          <p>A Zooniverse team member from the Adler Planetarium demonstrates Chicago Wildlife Watch to participants of the Lincoln Park Zoo Conservation Camp. The Zooniverse is the world’s leading - and largest - citizen science platform.</p>
          <p>&copy; Adler Planetarium</p>
        </div>
        <div id="caption-9" class="nivo-html-caption">
          <p>Participants of the Lincoln Park Zoo Conservation Camp classify animals on Chicago Wildlife Watch. This easy to use online platform, allows everyone from middle-school aged children to adults to contribute to real scientific research.</p>
          <p>&copy; Adler Planetarium</p>
        </div>
      """
    contacts:
      header: "Media Contacts:"
      sharon: """
        Sharon Dewar<br>
        Lincoln Park Zoo<br>
        312-742-2246<br>
        SDewar@lpzoo.org
      """
      molly: """
        Molly O’Connell<br>
        Adler Planetarium<br>
        312-322-0524<br>
        moconnell@adlerplanetarium.org
      """
