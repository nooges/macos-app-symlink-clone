#!/usr/bin/env ruby

# Steps:
# - Create directory for unsigned clone
# - Get list of items under /Applications/Xcode.app/Contents
# - Symlink everything except /Applications/Xcode.app/Contents/MacOS
# - Unsign Xcode
