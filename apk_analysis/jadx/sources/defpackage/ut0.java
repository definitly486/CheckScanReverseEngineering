package defpackage;

import android.webkit.JavascriptInterface;
import com.warefly.checkscan.presentation.webview.WebViewActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class ut0 {
    public final WebViewActivity a;

    public ut0(WebViewActivity webViewActivity) {
        this.a = webViewActivity;
    }

    @JavascriptInterface
    public final void exitFromWebview() {
        this.a.finish();
    }

    @JavascriptInterface
    public final void initQrScanner() {
        this.a.finish();
    }
}
