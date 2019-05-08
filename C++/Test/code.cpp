#include<iostream>


int abs (int n){
  return n > 0 ? n : -n ;
}

int main (void){
  for (int i = 33; i < 126; i++)
    printf("%c", i);
}