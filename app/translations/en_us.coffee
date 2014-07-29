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
    heading: 'Welcome to Snapshot Chicago'
    rightBannerHeader: "What is Snapshot Chicago?"
    content: '''
      Snapshot Chicago is a collaboration between two of Chicago’s esteemed institutions, born of the desire to get everyone
      involved in the scientific process. The project aims to achieve a greater understanding of how our urban development affects
      local biodiversity. Anyone can participate and help us learn about this great city we live in!
    '''
    allSeasonsComplete: '''
      <p>With your help, we've classified all the data we have so far. Great work!</p>
      <p>
        We're leaving some images up for further classification, but we have more projects
        (like <a href="https://www.zooniverse.org/project/cyclonecenter">Cyclone Center</a>
        and <a href="https://www.zooniverse.org/project/batdetective">Bat Detective</a>) that need your help.
        Visit <a href="https://www.zooniverse.org/">zooniverse.org</a> to see them all.
      </p>
      <p>
        Keep an eye on <a href="http://blog.snapshotserengeti.org/">the blog</a>
        to learn what happens with the data the project has generated
        and to find out when more images from the Serengeti are available.
      </p>
    '''
    action: 'Get Started'
    currentStatus: '<span class="classification-count">0</span> classifications by <span class="user-count">0</span> volunteers'

    stats:
      header: "SNAPSHOT CHICAGO Classification Statistics"
      activeUsers: "Active Users"
      crittersIdentified: "Critters Identified"
      totalImages: "Images Total"
      complete: "Complete"

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

    #TODO Clean up Constants very little used
    tutorial:
      button: "View Tutorial"
      continueButton: 'Continue'

      welcomeHeader: 'Welcome to Snapshot Serengeti!'
      welcome: '''
        This short tutorial will walk you through your first classification. Let's get started!
      '''

      trapsHeader: 'Check out the Images'
      traps: '''
        All over the Serengeti, scientists have set up motion sensitive camera traps.
        The camera snaps a few shots anytime something moves in front of it.

        The photos often come as a sequence of 2 or 3, called a "capture".

        Check out other snapshots in the sequence using the buttons below the image,
        or play them like a flipbook by clicking the play button.
      '''

      taskHeader: 'Identify the Animals'
      task: '''
        Your task is to identify all the different animals that appear in the photos.
        The species that will appear are listed here.

        It's a big list, and some species may be unfamiliar,
        but there are a few ways to narrow that list down using the characteristics you see.
      '''

      chooseAntelopeHeader: 'Looks like...'
      chooseAntelope: '''
        The animal in the foreground of this photo looks like a large antelope of some kind.

        Let's choose "Antelope/deer" from the "looks like" menu.
      '''

      chooseSolidHeader: 'Characteristic: Pattern'
      chooseSolid: '''
        Let's narrow the list down a bit by choosing the solid swatch from the "Pattern" menu.
      '''

      chooseCurlyHeader: 'Characteristic: Horns'
      chooseCurly: '''
        We've narrowed the list down enough to see thumbnail previews of the remaining animals.

        Choose the "Curly" icon from the "Horns" menu to narrow the list down further.
      '''

      chooseWildebeestHeader: 'Make a choice'
      chooseWildebeest: '''
        Great, that leaves us with just one option!
        Let's choose "Wildebeest" it and make sure it's a match.
      '''

      confirmWildebeestHeader: 'Looks Good!'
      confirmWildebeest: '''
        By comparing the animal to to the photos here and reading the description below, we can confirm that this is indeed a wildebeest.
        You can flip through the photos to see examples of the animal from multiple angles using the bullets on the right.
      '''

      identifyWildebeestHeader: 'Count & Behavior'
      identifyWildebeest: '''
        Once you're confident that this is a wildebeest,
        choose "1" from the count menu and "Moving" from the behavior menu.
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

        Don't forget: after classifying an image you can always discuss it with professional and citizen scientists or share it with friends.

        Click "Finish" now to move on.
      '''

  animals:
    beaver:
      label: 'Beaver'
      description: '''
        Describe Beaver
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
        Describe Chipmunk
    '''

    coyote:
      label: 'Coyote'
      description: '''
        Describe Coyote
    '''

    deer:
      label: 'Deer'
      description: '''
        Describe Deer
    '''

    domCat:
      label: 'Cat, Domestic'
      description: '''
        Describe Cat, Domestic
    '''

    domDog:
      label: 'Dog, Domestic'
      description: '''
        Describe Dog, Domestic
    '''

    flyingSquirrel:
      label: 'Squirrel, Flying'
      description: '''
        Describe Squirrel, Flying
    '''

    foxSquirrel:
      label: 'Squirrel, Fox'
      description: '''
        Describe Squirrel, Fox
    '''

    grayFox:
      label: 'Fox, Gray'
      description: '''
        Describe Fox, Gray
    '''

    graySquirrel:
      label: 'Squirrel, Gray'
      description: '''
        Describe Squirrel, Gray
    '''

    horse:
      label: 'Horse'
      description: '''
        Describe Horse
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
        Describe Mink
    '''

    mouse:
      label: 'Mouse'
      description: '''
        Describe Mouse
    '''

    mower:
      label: 'Mower'
      description: '''
        Describe Mower
    '''

    muskrat:
      label: 'Muskrat'
      description: '''
        Describe Muskrat
    '''

    opossum:
      label: 'Opossum'
      description: '''
        Describe Opossum
    '''

    otherVehicle:
      label: 'Vehicle, Other'
      description: '''
        Describe Vehicle, Other
    '''

    rabbit:
      label: 'Rabbit'
      description: '''
        Describe Rabbit
    '''

    raccoon:
      label: 'Raccoon'
      description: '''
        Describe Raccoon
    '''

    rat:
      label: 'Rat'
      description: '''
        Describe Rat
    '''

    redFox:
      label: 'Fox, Red'
      description: '''
        Describe Fox, Red
    '''

    skunk:
      label: 'Skunk'
      description: '''
        Describe Skunk
    '''

    woodChuck:
      label: 'Wood Chuck'
      description: '''
        Describe Wood Chuck
    '''

    melanisticGraySquirrel:
      label: 'Squirrel, Melanistic Gray'
      description: '''
        Describe Squirrel, Melanistic Gray
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

    organizations:
      nav: "Organizations"
      header: "Organizations"
      adler:
        header: "Adler Planetarium"
        p: """
          The Adler Planetarium - America's First Planetarium - was founded in 1930 by Chicago business leader Max Adler.
          The Adler is a recognized leader in science education, with a focus on inspiring young people to pursue careers in science, technology, engineering and math.
          Throughout 80 years, the Adler has inspired the next generation of explorers by sharing the personal stories of space exploration and America’s space heroes.
        """
      lincolnParkZoo:
        header: "Lincoln Park Zoo"
        p: """
          Lincoln Park Zoo is dedicated to connecting people with nature by providing a free, family-oriented wildlife experience in the heart of Chicago and by advancing
          the highest quality of animal care, education, science and conservation.
        """

    team:
      nav: "Team"
      header: "Team"
      science:
        magle:
          name: 'Seth Magle'
          image: 'http://placehold.it/100'
          description: '''
            Short bio
          '''

      development:
        borden:
          name: 'Kelly Borden'
          image: 'images/about/team/kelly.jpg'
          description: '''
            Kelly is an archaeologist by training but an educator by passion.
            While working at the Museum of Science and Industry and the Adler Planetarium she became an enthusiastic science educator eager to bring science to the masses.
            When not pondering the wonders of science, Kelly can often be found baking or spending time with her herd of cats – Murray, Ada, & Kepler.
          '''

        raden:
          name: 'Steve Raden'
          image: 'http://placehold.it/100'
          description: '''
            Steve bio
          '''

        lintott:
          name: 'Chris Lintott'
          image: 'images/about/team/chris.jpg'
          description: '''
            Chris Lintott leads the Zooniverse team, and is his copious spare time is a researcher at the University of Oxford specialising in galaxy formation and evolution.
            A keen popularizer of science, he is best known as co-presenter of the BBC's long running Sky at Night program. He's currently drinking a lot of sherry.
          '''

        vansingel:
          name: 'Heath Van Singel'
          image: 'http://placehold.it/100'
          description: '''
            Heath bio
          '''

        parrish:
          name: 'Michael Parrish'
          image: 'images/about/team/michael.jpg'
          description: '''
            Michael has a degree in Computer Science and has been working with The Zooniverse for the past three years as a Software Developer.
            Aside from web development; new technologies, science, AI, reptiles, and coffee tend to occupy his attention.
          '''

        whyte:
          name: 'Laura Whyte'
          image: 'http://placehold.it/100'
          description: '''
            Whyte bio
          '''
    connect:
      header: "Connect"
      action: "Get Started"
      social: """
        Follow the <a href= '#/'>Snapshot Chicago Blog</a> and <a href='#/'>@Snapshot_Chicago</a> to keep current with the latest findings
      """

  education:
    header: "Education"
    overview:
      nav: "Overview"
      header: "Can I use Snapshot Chicago in the classroom?"
      p: """
        Absolutely! Snapshot Chicago, just like all the Zooniverse projects, offers a unique opportunity to explore real scientific data, while making a contribution to cutting edge research. We would like to stress that as each image is marked by the volunteers, it really does not matter if your students don't mark all the features. That being said, the task itself is simple enough that we believe most people can take part and make a worthwhile contribution regardless of age.
      """
    resources:
      nav: "Resources"
      header: "What resources are there to support use in the classroom?"
      p: """
        Videos are a great tool to introduce students to Snapshot Chicago. Here are a couple of our favorites:
        There is also a podcast featuring one of the science team members,:
        You may also be able to find activities provided by some of the science team’s partners:
        The Zooniverse has launched ZooTeach where educators can find and share educational resources relating to Snapshot Chicago and the other Zooniverse citizen science projects. Check out resources created for Snapshot Chicago. Have any ideas for how to use the project in the classroom? Please share your lesson ideas or resources on ZooTeach!
      """
    aside:
      content: """
        <h1>Connect with Education</h1>
        <p>The Snapshot Chicago blog, as well as the partner Facebook pages below, are great places to keep up to date with the latests science results, but there is also a Zooniverse Education Blog as well as a @ZooTeach Twitter feed.</p>
      """
