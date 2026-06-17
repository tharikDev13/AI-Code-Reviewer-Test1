import android.widget.TextView
import kotlinx.coroutines.*

class DashboardScreen(
    private val label: TextView
) {

    fun load() {

        GlobalScope.launch(
            Dispatchers.IO
        ) {

            label.text = "Loaded"
        }
    }
}