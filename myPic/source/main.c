/* 
 * File:   main.c
 * Author: taianluo
 *
 * Created on 2014年10月2日, 上午 11:19
 */

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include "main.h"


/*
 * 
 */
char var = 0;

int main(int argc, char** argv) {
    char j = 0;
    initialization();

    while (true) {

        for (int i = 0; i < 10; i++) {
            j += i;
            PORTA = 0b1111111;
        }
        continue;
    }

    return (EXIT_SUCCESS);
}

void initialization() {
    ANSELA = 0x00;
    TRISA = 0x00;
    PORTA = 0x00;
}

void interrupt ISR(void) {
    if (TMR0IE && TMR0IF) {
        TMR0IF = 0;

    }
}


