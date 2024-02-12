#include <stdio.h>                                                               
#include <stdlib.h>                                                              
                                                                                 
int                                                                              
ratio(int x, int y)                                                              
{                                                                                
        return x / y;                                                            
}                                                                                
                                                                                 
int                                                                              
main()                                                                           
{                                                                                
        int x, y;                                                                
                                                                                 
        printf("Enter x: ");                                                     
        scanf("%d", &x);                                                         
        printf("Enter y: ");                                                     
        scanf("%d", &y);                                                         
                                                                                 
        printf("Ratio: %d\n", ratio(x, y));                                      
}
