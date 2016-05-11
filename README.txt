HID LANGUAGE

HID (short for 'Hidden' or 'Hideous') is an imperative programming language with C-like syntax that has no literal values. All integer variables are given value of 0 when declared. The language supports all standard arithmetic expressions (+, -, *, /, %), as well as successor operator ^(expression) and predecessor operator v(expression) whose value is equal to the expression's value respectively increased or decreased by one.

As there are no literals, all digits are treated the same as other characters, i.e. variable and function names like "123" or "1a2b3c4d" are allowed (however, lowercase letter v cannot be used due to it being the successor operator). This frees up the namespace and gives the programmer more choice and control over his work. In addition to this convenience, programming in HID is an interesting exercise that proves that literals are not really necessary in everyday life and discourages bad practices such as using 'magic numbers'.

Apart from integer values, the language recognizes booleans (they start as False upon declaration, and can be negated) and provides all standard comparison operators (<, >, <=, >=, !=, ==).


DECLARATIONS

Declaration of variables can be done in the following way:

    type variable_name;

where type is either int or bool. The type is used to determine the starting value of the variable (0 for int, False for bool). It does not lock the variable to a given type, however - it can be assigned a value of another type. The following program is correct and will print 'False' to the stdout.

    int a;
    bool b;
    a = b;
    print a;

Declaration of functions is as follows:

    type function_name(type argument1, ..., type argumentn){
        statement1;
        ...
        statementn;
    }

Similarly, the type can be int or bool and denotes the default return value (0 or False, depending on the type). For arguments, the type determines the value if less arguments are provided. For example:

    int testfunction(int a, int b, bool c){
        if(a > b) return a + b;
        if(c){
            return c;
        }
    }

    int 0;
    bool false;

    print testfunction();                  // the argument values: 0, 0, False. The result is False.
    print testfunction(^^^0);              // the argument values are 3, 0, False. The result is 3.
    print testfunction(vv0, 0, !false);    // the argument values are -2, 0, True. The result is True.
    print testfunction(vv0, ^^0, 0, ^v0);  // Error! Too many arguments provided.
    print testfunction(0, 0, 0);           // Error! c is an integer, but if requires a boolean value.


COMPARISON

Integer values can be compared using <, >, <=, >=, ==, != operators.
Boolean values can be compared using ==, != operators.
Integers can be compared with booleans using ==, != operators (== will always return False, != will always return True).


ASSIGNMENT

A variable can be assigned any value.
    
    int a;
    bool b;
    a = !b;

In the above example, variable a is assigned a value of True.

For integer assignment, there are agumented assignment operators available (+=, -=, *=, /=, %=)

    int a;
    a = ^^^^^a;
    int b;
    b = ^^^b;
    a += b;

Int the above example, a is first assigned value of 5. Then, b is assigned value of 3. Finally, a is assigned value of 8.
Moreover, there are {post,pre}{in,de}crementation operators available for integers (++, --).

    int a;
    print a++; // will print 0
    print ++a; // will print 2
    print --a; // will print 1
    print a--; // will print 1


CONTROL STATEMENTS

The available control statements are if, if-else, while, for with C-like syntax. The condition expressions must have a boolean value, i.e.

    int a;
    bool b;

    if(a == a){...}            // OK
    while(a){...}              // NOT OK
    if(b){...}                 // OK
    if(a < b){...}             // NOT OK
    for(a; a == b; ++a){...}   // OK

