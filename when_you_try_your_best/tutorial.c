int main() {
    long int a = 5;
    long int b = 9;
    int result;

    // Perform multiplication
    result = a * b;


    // Use the result in a way that prevents optimization
    if(result < 0) {
        return -1;
    } else {
        return 0;
    }
}