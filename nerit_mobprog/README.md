# Nerit, Ashley Nicole G. 
### 2024-1004350
#### INF241 

## Discussions
### Laboratory 0: 

Some of the errors I encountered and resolved:
- To see the diagnostics of the Flutter application, I used "flutter doctor -v". By this command, it will display all the information needed to see 
- Since the version is outdated and the "upgrade" command isn't working, I used the "forced upgrade" command.
- I needed to access the visual code studio in administrative mode due to security matters
- Commands when running flutter like the "r" command in which it somehow represents "save" to automatically update the layout in the emulator


Reflection:
Setting up Flutter was quite easy to follow since I already have knowledge with some softwares used like the setup for a device emulator in Android studio and the directories. I was new with the setup of enviroment variables but managed to do it eventually. I was quite challenged with the Github setup since I only used it before without the commands. But now that we've done the initial setup, it's easy to understand and do the pushing commands from terminal to the Github repository.

### Laboratory 1: 

Some of the errors I encountered and resolved:
- After reinstalling Flutter and moving the SDK from C: to D:, Gradle kept looking for the old Flutter path on C:\Users\ashley\Documents\flutter in which I mistakenly placed. to fix it, I updated the Windows Path environment variable to point to the new D: drive flutter\bin folder, ran flutter clean and flutter pub get, and updated flutter.sdk inside android/local.properties to the D: path.

- Flutter flagged version compatibility warnings because the project was using AGP 9.1.1 and Kotlin 2.4.10 instead of the newer required versions. To fix it, I updated the plugin versions in android/settings.gradle.kts (com.android.application to 9.3.1 and org.jetbrains.kotlin.android to 2.4.20) to match the reinstalled Flutter SDK.

- The build failed during compilation (Target kernel_snapshot_program failed) due to a missing comma, an unclosed TextButton.icon( parenthesis, and a stray semicolon statement (hasImage == true;) inside a widget children list. To fix it, idded the missing comma before size:, closed the TextButton.icon parentheses, and changed hasImage == true; into a proper if (hasImage) collection condition.

- Flutter couldn't locate assets/fonts/FrutigerLTStd-Roman.otf declared in pubspec.yaml. To fix it, I checked the pubspec.yaml file and instead of FrutigerLTStd-Roman (which is in my fonts folder), FrutigerLTStd-Bold displayed.


Reflection:
Setting up Flutter turned out to be the hardest part of the whole process—even tougher than writing the actual UI code. Reinstalling the SDK and moving it from my C: drive to D: caused a chain reaction of configuration issues, mostly because of version differences between the newly installed Flutter SDK, Gradle, and Kotlin. Even small mismatches in settings.gradle.kts or leftover cached paths from the old installation were enough to break the build before the app could even launch.

On top of the version headaches, running a virtual Android emulator put too much strain on my system and slowed everything down while compiling. Switching to an external physical Android phone made a huge difference—it lessened the load on my machine, sped up build and testing times, and let me focus on actually fixing code bugs instead of waiting on a heavy emulator to respond. Overall, troubleshooting all these setup errors taught me how important it is to keep SDK paths, Gradle dependencies, and pubspec.yaml configurations aligned before diving into development.