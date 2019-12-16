/*simplifiedRuleFollowingAdventure.ch
fulfills requirements and nothing more */
string_t input ;
void roadMap() {
    printf("Do you wish to see a roadmap?(y/n)\n\n>");
    scanf("%s", &input) ;
    while (input != "y" && input !="n"){
        printf(">");
        scanf("%s", &input);
    }
    if (input == "y") {
        printf("          _____________________Tavern_________________\n");
        printf("          |                      |                    |\n");
        printf("       Bar Fight           Make Tables_____            Leave\n");
        printf("          |                |        |      |              |     \n");
        printf("        Prison            Yes       No     Other_         Square(meet dog)___\n") ;
        printf("     _____|_____           |        |            |        |        |        |\n") ;
        printf("    |     |     |      Carpenter's  Barkeep's   Drunk     Back    East     West\n") ;
        printf("  Sleep  Talk  Pick     Apprentice  Apprentice  Rampage  Inside    |        |\n");
        printf("    |     |    Lock                                       |     Dysentery   Leave City\n") ;
        printf("Leave 3  Meet     |                                     Dinner\n");
        printf("months (NAME)at  Death by\n") ;
        printf("later   release  fall\n\n\n") ;
        sleep(15);
    }
}
//introduction

void exposition() {
    printf("\"Honor is dead.\"\n") ;
    sleep(4) ;
    printf("\"Ever since the king died, these lands have been lawless.\n") ;
    sleep(3) ;
    printf("Ruffians take what they will, politicians tax their citizens as they wish, and the common man suffers.\n") ;
    sleep(4) ;
    printf("I think that if there ever was a God, he abandoned us long ago.\"\n\n") ;
    sleep(2) ;
    printf("\n  Welcome\n") ;
    sleep(2);
    printf("    to Lumella\n") ;
    sleep(5) ;
}

//first decision options
void firstEncounter() {
    printf("The man siting across from you in the tavern continues to sip his ale.\n") ;
    sleep(2) ;
    printf("The establishment has seen better days, the tables chipped and off square,\nthe wooden floor creaking under every step.\n\n") ;
    sleep(2) ;
    printf("~~ Options ~~\n\n") ;
    printf(">Start a bar fight(a)\n") ;
    printf(">Talk to the owner about fixing up the joint (b)\n") ;
    printf(">Get a breath of fresh air(c)\n\n>") ;
    scanf("%s", &input) ;
    while (input != "a" && input != "b" && input !="c") {
        printf("I don't recognize that command.\n>") ;
        scanf("%s", &input) ;
    }
}
int randomBoye ;
// first junction A
void pathOne() {
    sleep(1) ;
    randomBoye = randint(5,15) ;
    printf("You look around and see that there are about %d other people in the tavern.\n", randomBoye) ;
    printf("You walk over to a middle-aged man sitting at the bar and slam his face into the countertop.\n") ;
    sleep(3) ;
    printf("Eyes all around the room turn towards to commotion.\n") ;
    printf("The man sitting next to him throws his flagon at you, dousing you in ale.\n") ;
    sleep(3) ;
    printf("A guard who was sitting by the door smoking a pipe gets up, rushes over, and soon has you pinned\nto the floor with his sword to your throat.\n\n") ;
    sleep(6) ;
    printf("Later that evening, you look up at your surroundings in the city jail.\n") ;
    sleep(3) ;
    printf("It's one large stone-walled room separated into cells by iron bars, straw on the floor.\nA few other shapes huddle on the cold floor, occaionally snoring.\n\n") ;
    sleep(3) ;
    printf("~~ Options ~~\n>Try to go to sleep (a)\n>Talk to one of the inmates (b)\n>Try to pick the cell's lock(c)\n\n>") ;
    scanf("%s", &input) ;
     while (input != "a" && input != "b" && input !="c") {
        printf("I don't recognize that command.\n>") ;
        scanf("%s", &input) ;
    }
}

int numberOfTabeles = randint(2,6), chairsPerTable = randint(2,4) ;
// first junction B
void pathTwo() {
    printf("You walk up to the man standing behind the bar causing him to look up from polishing a shot glass.\n") ;
    sleep(2) ;
    printf("\"Are you looking to buy some new tables or chairs? I'd be willing to make some up for you on commission.\"\n") ;
    sleep(2) ;
    printf("The bartender considers this for a moment, then replies, \"Sure, why not. Business has been good recently; I think I can afford it.\"\n") ;
    sleep(2) ;
    printf("\"How does %d tables and %d chairs per table sound to you?\"\n", numberOfTabeles, chairsPerTable) ;
    sleep(2) ;
    printf(" ~~ Do you accept the task \"Carpentry\"? ~~\n(y/n)(o)\n\n>") ;
    scanf("%s", &input) ;
    while (input != "y" && input !="n" && input != "o") {
        printf(">") ;
        scanf("%s", &input) ;
    }
}
//first junction C
string_t dogsName ;
void pathThree() {
    sleep(2) ;
    printf("Getting up, you walk over to the thick oaken door and swing it open,\nletting a cold draft into the hearth-warmed tavern.\n") ;
    sleep(2) ;
    printf("A few of the patrons begin to complain, so you quickly step out into the night.\n") ;
    sleep(2) ;
    printf("The dog you left waiting outside rushes over to you, tail wagging back and forth.\n") ;
    printf("~~ What shall you name your dog? ~~\n\n>") ;
    scanf("%s", &dogsName) ;
    sleep(4) ;
    printf("Outside, you find yourself standing in a large square; paved in cobblestones,\nand lit by dozens of flickering lanterns.\n") ;
    sleep(2) ;
    printf("Many other shops, taverns, and pubs line the square,\nand smoke rises from a hundred chimneys in the distance\n\n") ;
    sleep(2) ;
    printf("~~ Options ~~\n\n") ;
    printf(">Re-enter the tavern(a)\n>Exit the square on the east side(b)\n>Exit the square on the west side(c)\n\n>") ;
    scanf("%s", &input) ;
     while (input != "a" && input != "b" && input !="c") {
        printf("I don't recognize that command.\n>") ;
        scanf("%s", &input) ;
    }
}
//first junction D
void startupScreen() {
    printf("Lumella\nA game by Alex Bernards 2019\n\n") ;
    printf("Begin? (y)\n\n>") ;
    scanf("%s", &input) ;
    while (input != "y") {
        printf(">") ;
        scanf("%s", &input) ;
    }
}

// second junction A1
void pathOneA() {
    printf("The cold floor isn't terribly comfortable, the straw is slightly better\nif you can ignore the stench.\n") ;
    sleep(3) ;
    printf("You awake in the morning and see a bored looking guard\n") ;
    printf("dropping bowls of gruel at the grates of each cell.\n") ;
    sleep(2) ;
    printf("\"How long am I in for?\" you ask him when he gets to your cell.\n") ;
    sleep(2) ;
    printf("\"Minimum sentence for disorderly conduct is 3 months time.\" he says.\n") ;
    sleep(4) ;
    printf("3 months later you are called up to the front office, given what few possesions were\ntaken from you, and released into the city.\n\n") ;
    sleep(2) ;
    printf(" ~~ END OF LINE ~~\n\n") ;
}
string_t kidsName ;
\
// second junction A2
void pathOneB() {
    sleep(2) ;
    printf("    \"So what's your story?\" you ask of the youth sitting in the cage next to yours.\n") ;
    sleep(4) ;
    printf("\"I live out on the streets,\" he says after a moment's hesitation.\n") ;
    sleep(3) ;
    printf("\"I usually eat off of the scraps from the pubs, but I got caught by a guard and charged\nwith \"disorderly conduct\".\"\n") ;
    sleep(4) ;
    printf("\"That was a month ago.\n") ;
    sleep(4);
    printf("What about you?\"\n\n") ;
    sleep(2) ;
    printf("    \"I tried to start a bar fight. I was bored and the guy was looking at me funny.\"\n") ;
    sleep(2);
    printf("The boy chuckles and shakes his head. \"You're crazy, man. Just plain crazy,\"\n") ;
    sleep(3);
    printf("    \"You live on the street you said?\"\n") ;
    sleep(2) ;
    printf("He nods.\n") ;
    printf("    \"You got a name?\"\n") ;
    sleep(2) ;
    printf("\"Never had one. No one there to give me one.\"\n") ;
    sleep(2);
    printf("    \"What do I call you then?\"\n") ;
    sleep(1) ;
    printf("He shrugs.\n") ;
    printf("~~ What do you name the boy? ~~\n\n>") ;
    scanf("%s", &kidsName) ;
    printf("    \"How about %s?\"\n", kidsName) ;
    sleep(2);
    printf("He shrugs again.\n") ;
    sleep(2) ;
    printf("    \"I know a family on a farm a few miles out of town\nthat might be willing to take you in,\"\n") ;
    sleep(3) ;
    printf("\"Like, permanently?\"\n") ;
    sleep(2);
    printf("    \"I suppose as long as you behave yourself and make yourself useful,\"\n\n") ;
    sleep(4);
    printf("When you are released from prison, %s is waiting for you in the square.\n", kidsName) ;
    sleep(2);
    printf("Together, you make your way to the farm of the Oaks family.\n") ;
    printf("\n~~ END OF LINE ~~\n\n") ;
}
void pathOneC() {
    sleep(2);
    printf("Pulling the two small lockpicks you had concealed in an inner pocket of your jerkin, you examine the lock.\n") ;
    sleep(2) ;
    printf("It appears to be cheaply made, simple enough to pick.\n") ;
    sleep(2) ;
    printf("You slide the picks into the keyhole and begin to work them around, feeling the shape of the pins.") ;
    sleep(2) ;
    printf("A few of the inmates in cells near to you begin to take notice of your efforts.\n") ;
    sleep(4) ;
    printf("The lock catches and the cylinder turns in its slot. The door swings open.\n") ;
    sleep(2);
    printf("Eyes all around the prison turn in your direction as you step out into the main hallway.\n") ;
    sleep(2) ;
    printf("You see a door at the end of the building, with daylight showing through the small viewhole.\nTrying it, you find it unlocked.\n") ;
    sleep(2) ;
    printf("Outside, a group of soldiers drilling in formation start when the door opens.\nYou all stand frozen for a moment, then you start sprinting for gate just behind the soldiers.\n") ;
    sleep(2) ;
    printf("Shouts follow you as you as you exit the compound, a few of the soldiers managing to keep pace with you.\nSeeing a building under construction, you veer towards it, and begin to climb up the scaffolding.\n") ;
    sleep(2) ;
    printf("A hand grabs your foot as you near the top of the 3 story tower. You shake it off, and scramble over the lip.\nAnother tower stands about 10 feet away, and a few feet down. Taking a running start, you fling yourself off the edge.\n");
    sleep(4) ;
    printf("You hit the wall a few inches below the handhold you were aiming for and fall to the ground 20 feet below, lifeless.\n") ;
    printf("\n~~ END OF LINE ~~\n\n");
}
// first option for first choice in First Encounter
//option 1 for result of option 2(prev)
void pathTwoY() {
    sleep(2);
    printf(" \"There's a carpentry workshop down on the other side of the square,\" he says.\n") ;
    sleep(2) ;
    printf("\"You can make up the tables and chairs for me there.\"\n") ;
    sleep(2);
    printf("You walk out of the tavern and around the square, until you come to a short building with a drawing of a\nsaw pasted over the door.") ;
    sleep(2);
    printf("You labour for a few hours cutting posts to lenth, nailing segments together,\nand chatting with the old carpenter who runs the shop.\n") ;
    sleep(2);
    printf("You finish the bartender's order and carry over the tables and chairs to the tavern.\n") ;
    sleep(2);
    printf("The old carpenter enjoys your company so much that he takes you on as an apprentice.\n") ;
    sleep(4);
    printf("Years later, the old man dies, and leaves you in charge of the goings on of the business.\n");
    printf("\n~~ END OF LINE ~~\n\n") ;
}

//option 2 for result of option 2(prev)
void pathTwoN() {
    sleep(2);
    printf("\"Well, how about working here?\" he asks you. \"I think I'm starting to get too old for this,\"\n") ;
    sleep(2);
    printf("You mull it over for a moment in your mind, then accept his offer.\n") ;
    sleep(2);
    printf("He brings you into the back room of the tavern to show you where you will be spending the majority of your time\nfor the conceivable future.\n") ;
    sleep(2);
    printf("The bartender teaches you how to make the few cocktails served at the bar,\nand how to brew the ales and other spirits on tap.\n") ;
    printf("\n~~ END OF LINE ~~\n\n") ;
}
//option 3 for result of option 2(prev)
void pathTwoO() {
    printf("Deciding to go against all expected outcomes of the situation, you grab a bottle of whiskey off the shelf under the bar,\nand sprint out the door, popping the cork and chugging the contents as you go.\n") ;
    sleep(2);
    printf("Hanging a left in the square, you run down the avenue. More houses line the street, with a fountain looming in\nthe distance. You pick a door at random, throw it open,\nand smash the half-empty whiskey bottle on first the head of a man eating supper in his kitchen, then your own.\n") ;
    sleep(2);
    printf("The city guard finds you shortly thereafter, and you are hanged in the morning.\n") ;
    printf("\n~~ END OF LINE ~~\n\n") ;
}
// option 1 for result of option 3 (prev)
void pathThreeA() {
    printf("Inside the tavern, the hearth crackles cheerfully and the air hums with low conversations.\n") ;
    sleep(2);
    printf("You order a bowl of soup and a slice of bread and eat in silence across from the man you were talking to earlier, %s occasionally whining at your feet.\n", dogsName) ;
    sleep(2);
    printf("Feeling thirsty after your meal, you go over to the bar and have a few drinks.\nYou enjoy the company of the other patrons in the tavern.\n") ;
    sleep(2);
    printf("You eventually retire to your room above the dining room, having thoroughly enjoyed yourself that evening.\n\n") ;
    printf("~~ END OF LINE ~~\n\n") ;
}
//option 2 for result of option 3 (prev)
void pathThreeB() {
    printf("You take the right hand exit out of the square, %s close behind you.\n", dogsName) ;
    sleep(2) ;
    printf("A few other individuals are roaming the streets as you do.\n") ;
    sleep(2);
    printf("You follow the street for an hour, until the sun eventually comes up over the horizon in front of you.\n") ;
    sleep(2);
    printf("A well sits in the center of a small roundabout up ahead.\nFeeling thirsty, you plunge the bucket hanging from a chain down into the depths, haul it back up, and drink deeply.\n") ;
    sleep(3);
    printf("Unfortunately, the water was contaminated with dysentery, which you afflicted with for a week before you finally pass.\n");
    printf("\n~~ END OF LINE ~~\n\n") ;
}
//option 3 for result of option 3 (prev)
int goldCount = randint(5,9), silverCount = randint(10,16) ;
void pathThreeC() {
    printf("As you walk along the road that led out of the left-hand exit from the square, you notice a man lying face-down in the gutter.\n") ;
    sleep(2);
    printf("Approaching cautiously, you can see a spilled hip flask, containing a strong spirit from the smell of it.\n") ;
    sleep(2);
    printf("You take the man's purse off his belt, and discover it's filled with %d gold pieces and %d silver.\n", goldCount, silverCount) ;
    sleep(2) ;
    printf("You go back to the square and buy a backpack, food supplies, and a hunting bow.\n") ;
    sleep(2);
    printf("You follow the westward avenue out of the city, stopping to make camp once it disappears over the horizon.\nYou start a fire and sit by it with %s.\n", dogsName) ;
    printf("\n~~ END OF LINE ~~\n\n") ;
    exit(1);
}
int choice ;
int main() {
    startupScreen() ;

    exposition() ;
    roadMap();
    firstEncounter() ;
    if (input == "a") {
        choice = 1 ;
    }
    if (input == "b") {
        choice = 2;
    }
    if (input == "c") {
        choice = 3 ;
    }
    
    if (input == "a" && choice == 1) {
        pathOne() ;
            if (input == "a") {
            pathOneA() ;
            }   
            if (input == "b" && choice == 1) {
                pathOneB() ;
            }
            if (input == "c" && choice == 1) {
                pathOneC();
            }
    }   
    if (input == "b" && choice == 2) {
        pathTwo() ;
            if (input == "y" && choice == 2) {
                pathTwoY();
            }
            if (input == "n" && choice == 2) {
                pathTwoN();
            }
            if (input == "o" && choice == 2) {
                pathTwoO();
            }
    }
    if (input == "c" && choice == 3) {
        pathThree() ;
            if (input =="a" && choice == 3) {
            pathThreeA();
            }
            if (input =="b" && choice ==3) {
                pathThreeB();
            }
            if (input =="c" && choice ==3) {
                pathThreeC();
            }
    }
    
    }
    


