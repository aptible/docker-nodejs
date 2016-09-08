#!/usr/bin/env bats

@test "It should use Node v4.5.0" {
  node -v | grep 4.5.0
}

@test "It should install npm" {
  which npm
}
