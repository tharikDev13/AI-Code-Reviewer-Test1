package com.example.demo

import android.widget.TextView

class DashboardController(
    private val label: TextView
) {

    fun loadData() {

        Thread {

            label.text = "Finished"

        }.start()
    }
}