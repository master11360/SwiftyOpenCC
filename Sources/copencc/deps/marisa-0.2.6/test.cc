void foo();

#if __INCLUDE_LEVEL__ == 0
void foo() {
   printf("Hello World!\n");
}
#endif