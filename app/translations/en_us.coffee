module.exports =
  navigation:
    home: 'Home'
    about: 'About'
    classify: 'Classify'
    profile: 'Profile'
    discuss: 'Discuss'
    blog: 'Blog'

  home:
    heading: 'Welcome to Snapshot Chicago'
    content: '''
      lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed sagittis est,
      sit amet pellentesque enim. Mauris ut dictum est, ut consectetur arcu. Fusce convallis odio i
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
    action: 'Start classifying'
    currentStatus: '<span class="classification-count">0</span> classifications by <span class="user-count">0</span> volunteers'

  classify:
    deleteAnnotation: 'Delete'
    notSignedIn: 'You\'re not signed in!'
    favorite: 'Favorite'
    unfavorite: 'Unfavorite'
    play: 'View series'
    pause: 'Stop'
    satellite: 'Satellite view'
    nothingLabel: 'Nothing here'
    nextSubjectButton: 'Finish'
    share: 'Share'
    tweet: 'Tweet'
    pin: 'Pin it'
    discuss: 'Discuss'
    next: 'Next capture'

    nothingToShow: 'There\'s nothing to show with these filters.'
    clearFilters: 'Clear filters'

    oftenConfused: 'Often confused with:'

    count: 'How many'

    behavior: 'Behavior'
    behaviors:
      resting: 'Resting'
      standing: 'Standing'
      moving: 'Moving'
      eating: 'Eating'
      interacting: 'Interacting'

    babies: 'Young present'
    rain: 'Raining'

    cancel: 'Cancel'
    identify: 'Identify'

    tutorial:
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

    splits:
      social: 'Good job! You and ### other Zooniverse volunteers have contributed to Snapshot Serengeti.'
      task: 'Good job! The image you successfully classified was taken by one of over 200 motion triggered cameras set-up around Serengeti National Park.'
      science: 'Good job! Our science team needs your classifications to understand how different animals coexist in the Serengeti.'

  animals:
    americanCoot:
      label: 'American Coot'
      description: '''
        Describe American Coot
    '''
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
    birdCannotID:
      label: 'Bird Cannot'
      description: '''
        Describe Bird Cannot
    '''
    canadaGoose:
      label: 'Canada Goose'
      description: '''
        Describe Canada Goose
    '''
    car:
      label: 'Car'
      description: '''
        Describe Car
    '''
    cardinal:
      label: 'Cardinal'
      description: '''
        Describe Cardinal
    '''
    chickadee:
      label: 'Chickadee'
      description: '''
        Describe Chickadee
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
    crow:
      label: 'Crow'
      description: '''
        Describe Crow
    '''
    deer:
      label: 'Deer'
      description: '''
        Describe Deer
    '''
    domCat:
      label: 'Dom Cat'
      description: '''
        Describe Dom Cat
    '''
    domDog:
      label: 'Dom Dog'
      description: '''
        Describe Dom Dog
    '''
    empty:
      label: 'Empty'
      description: '''
        Describe Empty
    '''
    flyingSquirrel:
      label: 'Flying Squirrel'
      description: '''
        Describe Flying Squirrel
    '''
    foxSquirrel:
      label: 'Fox Squirrel'
      description: '''
        Describe Fox Squirrel
    '''
    grackle:
      label: 'Grackle'
      description: '''
        Describe Grackle
    '''
    grayFox:
      label: 'Gray Fox'
      description: '''
        Describe Gray Fox
    '''
    graySquirrel:
      label: 'Gray Squirrel'
      description: '''
        Describe Gray Squirrel
    '''
    greatBlueHeron:
      label: 'Great Blue Heron'
      description: '''
        Describe Great Blue Heron
    '''
    horse:
      label: 'Horse'
      description: '''
        Describe Horse
    '''
    houseSparrow:
      label: 'House Sparrow'
      description: '''
        Describe House Sparrow
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
    mallard:
      label: 'Mallard'
      description: '''
        Describe Mallard
    '''
    mink:
      label: 'Mink'
      description: '''
        Describe Mink
    '''
    mourningDove:
      label: 'Mourning Dove'
      description: '''
        Describe Mourning Dove
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
    northernFlicker:
      label: 'Northern Flicker'
      description: '''
        Describe Northern Flicker
    '''
    opossum:
      label: 'Opossum'
      description: '''
        Describe Opossum
    '''
    otherVehicle:
      label: 'Other Vehicle'
      description: '''
        Describe Other Vehicle
    '''
    pigeon:
      label: 'Pigeon'
      description: '''
        Describe Pigeon
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
      label: 'Red Fox'
      description: '''
        Describe Red Fox
    '''
    robin:
      label: 'Robin'
      description: '''
        Describe Robin
    '''
    skunk:
      label: 'Skunk'
      description: '''
        Describe Skunk
    '''
    squirrelCannotID:
      label: 'Squirrel Cannot'
      description: '''
        Describe Squirrel Cannot
    '''
    starling:
      label: 'Starling'
      description: '''
        Describe Starling
    '''
    unknown:
      label: 'Unknown'
      description: '''
        Describe Unknown
    '''
    woodDuck:
      label: 'Wood Duck'
      description: '''
        Describe Wood Duck
    '''
    woodChuck:
      label: 'Wood Chuck'
      description: '''
        Describe Wood Chuck
    '''
    melanisticGraySquirrel:
      label: 'Melanistic Gray Squirrel'
      description: '''
        Describe Melanistic Gray Squirrel
    '''

  characteristics:
    like: 'Looks like'
    coat: 'Coat'
    horns: 'Horns'
    tail: 'Tail'
    build: 'Build'
    manMade: "Man Made"

  characteristicValues:
    likeCatDog: 'Cat Dog'
    likeBird: 'Bird'
    likeWaterBird: 'Water Bird'
    likeWeasel: 'Weasel'
    likeRodent: 'Rodent'
    likeOther: 'Other'
    coatTanYellow: 'Tan Yellow'
    coatRedBrown: 'Red Brown'
    coatBrownBlack: 'Brown Black'
    coatGray: 'Gray'
    coatGrayBlack: 'Gray Black'
    coatBlack: 'Black'
    coatOther: 'Other'
    coatMottled: 'Mottled'
    coatSolid: 'Solid'
    coatOrTailStriped: 'Or Tail Striped'
    hornsNone: 'None'
    tailBushy: 'Bushy'
    tailSmooth: 'Smooth'
    tailFlat: 'Flat'
    tailLong: 'Long'
    buildStocky: 'Stocky'
    buildLanky: 'Lanky'
    buildSmall: 'Small'
    buildLowSlung: 'Low Slung'
    manMade: 'Man Made'

  profile:
    favorites: 'Favorites'
    recents: 'Recents'
    noFavorites: 'You have no favorites!'
    noRecents: 'You have no recent classifications!'
    showing: 'Showing'
    loadMore: 'Load more'

  about:
    sections:
      information: 'Information'
      organizations: 'Organizations'
      teams: 'Teams'
      scienceTeam: 'Science team'
      developmentTeam: 'Development team'

    information:
      main: '''
        <h2>Mainbar content</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed sagittis est, sit amet pellentesque enim. Mauris ut dictum est, ut consectetur arcu. Fusce convallis odio in feugiat malesuada. Nunc pharetra non massa a sagittis. Phasellus faucibus tempor lectus, malesuada pretium nibh tincidunt vel. Vestibulum eu nibh scelerisque, sagittis nisl sed, adipiscing ligula. Integer sagittis dui eros, eget vulputate neque feugiat tempor. Fusce pellentesque, diam ac sagittis bibendum, turpis leo vehicula erat, et condimentum orci nibh vitae est. Aliquam sit amet mi est. Suspendisse mattis enim non lectus auctor ullamcorper. Integer euismod pulvinar bibendum.</p>

        <p>Cras ut libero vel sem iaculis fringilla non et mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam leo urna, commodo et eleifend id, vehicula eu metus. Vivamus aliquet placerat justo et adipiscing. Duis eget elit ac lorem fringilla tempus. Vivamus ut venenatis nisi. Aliquam at nunc mattis, aliquam neque nec, tempus turpis.</p>

        <p>Nullam rutrum in purus quis porttitor. Nullam congue mi faucibus lorem egestas, a tempus est bibendum. Aenean elementum ligula sapien, eget tristique sem elementum eget. Vivamus urna odio, convallis ac faucibus at, adipiscing ac est. Vivamus mollis venenatis nisi, quis dictum lectus tempor et. Nulla fringilla aliquam volutpat. Morbi dignissim quam tristique ligula laoreet hendrerit. Proin ac cursus nulla. Sed molestie at odio vitae rhoncus. In hac habitasse platea dictumst.</p>


      '''

      sidebar: '''
        <h3>Sidebar content</h3>
      '''

    organizations:
      oxford:
        name: 'University of Oxford'
        url: 'http://www.ox.ac.uk/'
        image: 'images/about/organizations/oxford.png'
        description: '''
          The University of Oxford is the oldest in the English-speaking world having been founded in the 11th or 12th centuries.
          Today, it combines research in the humanities with major effort in the natural sciences and medicine.
          Citizen science is supported by the <a href="http://www.physics.ox.ac.uk/" target="_blank">Department of Physics</a>,
          the <a href="http://www.mpls.ox.ac.uk/" target="_blank">Division of Mathematics, Physical and Life Sciences</a>,
          and the <a href="http://www.oxfordmartin.ox.ac.uk/" target="_blank">Oxford Martin Schools</a>.
        '''

      adler:
        name: 'Adler Planetarium'
        url: 'http://www.adlerplanetarium.org/'
        image: 'images/about/organizations/adler.jpg'
        description: '''
          The Adler Planetarium - America's First Planetarium - was founded in 1930 by Chicago business leader Max Adler.
          The Adler is a recognized leader in science education, with a focus on inspiring young people to pursue careers in science, technology, engineering and math.
          Throughout 80 years, the Adler has inspired the next generation of explorers by sharing the personal stories of space exploration and America’s space heroes.
        '''

    teams:
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
