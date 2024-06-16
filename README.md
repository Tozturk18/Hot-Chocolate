# Hot Chocolate - MacOS

## Authors
@Tozturk18 - Ozgur Tuna Ozturk - tunaozturk2001@hotmail.com. <br>
Last edited on June 15, 2024.

# Description
<p style="text-align: justify">
When life gives you lemons you make a lemonade... But what if life gives you Cocoa? You make some hot chocolate! Hot Chocolate is a new game engine API based on Apple's Cocoa API powered by C-infused Objective-C. It simplifies Cocoa to generate 2D and 3D video games or any app with a User Interface. Hot Chocolate provides speed and agility thanks to its C architecture.

Unlike other professional, fully-fledged game engines such as Unity and Unreal Engine, Hot Chocolate does not have a user interface where you can drag and drop items and interact with your objects. Instead, this is an API written on top of the Cocoa API to make it easier and faster to develop apps for Mac OS.

Imagination is your boundary with Hot Chocolate! This open-source Game Engine API comes as a package that helps you build any idea you want. Each functionality of the Game Engine comes in its separate folder with its own documentation ".MD" Markup File.
Additionally, you can find some example games/apps in the Examples folder showcasing the functionalities of Hot Chocolate.
</p>

## Installation
To install this repository you can either download it as a ```.ZIP``` file from the GitHub website or you can clone it using ```git clone```. To clone it open your terminal and go to the directory you want to save this repository in and run the command below.

### Change the Directory to the repository
Once you change your directory to the folder containing this repository, please run the ```git clone``` command below to clone the repository into the ```path_to_dir``` folder.

### Cloning Repository
```%
% git clone https://github.com/Tozturk18/Cocao_MacOS_App.git
```
(If the code above fails it might be because you don't have git, to install git you can install the XCode command line tools package as shown [below](#install-the-xcode-command-line-tools).)
<br><br>
Once the repository is installed, this repository comes with Makefiles for each example program. You can use the Makefile to quickly compile and generate the app.<br>

### Compile the repository
```%
% cd ./Examples/example1
% make
```
The ```make``` command might result in an error. In that case please check the makefile to make sure you have the Clang command that comes with the XCode Command Line Tools. Clang is the compiler (similar to gcc or g++) for Objective-C. To download XCode Command Line tools, run the command below:

### Install the XCode Command Line Tools
```%
% xcode-select --install
```
If it still gives an error please contact me @Tozturk18 at tunaozturk2001@hotmail.com.
<br><br>
(To remove the executables and get a clean slate you can run the make clean command)

### Removing Executables
```%
% make clean
```
(Note: This repository only works with MacOS)

## Usage
<p style="text-align: justify">
In the Examples folder, you can find a few apps that showcase the functionalities of Hot Chocolate. These are very simple examples such as Pong, Tetris, and Pac-Man. There are also some simple 3D examples too. I will be building a Minecraft replica of this eventually.
</p>

### Running the program
Once you run the make command as shown [above](#compile-the-repository) you should get 2 executables. One is an executable called [exec](app) and the other one is a generated MacOS [app](test.app). 
<p style="text-align: justify">
Exec is an executable that runs on the Terminal, this allows for displaying print statements to the console (terminal). Meanwhile, the file named "app" is an actual MacOS app that runs when you double-click on it.
</p>

### Use cases
Currently, this program supports user-intractable regular and irregular 2D and 3D polygons. Each class in the Utilities folder helps compartmentalize jobs.

Moreover, each class in the Utilities folder helps compartmentalize jobs.

## Contributing
If you want to contribute to this repository you can either fork and try to do stuff on your own. If you are willing to work with me and become a part of this project please contact me and I can add you as a collaborator. 

### Adding Issues
While adding issues please use friendly wording and provide a good title with a nice detailed description. Also please select a label that associates with the issue. An issue can range from a bug report to advice for an improvement or a feature in the code. I am a beginner in Objective-C so I would appreciate any kind of contribution.

### Pull requests
If you created a fork or a branch and want to merge it with the main (master) branch, then you will have to generate a pull request. The repository contains a ```.YML``` file used to check the branch before merging with the main. Apart from the ```.YML``` check on the branch, the pull request requires one review before merging.

## License
This project is licensed under the MIT License - see the [LICENSE.md](./LICENSE) file for details.