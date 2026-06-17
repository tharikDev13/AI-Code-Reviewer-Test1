package com.example.demo

class CounterManager {

    private var counter = 0

    fun start() {

        repeat(1000) {

            Thread {

                counter++

            }.start()
        }
    }
}