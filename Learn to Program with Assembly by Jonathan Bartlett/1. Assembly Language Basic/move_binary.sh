#!/bin/bash

for file in *; do
  if [ -f "$file" ] && [ "${file##*.}" == "o" ]; then
    mv "$file" obj/
    continue
  fi

  if [ -f "$file" ] && [ "${file##*.}" != "s" ] && [ "${file##*.}" != "sh" ]; then
    mv "$file" bin/
  fi
done
