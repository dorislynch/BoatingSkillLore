
# react-native-boating-skill-lore

## Getting started

`$ npm install react-native-boating-skill-lore --save`

### Mostly automatic installation

`$ react-native link react-native-boating-skill-lore`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-boating-skill-lore` and add `RNBoatingSkillLore.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNBoatingSkillLore.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNBoatingSkillLorePackage;` to the imports at the top of the file
  - Add `new RNBoatingSkillLorePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-boating-skill-lore'
  	project(':react-native-boating-skill-lore').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-boating-skill-lore/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-boating-skill-lore')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNBoatingSkillLore.sln` in `node_modules/react-native-boating-skill-lore/windows/RNBoatingSkillLore.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Boating.Skill.Lore.RNBoatingSkillLore;` to the usings at the top of the file
  - Add `new RNBoatingSkillLorePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNBoatingSkillLore from 'react-native-boating-skill-lore';

// TODO: What to do with the module?
RNBoatingSkillLore;
```
  