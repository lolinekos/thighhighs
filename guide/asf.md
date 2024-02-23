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
> >       - permissionsHas: `func(string|int) bool`\
*use role name or for example member.admin, member.modify, member.reseller*
> >       - ongoing: `func() int`\
*check if a user has permissions*
> >       - childCount `func()` int\
*count of child members created by member*
> >   - **Cursor**\
*terminal cursor movement*
> >       - up : `func([int])`
> >       - down : `func([int])`
> >       - left : `func([int])`
> >       - right : `func([int])`
> >       - pos : `func(int, int)`
> >   - **Table** `func(...string)`
> >     - row : `func(...any)`
> >     - column : `func(bool)`
> >     - boarder : `func(bool)`
> >     - style : `func(tableStyle)`\
*you can use `table.dash` `table.double` `table.bright` `table.dark`*
> >     - display : `func()`\
*show current table*
> >   - **Gif** \
*display gifs*
> >     - ansi : `func(string)` 
> >     - braille : `func(string)` 
> >     - ascii : `func(string)`
> >   - **image** \
*display images*
> >     - ansi : `func(string)` 
> >     - braille : `func(string)` 
> >     - ascii : `func(string)`
> >   - **Attack** \
*used when attacking and returned from ongoing()*
> >     - target : `string`
> >     - duration : `int`
> >     - method : `string`
> >     - org : `string`
> >     - isp : `string`
> >     - countryCode : `string`
> >     - as : `string`
> >     - status : `string`
> >     - sender : `int`\
*sender id*
> >     - region : `string`
> >   - **Method** 
> >     - name : `string`
> >     - description : `string`
> >     - permissions : `[]any`
> >     - timelimit : `int`
> >     - group : `string`\
*used for limiting concurrent usage*
> >   - **Image**\
*display images*
> >     - ansi : `func(string)` 
> >     - braille : `func(string)` 
> >     - ascii : `func(string)` 
> >   - **Alos**\
*wrapper for alos client escapes*
> >     - transparency `func(int)`\
*set window transparency*
> >     - showButton `func(button, bool)`\
Buttons: `alos.allButtons` `alos.minimize` `alos.fullScreen` `alos.exit`\
Example: `alos.showButton(alos.allButtons, false)`
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
> >     - sessions `func() []member`
> >     - ongoing `func() []attack`
> >     - methods `func() []methods`
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
> > # Class iterator
> > for i : thisClass {
> >     echo(i.name, i.value)
> > }
> > # Array iterator
> > for i : [1,2,3] {
> > 
> > }
> > ```
> > for loops must use an iterator array or class this is to discourage infinite loops
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
> > # Or just
> > <?$var?>
> > # You can also do this
> > $var
> > # But you must use {} if there is no space afterwards
> > [${var}]
> > ```
> > Try
> > ```php
> > # Try assert
> > try a = 0 / 0
> > # Try block
> > try {
> >     throw "fail"
> > }
> > # Try Catch
> > try {
> >     throw "fail"
> > } catch e {
> >     echo(e) # will echo fail
> > }
> > ```
> > 
> > 