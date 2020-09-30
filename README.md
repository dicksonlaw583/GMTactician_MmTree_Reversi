# GMTactician: Minimax Reversi Example

A demonstration of [Minimax](https://en.wikipedia.org/wiki/Minimax) playing Reversi, implemented using [GMTactician Collection: Minimax Devkit](https://github.com/dicksonlaw583/GMTactician_MmTree) on GameMaker Studio 2.3.0.

## Introduction

This project implements a random-playout, minimally blocking Minimax AI that plays Reversi via a simple animated UI. You can adjust the AI's strength from 1-ply to 4-plies via options in the menu. All code is extensively commented and the main Minimax engine can be adapted in new projects to play other games.

## Requirements

- GameMaker Studio 2.3.0 or higher
	- Known issue: This library does not work on the HTML5 export for Runtime 2.3.0.401 due to a bug in the way it handles passed functions/methods.
	- Known issue: Runtime 2.3.0.401 has a garbage collector bug that triggers for the 3-ply AI unless a dummy tree is built and destroyed at the beginning of the game.
