#!/usr/bin/env bats

@test "It should use Node v4.6.2" {
  node -v | grep 4.6.2
}

@test "It should install npm" {
  which npm
}
