/* malnumtest2.ch
print two random numbers, prompt product, repeat until correct */

//declaration
int a, b , input, aBProduct;

//initialization
a = randint(1,10) , b = randint(1,10) ;
aBProduct = a * b ;

printf("What is the product of these numbers?\n%d ~ %d\n", a, b) ;

//processing
scanf("%d", &input) ;
while (input != aBProduct)  {
    printf("Incorrect. Please try again.\n") ;
    scanf("%d", &input) ;
}
if (input = aBProduct)  {
    printf("Correct.\n") ;
}
