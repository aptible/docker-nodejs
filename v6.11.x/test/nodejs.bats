#!/usr/bin/env bats

@test "It should use Node v6.11.1" {
  node -v | grep 6.11.1
}

@test "It should install npm" {
  which npm
}
