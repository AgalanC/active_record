#!/bin/sh
 
tests=(
  ./01-hello-world/hello_world_test.rb
  ./02-hello-world-instance/hello_world_test.rb
  ./03-leap/leap_test.rb
  ./04-pangram/pangram_test.rb
  ./05-grains/grains_test.rb
)
 
for test in "${tests[@]}"; do
  output=$(ruby "$test")
 
  last_line=$(echo "$output" | tail -n 1)
 
  echo "$test: $last_line"
done