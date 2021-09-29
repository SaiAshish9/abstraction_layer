package com.example.cred

import android.content.Intent
import android.os.Bundle
import android.os.PersistableBundle
import androidx.core.content.ContextCompat
import io.flutter.embedding.android.FlutterActivity

class SplashActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
      super.onCreate(savedInstanceState, persistentState)
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.LOLLIPOP) {
        }
        var i = Intent(this,MainActivity::class.java)
      startActivity(i)
      finish()
    }
}