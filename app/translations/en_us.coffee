module.exports =
  navigation:
    home: 'Home'
    about: 'About'
    classify: 'Classify'
    profile: 'Profile'
    discuss: 'Discuss'
    blog: 'Blog'

  home:
    heading: 'Welcome to Chicago Zoo'
    content: '''
      Hundreds of camera traps in Serengeti National Park, Tanzania,
      are providing a powerful new window into the dynamics of Africa’s most elusive wildlife species.
      We need your help to classify all the different animals caught in millions of camera trap images.
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
    pattern: 'Pattern'
    coat: 'Color'
    horns: 'Horns'
    tail: 'Tail'
    build: 'Build'

  characteristicValues:
    likeCatDog: 'Cat/dog'
    likeCowHorse: 'Cow/horse'
    likeAntelopeDeer: 'Antelope/deer'
    likeBird: 'Bird'
    likeWeasel: 'Weasel'
    likeOther: 'Other'
    patternVerticalStripe: 'Stripes'
    patternHorizontalStripe: 'Bands'
    patternSpots: 'Spots'
    patternSolid: 'Solid'
    coatTanYellow: 'Tan/yellow'
    coatRedBrown: 'Red'
    coatBrownBlack: 'Brown'
    coatWhite: 'White'
    coatGray: 'Gray'
    coatBlack: 'Black'
    hornsNone: 'None'
    hornsStraight: 'Straight'
    hornsSimpleCurve: 'Curved'
    hornsLyrate: 'Lyrate'
    hornsCurly: 'Curly'
    tailBushy: 'Bushy'
    tailSmooth: 'Smooth'
    tailTufted: 'Tufted'
    tailLong: 'Long'
    tailShort: 'Short'
    buildStocky: 'Stocky'
    buildLanky: 'Lanky'
    buildTall: 'Tall'
    buildSmall: 'Small'
    buildLowSlung: 'Low-slung'
    buildSloped: 'Sloped'

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
        <h2>Observing animals in the wild</h2>
        <p>Over the last 45 years, the <a href="http://www.cbs.umn.edu/lionresearch/" target="_blank">University of Minnesota Lion Project</a> has discovered a lot about lions – everything from why they have manes to why they live in groups. Now we’re turning our sights to understanding how an entire community of large animals interacts. We currently monitor 24 lion prides in Serengeti National Park, Tanzania, using radio-tracking.  To collect information about other species, we’ve set out a grid of 225 camera traps.  With photographs from these cameras, we’re able to study how over 30 species are distributed across the landscape – and how they interact with lions and one another.</p>

        <p style="text-align: center;"><img src="images/about/tanzania-map.png" /></p>

        <h3>Our scientific questions</h3>
        <p>Understanding how competing species coexist is a fundamental theme in ecology, with important implications for food webs, biodiversity, and the sustainability of life on Earth.  Much of our current research focuses on how carnivores coexist with carnivores, herbivores with herbivores, and the joint dynamics of predators and their prey. These insights will guide strategies for species reintroduction, conservation, and ecosystem management around the world.</p>
        <ul>
          <li>Carnivore Coexistence: Carnivores eat meat. If two carnivore species eat the same prey, one of those species can outcompete the other, preventing coexistence of both species in the same area. Even where carnivores don’t compete for the exact same prey, aggressive interactions such as scavenging from and killing each other can prevent coexistence.  Research in other parts of the world suggests that when one species avoids the other, the two species might be able to coexist, but coexistence may depend on the structure and complexity of the habitat. Our cameras reveal whether lions, leopards, cheetah and hyenas avoid each other in space or in time and the extent to which this varies across the landscape.</li>
          <li>Herbivore Coexistence: Herbivores eat plants. The Serengeti supports sixteen different species of hoofed herbivores.  Although these species don’t kill or steal food from each other, we still don’t really understand how they all manage to coexist in this system.  Herbivores that are able to feed most efficiently may also be more likely to be killed by predators, and this could explain some of the coexistence. Another possibility is that different herbivores may specialize on different habitat areas. We are using the camera traps to investigate these ideas, as well as study how the annual migration of 1.5 million wildebeest and zebra through our study area affects changes these dynamics.</li>
          <li>Predator Prey Relationships: Recent advances in ecology have suggested that there may be costs to herbivores when they avoid predators. For example, if predators hunt in areas with the best plants, herbivores may avoid those areas and only be able to eat plants that aren’t as good. We are using the camera trap data on herbivore distributions to study whether herbivores are found where the best food is or where the risk of being killed by predators is lowest.</li>
        </ul>

        <p>Images are licensed under a <a href="http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.</p>

        <p>Help us translate this project into your language! <a href="https://github.com/zooniverse/Serengeti/tree/master/public/translations">Check out our GitHub repo to find out how.</a></p>
      '''

      sidebar: '''
        <h3>The Serengeti Lion Project</h3>
        <p>The camera trapping survey is operated by the long-term <a href="http://www.cbs.umn.edu/lionresearch/" target="_blank">Serengeti Lion Project</a>.  The Lion Project has been studying African lions in Tanzania’s Serengeti National Park and the Ngorongoro Conservation Area since the 1960’s.  At any given time, our field teams keep track of about 330 lions in 24 prides in the Serengeti, and 50–60 lions in 5 prides on the floor of Ngorongoro Crater.  This daily monitoring has produced one of the most extensive datasets on any mammalian species anywhere in the world - over 5,000 lions have been included in the Serengeti and Crater studies over the past 40+ years, and genealogical data from these two populations extend over 12 generations. The daily records include information on the lions’ location, group size, diet, food intake, health and reproduction.  You can find out more on <a href="http://www.cbs.umn.edu/lionresearch/" target="_blank">the Lion Project website</a>.</p>
        <h3>What we do</h3>
        <p>We check on the camera traps in the course of daily lion monitoring.  We change batteries, exchange the SD cards, and cut tall grass in front of the camera so that grass waving in the wind doesn’t accidentally trigger the sensor.  225 cameras are a lot of work!  When things run smoothly, a camera can last about two months before needing maintenance.  But that’s not always the case – sometimes we return to a camera only to find it chewed on by hyenas or torn down by elephants, waterlogged from a heavy rain or infested by ants. </p>
        <h3>How the cameras work</h3>
        <p>The cameras use passive infrared sensors that are triggered when an object warmer than the ambient temperature moves in front of the sensor.  This is usually an animal…but tall sunlit grass can also trigger the camera when it blows in the wind.  We currently use the Scoutguard 565 and DLC Covert Reveal models – these are incandescent flash cameras (with a white flash).  Some people worry that incandescent flashes startle the animals, but in our study area the same individuals often come back to the same camera site night after night!</p>
        <h3>Where we live</h3>
        <p>When in Serengeti, we live in the remote Serengeti Wildlife Research Center—a small community of houses and research offices near the park headquarters in the middle of the park.  Our house is modest, but the outdoor toilet provides some of our more exciting run-ins with nocturnal wildlife.  In recent years donations from visitors and supporters have allowed us to install a solar power system that gives us electricity at night and supports the most exciting recent addition to our house – a refrigerator!  </p>
      '''

    organizations:
      umn:
        name: 'University of Minnesota'
        url: "http://www.cbs.umn.edu/eeb"
        image: 'images/about/organizations/umn.jpg'
        description: '''
          The members of Snapshot Serengeti’s science team are ecologists at the University of Minnesota in the Department of Ecology, Evolution, and Behavior.
          The University of Minnesota, founded in the belief that all people are enriched by understanding,
          is dedicated to the advancement of learning and the search for truth;
          to the sharing of this knowledge through education for a diverse community;
          and to the application of this knowledge to benefit the people of the state, the nation, and the world.
        '''

      mnZoo:
        name: 'Minnesota Zoo'
        url: 'http://www.mnzoo.com/'
        image: 'images/about/organizations/mn-zoo.jpg'
        description: '''
          The Minnesota Zoo has provided partial funding for the camera trap survey through a Ulysses S. Seal Conservation Grant
          and has helped recruit volunteers who have assisted the development of Snapshot Serengeti.
          The Minnesota Zoo connects people, animals, and the natural world.
          It is dedicated to inspiring guests to act on behalf of wildlife and wild lands.
          To accomplish this, the zoo provides award-winning recreational, educational, and conservation programs, locally, nationally, and internationally.
        '''

      nsf:
        name: 'National Science Foundation'
        url: 'http://www.nsf.gov/'
        image: 'images/about/organizations/nsf.jpg'
        description: '''
          The National Science Foundation (NSF) provides ongoing funding support for the long-term Serengeti Lion Project (grant DEB‐1020479)
          that provides the underlying infrastructure for the camera trapping survey.
          The mission of NSF is to promote the progress of science; to advance the national health, prosperity, and welfare; and to secure the national defense.
          NSF envisions a nation that capitalizes on new concepts in science and engineering and provides global leadership in advancing research and education.
        '''

      gpsa:
        name: 'The Global Programs and Strategy Alliance'
        url: 'http://global.umn.edu/'
        image: 'images/about/organizations/umn.jpg'
        description: '''
          The Global Programs and Strategy Alliance provided the funding for the first 50 cameras of the camera trap survey, which were established in June 2010.
          The mission of the Global Programs and Strategy Alliance is to be the driving force for the University of Minnesota in globalizing teaching, learning, research, and engagement.
          The office sponsors many programs and strategies that promote and support international activities by students, faculty, and staff across the University system.
        '''

      umnGradSChool:
        name: 'University of Minnesota Graduate School'
        url: 'http://www.grad.umn.edu/'
        image: 'images/about/organizations/umn.jpg'
        description: '''
          The University of Minnesota Graduate School provided funding for the initial camera trap survey in 2010 through a Thesis Research Grant.
          As one of the world's most comprehensive public research universities, the University of Minnesota offers outstanding graduate and professional education
          across a range of disciplines—agriculture, engineering, humanities, sciences, and social sciences.
        '''

      explorersClub:
        name: 'Explorers Club'
        url: 'http://www.explorers.org/'
        image: 'images/about/organizations/explorers-club.jpg'
        description: '''
          The Explorers Club provided funding for the initial camera trap survey through its Exploration Fund.
          The Explorers Club is an international multidisciplinary professional society dedicated to the advancement of field research and the ideal that it is vital to preserve the instinct to explore.
          The Explorers Club promotes the scientific exploration of land, sea, air, and space by supporting research and education in the physical, natural and biological sciences.
        '''

      asm:
        name: 'American Society of Mammalogists'
        url: 'http://www.mammalsociety.org/'
        image: 'images/about/organizations/asm.jpg'
        description: '''
          The American Society of Mammalogists provided funding for the initial camera trap survey through its Grants-in-aid of Research program.
          ASM was established in 1919 for the purpose of promoting interest in the study of mammals.
          The ASM is currently composed of over 4,500 members, many of whom are professional scientists.
          Members of the Society have always had a strong interest in the public good,
          and this is reflected in their involvement in providing information for public policy, resources management, conservation, and education.
        '''

      bellMuseum:
        name: 'James Ford Bell Museum of Natural History'
        url: 'http://www.bellmuseum.org/'
        image: 'images/about/organizations/bell-museum.jpg'
        description: '''
          The James Ford Bell Museum of Natural History provided funding for the initial 2010 camera trap survey
          through a James W. Wilkie Fellowship for Natural History. The Bell Museum was established by Minnesota legislative mandate in 1872
          to collect, preserve, skillfully prepare, display, and interpret our state's diverse animal and plant life
          for scholarly research and teaching and for public appreciation, enrichment, and enjoyment.
          Collecting, researching, and teaching serve to inform exhibits, exhibitions, and public outreach.
        '''

      umnCbs:
        name: 'University of Minnesota College of Biological Sciences (CBS)'
        url: 'https://www.cbs.umn.edu/'
        image: 'images/about/organizations/umn.jpg'
        description: '''
          The College of Biological Sciences provided funding for 2009 pilot work that led to the camera survey through a Rothman Fellowship.
          CBS promotes research that will improve human welfare and global conditions by advancing the knowledge of the mechanisms of life.
          With its exclusive focus on biology, CBS seeks to prepare today’s students to create the biology of tomorrow.
        '''

      trailCamPro:
        name: 'TrailCamPro.com'
        url: 'http://www.trailcampro.com/'
        image: 'images/about/organizations/trailcampro.jpg'
        description: '''
          TrailCamPro has provided affordable camera traps for the survey and has shared invaluable personal expertise and advice on using them,
          which has had a large impact on the survey’s success.
          TrailCamPro specializes in selling trail cameras, camera traps, and security cameras.
        '''

      zgf:
        name: 'Frankfurt Zoological Society'
        url: 'http://www.zgf.de/?id=14&language=en'
        image: 'images/about/organizations/fzs.jpg'
        description: '''
          The Frankfurt Zoological Society (FZS) provides logistical support for the field team in the Serengeti.
          FZS is a non-profit, internationally operating, conservation organization based in Frankfurt/Main.
          The Society is committed to conserving biological diversity.
          FZS is therefore faced with one of the greatest challenges of the 21st century: the preservation of the world’s natural environments.
        '''

      tawiri:
        name: 'Tanzania Wildlife Research Institute'
        url: 'http://www.tawiri.or.tz/'
        image: 'images/about/organizations/tawiri.jpg'
        description: '''
          Tanzania Wildlife Research Institute (TAWIRI) provides permission and facilities for the camera trapping project.
          TAWIRI is a parastatal organization under the Ministry of Natural Resources and Tourism responsible for conducting and coordinating wildlife research in the United Republic Tanzania.
          TAWIRI’s overall objective is providing scientific information and advice to the Government and wildlife management authorities on the sustainable conservation of wildlife and natural resources.
        '''

      tanzaniaParks:
        name: 'Tanzania National Parks'
        url: 'http://www.tanzaniaparks.com/'
        image: 'images/about/organizations/tanapa.jpg'
        description: '''
          Tanzania National Parks (TANAPA) provides permission and facilities for the camera trapping project.
          The mission of TANAPA is to manage and regulate National Parks to preserve the country’s heritage, encompassing natural and cultural resources.
          TANAPA sustainably conserves and manages park resources and their aesthetic value, for the benefit of present and future generations of mankind, as well as efficiently provide high-class tourism products and services.
        '''

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
        swanson:
          name: 'Ali Swanson'
          image: 'images/about/team/ali.jpg'
          description: '''
            Ali spent several years chasing mammals, fish, and birds around North America (scientifically, of course) before beginning her Ph.D. at the University of Minnesota.
            She initiated the camera trapping survey in 2010 for her dissertation research on how Serengeti carnivores coexist.
            She now spends about half the year in Serengeti devising ways to foil the relentless efforts of hyenas and elephants to munch and destroy the cameras.
          '''

        kosmala:
          name: 'Margaret Kosmala'
          image: 'images/about/team/margaret.jpg'
          description: '''
            Margaret is an ecologist finishing her Ph.D. at the University of Minnesota.
            She explores the complex interactions among species and is especially interested in understanding how humans impact species communities.
            She is currently a fellow at the National Museum of Natural History in Washington, D.C.
            where she is trying to figure out what might happen to insect communities as the planet warms.
          '''

        packer:
          name: 'Craig Packer'
          image: 'images/about/team/craig.jpg'
          description: '''
            Craig Packer is a Distinguished McKnight University Professor at the University of Minnesota
            and a research scientist at the Tanzanian Wildlife Research Institute.
            He has worked in Tanzania for 40 years and has two enduring passions: the Serengeti and photography.
            But he no longer carries his own camera, preferring the dramatic and exciting photographs captured by Serengeti Snapshot.
          '''

        rosengren:
          name: 'Daniel Rosengren'
          image: 'images/about/team/daniel.jpg'
          description: '''
            Daniel got his master’s degree in Sweden studying vole population dynamics.
            After cycling from the Northern Cape of Europe to the southernmost point in Africa, Daniel left his bike for a Lion Project Land Rover.
            He is now the senior Serengeti field assistant and is rarely seen without his camera in hand.
          '''

        mwampeta:
          name: 'Stanslaus Mwampeta'
          image: 'images/about/team/stanslaus.jpg'
          description: '''
            Stan joined the Lion Project after graduating from the University of Dar es Salaam, Tanzania.
            When he’s not watching lions, he’s making the rounds on the camera trap survey to ensure that Snapshot Serengeti never runs out of footage.
          '''

        finlay:
          name: 'Fred Finlay'
          image: 'images/about/team/fred.jpg'
          description: '''
            Fred is an Associate Professor at University of Minnesota’s College of Education and Human Development.
            He’s interested in how social and cultural context influence how people learn about science, and conducts much of his research in Thailand.
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

        carstensen:
          name: 'Brian Carstensen'
          image: 'images/about/team/brian.jpg'
          description: '''
            Brian is a web developer working on the Zooniverse family of projects at the Adler Planearium.
            Brian has a degree in graphic design from Columbia College in Chicago, and worked in that field for a number of years before finding a niche in web development.
          '''

        lintott:
          name: 'Chris Lintott'
          image: 'images/about/team/chris.jpg'
          description: '''
            Chris Lintott leads the Zooniverse team, and is his copious spare time is a researcher at the University of Oxford specialising in galaxy formation and evolution.
            A keen popularizer of science, he is best known as co-presenter of the BBC's long running Sky at Night program. He's currently drinking a lot of sherry.
          '''

        miller:
          name: 'David Miller'
          image: 'images/about/team/david.jpg'
          description: '''
            David is passionate about tellings stories through clear, clean, and effective design.
            Before joining the Zooniverse team as Visual Designer, David worked for the Raindance Film Festival, the News 21 Initiative's Apart From War, and as a freelance designer for his small business, Miller Visual.
            David is a graduate of the S.I. Newhouse School of Public Communications at Syracuse University.
          '''

        parrish:
          name: 'Michael Parrish'
          image: 'images/about/team/michael.jpg'
          description: '''
            Michael has a degree in Computer Science and has been working with The Zooniverse for the past three years as a Software Developer.
            Aside from web development; new technologies, science, AI, reptiles, and coffee tend to occupy his attention.
          '''

        smith:
          name: 'Arfon Smith'
          image: 'images/about/team/arfon.jpg'
          description: '''
            Arfon is responsible for leading the development of the Zooniverse, a platform for online citizen science.
            In August of 2011 he took up the position of Director of Citizen Science at the Adler Planetarium
            where he continues to lead the software and infrastructure development for the Zooniverse.
            He studied Chemistry at the University of Sheffield and completed his PhD in Astrochemistry at The University of Nottingham in 2006.
          '''
