# SafeConsole

Create a safe console enviroment, older browsers doesn't support the console methods, this **little** _(684 bytes)_ checks if the console methods are available and creates a empty function for the missing methods.

### Useage 

Include the `safeconsole.js` in your HTML `<head>` section, for best results make sure it is the first JavaScript file loaded, to ensure that the console methods are available by the time they get loaded.

```html
<script src="src/safeconsole.js"></script>
```
And that's it, you can now return to the land of coding bliss.

	
#### Which methods does it create
SafeConsole will only create a method if does not exist, leaving the current console methods intact.

SafeConsole will create the following methods

* isSafe
* _commandLineAPI
* assert
* clear
* count
* debug
* dir
* dirxml
* error
* exception
* group
* groupCollapsed
* groupEnd
* info
* log
* markTimeline
* memory
* profile
* profileEnd
* profiles
* table
* time
* timeEnd
* timeStamp
* trace
* warn

#### Why create isSafe?
Yes isSafe is not a standard console method, but this can we used to check if the script executed correctly.

**Executed correctly**

```javascript
console.isSafe()
//returns true
```
**Script didn't load**
```javascript
console.isSafe()
//Throws TypeError: Object #<Console> has no method 'isSafe'
```