//Parse error case

//expected ';'
int var
void func1()

void func2(){
    int a[10]
}

void func3(){
    int a=1
}

void func4(){
    int a;
    a=1+2
}

void func5(){
    return
}

void func6(){
    while(1){
        continue
    }
    while(1){
        break
    }
}

struct point1{
    int a
    int b;
};
