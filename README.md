Paginator
=========

A simple jQuery paginator.

You can see a [live use right here][fiddle].

It has been tested with jQuery 1.9.1 up to 2.0.2 right now.

Make sure you load jQuery before loading the plugin!

This plugin is provided with a CSS sheet but is totally customizable. It can work with any number of tables on a page and each table can get its own parameters. The text on the button is also fully customizable via parameters, can be done within HTML or JavaScript.

Installation
----------

With bower:

    bower install jquery-paginator

Without bower:

    git clone https://github.com/dozoisch/paginator.git

Then include the files you need!



Basic Usage
----------

```js
jQuery(document).ready(function () {
    jQuery('table').paginate();
});
```
The parameters can be passed on the HTML of the tables using `data-parameter-name` or in a JavaScript Object when calling the function `paginate`.
When using JavaScript, the parameters are camelCased, but when using `data-` you have to use hyphens.

You can also use both types at the same time,the JavaScript (dynamic) parameters have precedence over HTML ones though. This enables you to generate lets say text parameter from the back-end and other ones on the fly.

*Note that when passing parameters from HTML, you still have to initiate the plugin with the `paginate` function.*

*There are a few more actions you can do with the plugin, these are described in the advanced usage section.*

### Examples

**Passing parameters from the JavaScript :**

```js
jQuery(document).ready(function () {
    jQuery('table').paginate({
        'elemsPerPage': 2,
        'maxButtons': 6
    });
});
```

**Passing parameters from HTML :**

```html
<table data-elems-per-page="2" data-max-buttons="6"><!-- ... --></table>
```


Full Parameter List
----------

### Basic Parameters

| Parameter | Type | Default | Description |
| --------- |:----:|:-------:| ----------- |
| elemsPerPage | Integer | 5 | Max number of element shown on a page |
| maxButtons | Integer | 5 | The max number of button showing in the paginator bar. This includes the "..." buttons, but does not include the show all button. |


### CSS Parameters

| Parameter | Type | Default | Description |
| --------- |:----:|:-------:| ----------- |
| disabledClass | String | paginateDisabled | The CSS class to be applied on disabled buttons. |
| activeClass | String | paginateActive | The CSS class to be applied on the current active button. |
| listClass | String | paginateList | The CSS class to be applied on the list containing buttons. |
| showAllListClass | String | paginateShowAllList | The CSS class to be applied on the list containing the Show All button. |
| previousClass | String | paginatePrevious | The CSS class to be applied on the previous page button. |
| nextClass | String | paginateNext | The CSS class to be applied on the next page button. |
| previousSetClass | String | paginatePreviousSet | The CSS class to be applied to the button used to move to the previous set of buttons. |
| nextSetClass | String | paginateNextSet | The CSS class to be applied to the button used to move to the next set of buttons. |
| showAllClass | String | paginateShowAll | The CSS class to be applied to the Show All button. |
| pageClass | String | paginatePage | The CSS class to be applied on the page buttons. |
| anchorClass | String | paginateAnchor | The CSS class to be applied on the page button anchors. |

### Text Parameters

| Parameter | Type | Default | Description |
| --------- |:----:|:-------:| ----------- |
| previousText | String | `&laquo;` | The text to put on the previous page button. The text can contain HTML entities, but they have to be HTML encoded. |
| nextText | String | `&raquo;` | The text to put on the next page button. The text can contain HTML entities, but they have to be HTML encoded. |
| previousSetText | String | `&hellip;` | The text to put on the previous set button. The text can contain HTML entities, but they have to be HTML encoded. |
| nextSetText | String | `&hellip;` |  The text to put on the next set button. The text can contain HTML entities, but they have to be HTML encoded. |
| showAllText | String | `&dArr;` |  The text to put on the show all button. The text can contain HTML entities, but they have to be HTML encoded. |


Advanced Usage
----------

The plugin has 3 more methods, other than the initialization, you can use. They can be called via jQuery by adding a string parameter.

### Update

This basically destroys and recreates the paginator. It can be used if the table is updated dynamically or re-sorted and you want to redo the display.

```js
jQuery('table').paginate('update', 1);
```

### Change Settings

This updates the settings on the fly and then re-display the first page. This will destroy and recreate the paginator to show new settings.

```js
jQuery('table').paginate('changeSettings',{'elemsPerPage' : 10});
```

### Destroy

This removes the paginator from the table and makes sure to re-display the whole table.

```js
jQuery('table').paginate('destroy');
```


[fiddle]:http://jsfiddle.net/dozoisch/EBSBx/
