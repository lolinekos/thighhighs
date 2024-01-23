# ASF Language
> This language is how you will interface with the
> internal workings of the cnc.
>
> [readme](../readme.md)

> ## The run down 
> #### Built in Varibles, Classes, and Functions
> > - ### Classes
> >   - **Member** `func(string|int)`
> >       - id : `int`
> >       - parent : `int` \
*creator of class member as id. check if username is "none"*
> >       - username : `string`
> >       - concurrent : `int`
> >       - timelimit : `int`
> >       - cooldown : `int`
> >       - datef : `func(string) string`\
*format the date using template*
> >   - **Cursor**\
*terminal cursor movement*
> >       - up : `func([int])`
> >       - down : `func([int])`
> >       - left : `func([int])`
> >       - right : `func([int])`
> >       - pos : `func(int, int)`
> >   - **Table**
> >     - row : `func(...any)`
> >     - display : `func()`\
*show current table*
> >   - **Gif** \
*display gifs*
> >     - ansi : `func(string)` 
> >     - braille : `func(string)` 
> >     - ascii : `func(string)` 
> >   - **Image**\
*display images*
> >     - ansi : `func(string)` 
> >     - braille : `func(string)` 
> >     - ascii : `func(string)` 
> > - ### Functions
> >     - getjson `func(string) class`\
 *generates an object based on json data in response*
> >     - len `func(array|string) int` 
> >     - sleep `func(int)`\
*sleep for amount of milliseconds*
> >     - range `func(int) array`\
*array populated by range [1,2,3] for range(3)*
> >     - exit `func()`\
*exit current file*
> ## Concepts
> > ### Functions
> > anon args
> > ```php
> > function name (int, string){
> >   return args[0]
> >   //...
> > }
> > ```
> > any type args
> > ```php
> > function name (a1, a2) {
> >   return a1
> >   //...
> > }
> > ```
> > concrete args
> > ```php
> > function name (a1 int, a2 string) {
> >   return a1
> >   //...
> > }
> > ```
> > ---
> > ### Statements
> > If
> > ```php
> > if (/*expression and or*/) {
> > 
> > } else if (/*expression and or*/){
> >   
> > } else {
> >   
> > }
> > ```
> > For
> > ```php
> > for i : [1,2,3] {
> > 
> > }
> > ```
> > for loops must use an iterator array this is to discourage infinite loops
> > *if you think you are cablible instead try recursion!*
> > ### Assertive
> > Variable
> > ```php
> > a = 1 + 2 // 3
> > b += "e" // "be"
> > c, d = twovalues()
> > ```
> ---
> > ### Accessibility
> > Block
> > ```php
> > <?
> > echo("hello world")
> > ?>
> > ```
> > Echo Shorthand
> > ```php
> > <? $ "some string to output" ?>
> > or just
> > <?$var?>
> > ```
> > 
> > 