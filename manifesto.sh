#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# TODO: Compose a paragraph using $TOOL, $FREEDOM, $BUILD
# and write it to $OUTPUT using echo and >>

# --- ALIAS CONCEPT DEMONSTRATION ---
# An alias is a custom shortcut for a longer command. 
# For example, you could add the following line to your ~/.bashrc file 
# so you can just type 'mymanifesto' anytime to read this file:
# alias mymanifesto="cat ~/$OUTPUT"

# --- GENERATING THE MANIFESTO ---
# Using > to overwrite the file if it exists, and >> to append to it
echo "=========================================" > "$OUTPUT"
echo "       MY OPEN SOURCE MANIFESTO          " >> "$OUTPUT"
echo "=========================================" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that software should empower, not restrict. Every day, I rely on tools like $TOOL to learn, create, and solve problems." >> "$OUTPUT"
echo "To me, the core of the open-source philosophy is $FREEDOM." >> "$OUTPUT"
echo "If I had unlimited time and resources, I would build $BUILD and release it to the world, free for anyone to use, modify, and distribute." >> "$OUTPUT"
echo "We build the future by sharing our knowledge." >> "$OUTPUT"
echo "=========================================" >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"
