SpreeExcelInventory
===================

Spree Excel Inventory is a simple gem that creates a Microsoft Excel Spreadsheet containing 
all the inventory that is on a Spree store. The spreadsheet contains the following columns

* Id
* Product Name
* Sku
* Price
* Cost
* Amount On Hand
* Total Price of Inventor

You can print the Excel Report by clicking on the Export to Excel button at the top of the screen.

Installation
------------

Add the following line to your Gemfile and execute bundle install

```Ruby
  gem "spree_excel_inventory", git: "git://github.com/entropillc/spree_excel_inventory.git", branch: "master"
```

Copyright (c) 2013 Nicholas W. Watson, released under the New BSD License
