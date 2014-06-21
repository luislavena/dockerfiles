#!/bin/sh

start() {
	local MEMORY=${MEMCACHED_MEMORY:-64}

	memcached -u nobody -m $MEMORY
}

start
