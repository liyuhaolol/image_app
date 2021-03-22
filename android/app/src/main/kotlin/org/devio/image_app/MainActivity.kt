package org.devio.image_app

import android.os.Build
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import spa.lyh.cn.lib_utils.translucent.TranslucentUtils

class MainActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        //Log.e("qwer","测试")
        //TranslucentUtils.setTranslucentBoth(window)
        //TranslucentUtils.setTranslucentTOP(window)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            window.setDecorFitsSystemWindows(false)
        }
    }
}
