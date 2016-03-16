#!/usr/bin/env bats

@test "It should use Node v4.3.2" {
  node -v | grep 4.3.2
}

@test "It should install npm" {
  which npm
}
