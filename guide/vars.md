# Example variables
You can display use these like this:\
```sh
<?$my.username?>
$my.username
${my.username}
```
## Get member
```php
<?
# Get the username of your parent member
 parent = member(my.parent)
 echo(parent.username)
?>
```
## Member example
```sh
${my.id}
${my.parent}
${my.username}
${my.conurrents}
${my.timelimit}
${my.cooldown}
${my.ongoing()}
${my.permissionsHas(member.admin)}
${my.permissionsHas(member.reseller)}
${my.permissionsHas(member.api)}
```
## Attack example
```sh
${target}
${duration}
${org}
${isp}
${as}
${country}
${countryCode}
${city}
```
## Gif & Image
```php
# You can use a URL or a file from within ./commands

<?gif.ansi("file.gif")?>
<?gif.braille("file.gif")?>
<?gif.ascii("file.gif")?>

<?image.ansi("file.gif")?>
<?image.braille("file.gif")?>
<?image.ascii("file.gif")?>

```
### Misc
```sh
# View Number of online members
${len(online())}
# View all Ongoing
${len(ongoing())}
# When banned
${reason}
${until}
```