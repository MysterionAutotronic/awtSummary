<!-- TOC -->

# HTML
HTML (hypertext markup language) is a language for describing so-called hypermedia documents which are used in the WWW.

A markup - also called tag - represents a control element for formatting and placing content (text, images, graphics, video, audio, etc.) within a hypermedia document.

## Structure
DOCTYPE determines the underlying grammar for parsing the document, here: HTML5
```html
<!DOCTYPE html>
<html>
    <head>
        <!---->
    </head>
    <body>
        <!---->
    </body>
</html>
```

## Head
```html
<head>
    <meta charset="UTF-8">
    <!-- viewport verhindert kleiner Skalierung auf mobilen Geräten -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"> 
    <!-- initial-scale: Zoomgrad, user-scalable: kann man zoomen -->
    <meta name="robots" content="noindex,nofollow">
    <meta name="author" content="Steven">
    <meta name="copyright" content="Steven">
    <meta http-equiv="expires" content="01 Dec 2006 00:00:00 GMT"> <!-- caching -->

    <title>Browser Window Title</title>
    <meta name="description" content="description">
    <meta name="keywords" content="keyword1, keyword2">

    <link rel="stylesheet" type="text/css" href="CSSSum.css"/>
    CSS for print view
    <link rel="stylesheet" type="text/css" media="print" href="CSSSum.css"/>
    <script type="text/javascript" src="urlV"></script>

    <style>
        /* Header CSS */
        div { color: red; }
    </style>

    Load important scripts in head faster
    <script type="text/javascript" type="module" src="file.js"></script>
</head>
```

## Body

### Typographie
```html
<!--Überschriften:-->
<h1>Überschrift 1</h1>
...
<h6>Überschrift 6</h6>

<!--Schriftdirektiven:-->
<i>kursiv</i> semantisch: <em>kursiv</em>
<b>bold</b>   semantisch: <strong>bold</strong>
<u>underline</u>
<mark>mark with color</mark>

<small>small font</small>
<big>big font</big>
<sup>hochgestellt x2</sup>
<sub>tiefgestellt aij</sub>

<pre>main() { //Darstellung von Quellcode ... }</pre>
```

### Wrapper
```html
<p>neuer Absatz, hat ein line break oben & unten</p>
<div>block</div>
<span>inline</span>
```

### Listen
```html
<!--Ungeordnete Listen:-->
<ul>
    <li>list item1</li>
    <li>list item2</li>
</ul>

<!--Geordnete Listen:-->
<ol type="A" start="2"> <!-- 1 = numerisch (standard), I = römisch, A = alphabetisch -->
    <li>list item1</li>
    <li>list item2</li>
</ol>

<!--Definitionsliste-->
<dl>
    <dt>Definition title</dt>
    <dd>Definition description</dd>
</dl>
```

### Hyperlinks
```html
<a href="/absolute/adresse">Anchor für Verweis auf anderes Hypertext Dokument</a>
<a href="relative/adresse" target="_blank">anchor</a>
<a> <input> </a>
<a> <image> </a>
```

### Forms
```html
<!--search for product name GET:-->
<form action="/products" method="GET, POST" novalidate>
    <!--action specifies the location the form data gets processed-->
    <label for="product">Product name:</label><!--for references id-->
    <input type="text, password, email, color, number, url" id="product"
        value="standard value" placeholder="" name="key"
        required disabled readonly checked>
        <!--name attribute is reference for input value: form.key="value"-->

    <!--2 types of submit button:-->
    <input type="submit" value="button text" formnovalidate>
    <!--or-->
    <button type="submit/reset/button" formaction="/products" name="" value="">
        send
    </button> 
</form>
```
- blank button with no attributes would work too
- button can be a query parameter with name & value
- type=button, if it isn't a submit button

### Form Elements
```html
<textarea rows="2" cols="20">Multiple line input</textarea>
<input type="checkbox" value="1/0" checked/>

<!--radio group-->
<div>
    <label for="radio1">option1</label>
    <input type="radio" id="radio1" value="option1" name="group" checked>
    <input type="radio" value="option2" name="group">
    <!--grouping with name attribute-->
</div>

<!--dropdown/combobox:-->
<select name="key" multiple>
    <option value="value1" selected>option1</option>
    <option>option2</option> <!--value will be by default="option2"-->
</select>
```

### Image
```html
<img src="images/image.jpg" alt="katze">
<!--alt = Text der angezeigt wird, falls Image nicht geladen wird-->
```

### Tables
```html
<table>
    <tr colspan="2">table row with max width</tr><!--colspan merges columns-->
    <tr>
        <th>head1</th><th>head2</th>
    </tr>
    <tr>
        <td rowspan="2">data1</td><td>data2</td><!--rowspan merges rows-->
    </tr>
</table>
<!--or-->
<table>
    <caption>table name</caption>
    <thead>
        <tr><th>head1</th><th>head2</th></tr>
    </thead>
    <tbody>
        <tr><td>data1</td><td>data2</td></tr>
    </tbody>
    <tfoot>
        <tr><td colspan="2">footer</td></tr>
    </tfoot>
</table>
```

### Misc
```html
<br> <!--break line-->
<hr> <!--horizontal ruler, vertical divider-->

<fieldset>
    <legend>Umrahmung mit Titel</legend>
    <child></child>
</fieldset>

<!--HTML Entities: Use of reserved symbols-->
&lt; = "<"
&gt; = ">"
&amp; = "&"
&nbsp; = whitespace
```

### CSS Usage
```html
<!--class-->
<div id="id_name" class="class_name"></div>
<!--inline-->
<div style="color: red; border: 1px solid black"></div>
```

### JS Usage
```html
<!--with tag-->
<script>
    console.log();
</script>

<!--inline-->
<input type="button" onclick='console.log();'>

<!--link-->
<a href="javascript:console.log();">Test</a>

<!--external-->
<script type="text/javascript" type="module" src="file.js"></script>
```