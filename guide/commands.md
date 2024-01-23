# Commands

> ## Syntax
> 
> Below I will explain the overview of a command.\
> Example:\
> `users update bleach expiry=20 timelimit=2`\
> *it should be noted that you can use variadic arguments sporadically though not recommended*\
> `users update test1 expiry=20 test2 timelimit=2 test3`\
> `users update test1 test2 test3 expiry=20 timelimit=2`
>
> Command: users update *update is a subcommand of users*
> ### Arguments:
> - #### variadic/required
>   - bleach
> - #### named/nonrequired
>   - expiry
>   - timelimit

> ## Customization
> To add a command put it in `./resources/commands/` or `/resources/branding/themes/THEMENAME/commands` for a specific theme. *replace THEMENAME*\
> The command __must__ have the meta data tag at the top to be scanned, otherwise it will not be used as a command.\
> Example:
> > ```php
> > ===Command===
> > name: commandName
> > permissions: admin, moderator
> > description: misc info not required
> > ===End===
> > <?echo("hello world")?>
> > <?$my.username?>
> > this will output to the user
> __*I strongly suggest against having multiple commands with the same name*__
