# How to connect the sellix webhook
> - In your settings set your webhook location to `http://{serverIp}:{webPort}/sellix`\
>  Here is an example: `https://1.1.1.1:1337/sellix`
> - Afterwards you need to find your **webhook secret**.
> `Settings -> General -> Webhook Secret`
> - Then go into the `sellix.json` settings file and put the secret in the correct spot `webhookSecret`.
> - Create a **dynamic product** and use your sellix webhoook location as the **dynamic webhook**\
> For your products you will just go to your *products* list page where the **product id** will be listed .\
> Put your **product id** in the sellix config where is shows `productId`.\
> Your products should have the custom fields **"username"** and **"password"** with no uppercase letters.\
> To add a **Custom Field** to your product go to **Additional Details**
> 
> If you want to test if it works you can create a free product and make it unlisted.