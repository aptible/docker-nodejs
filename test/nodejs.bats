#!/usr/bin/env bats

@test "It should use Ruby v0.10.26" {
  node -v | grep 0.10.26
}

@test "It should install npm" {
  which npm
}
