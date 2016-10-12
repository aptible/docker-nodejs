#!/usr/bin/env bats

@test "It should use Node v6.7.0" {
  node -v | grep 6.7.0
}

@test "It should install npm" {
  which npm
}
