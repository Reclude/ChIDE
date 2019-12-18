/* flipcoin.ch
flip 100000 times, report results, calc result probability */

double flip, heads, tails, trial, headsProb, tailsProb ;
heads = 0, tails = 0, trial = 0 ;


while (trial < 100000) {
    flip = randint(1,2) ;
    
    if (flip == 1) {
        heads = heads + 1 ;
    }
    
    if (flip == 2) {
        tails = tails + 1 ;
    }
    
    trial = trial + 1 ;
}

if (trial == 100000) {
    headsProb = (heads / trial) * 100, tailsProb = (tails / trial) * 100 ;
    printf("Coin Face     Frequency     Probability\n") ;
    printf("head          %.0lf            %.2lf\n", heads, headsProb) ;
    printf("tail          %.0lf            %.2lf\n", tails, tailsProb) ;
}
