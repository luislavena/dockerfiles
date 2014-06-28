#!/bin/sh

start() {
	local MEMORY=${MEMCACHED_MEMORY:-64}

	exec memcached -u nobody -m $MEMORY
}

start
