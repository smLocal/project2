# Project2
##Farmers market inventory database

https://trello.com/b/XVC3AVuG/farmers-market-freshbase

##About FreshBase
I'm making an inventory control system for a farmers market in New Orleans.
There will be multiple users: managers, employees and customers.
There will also be online sales, and also done in Ionic.
But, my MVP is a lot more humble than all of that.

##MVP
I've come up with one model called *Item* ~> 
"rails g model Item name quantity:integer season casePrice:integer unitPrice:integer". 
You will be able to affect this database in different ways depending on the user.
Later, I hope to build the site to direct sales online.

For the MVP, I will start by creating the above model for the inventory. 
Then, Ill create an items controller and get into the seeds.rb file to make up 
some mock items. Ill then go thru the process we've done for all other files 
and routing and db steps ragarding rails apps. 

I plan on adding a login next, and we"ll make all the necessary models and 
controllers like session that were touch on by Matt. 

Finally, for this project I want customers to make comments on items as part of 
my MVP. Ill have to make another controller and model for the comments and 
another set also for users, too.  

##For stretch goals: 
* I want users to create wishlists. 
* I want to learn about Ionic and how I can convert my app.
* I want to learn how be able to let users purchase online.
* I want a cart for users to place and track multiple items.
* I want to dip my toes in the css hole or have a ux person make my app sexy af.
* I want different kinds of users like managers and customers and employees that
can affect the databases differently or be locked out of making certain changes.

##Technologies used:
* Ruby on Rails
* Embedded Ruby 
* Bootstrap
* SASS
* PostgreSQL
*

##Different for next time:
* I would make sure my models were done correctly on the day I created them.
* That means double checking my ERDs are done correctly
