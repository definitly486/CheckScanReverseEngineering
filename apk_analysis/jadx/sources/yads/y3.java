package yads;

import android.content.Context;
import android.webkit.WebSettings;

/* JADX INFO: loaded from: classes6.dex */
public final class y3 extends qs {
    public y3(Context context) {
        super(context, null);
        setBackgroundColor(-1);
        setInitialScale(1);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        setDisplayZoomControls(false);
        setScrollbarFadingEnabled(true);
        setDrawingCacheEnabled(true);
        setWebChromeClient(new v3(context));
        setWebViewClient(new w3(context));
    }
}
