#!/usr/bin/env bats

@test "It should use Node v4.4.3" {
  node -v | grep 4.4.3
}

@test "It should install npm" {
  which npm
}
