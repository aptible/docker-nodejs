#!/usr/bin/env bats

@test "It should use Node v4.2.3" {
  node -v | grep 4.2.3
}

@test "It should install npm" {
  which npm
}
