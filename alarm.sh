#!/bin/bash

if [ $# -lt 1 ]
then
  echo "Time needed"
  echo "Useage: $0 <seconds>"
  echo "Example: $0 60"
  exit 0
fi

alarm="$HOME/Music/mixkit-big-wild-eagle-calling-70.wav"
time="$1"
start=$SECONDS
s=1

function main(){
  echo "Welcome..."
  while [ $s -gt 0 ]
  do
    s="$((time - (SECONDS - start)))"
    echo -ne "\r                   \r"
    echo -ne "$(date -d@$s -u +%H:%M:%S)"
    sleep 1
  done

  echo -e "\nTimes Up"

  if [ -f "$alarm" ]
  then
    mpv "$alarm" 2>/dev/null
  else
    for i in `seq 1 3`
    do
      play -n -c1 synth sin %-12 sin %-9 sin %-5 sin %-2 fade h 0.1 1 0.1 2>/dev/null
    done
  fi
  exit 0
}

main
