# Angular

Angular is a web framework for developing fast and reliable web applications based on TypeScript.

## Project Structure

### Root

| path | features |
| ----------- | ----------- |
| ./ | Konfigurationsdateien / ENV |
| ./public | static file serving |
| ./src | source |

### /src

| path | features |
| ----------- | ----------- |
| ./src/styles.css | global CSS |
| ./src/main.ts | bootstrapper |
| ./src/index.html | HTML wrapper without body |
| ./src/app | app code |

### /app

| path | features |
| ----------- | ----------- |
| ./

### Code

#### main.ts
```typescript
import { bootstrapApplication } from '@angular/platform-browser';
import { appConfig } from './app/app.config';
import { AppComponent } from './app/app.component';

bootstrapApplication(AppComponent, appConfig)
    .catch((err) => console.error(err));
```

#### index.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Demos</title>
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
</head>
<body>
    <app-root></app-root>
</body>
</html>
```

## Component Lifecycle

1. Component creation: `ngOnChanges()` -> `ngOnInit()`
2. Content projection: `ngAfterContentInit()` -> `ngAfterContentChecked()`
3. View Initialization: `ngAfterViewInit()` -> `ngAfterViewChecked()`
4. Change detection runs repeatedly: `ngDoCheck()` -> `ngAfterContentChecked()` -> `ngAfterViewChecked`
5. Component destruction: `ngOnDestroy()`

## Forms

### Template Driven Forms

- simple to set up and use
- suitable for smaller forms
- angular handles most logic automatically

### Reactive Forms

- offer more control
- for complex and dynamic forms
- better scalability and testability
- form login is implemented in component class

## Modules

Container that organizes related code.
- you can define your own modules
- groups components, services and elements into a *cohesive unit*
- modular architecture enables **lazy loading**