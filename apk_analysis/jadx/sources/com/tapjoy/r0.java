package com.tapjoy;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes4.dex */
public final class r0 implements Runnable {
    public final WebView a;
    public String b;

    public r0(WebView webView, String str) {
        this.a = webView;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a != null) {
            if (!this.b.startsWith("javascript:")) {
                try {
                    this.a.loadUrl(this.b);
                    return;
                } catch (Exception e) {
                    TapjoyLog.d("Exception in loadUrl. Device not supported. " + e.getMessage());
                    return;
                }
            }
            try {
                String strReplaceFirst = this.b.replaceFirst("javascript:", "");
                this.b = strReplaceFirst;
                WebView webView = this.a;
                if (webView == null) {
                    return;
                }
                webView.evaluateJavascript(strReplaceFirst, null);
            } catch (Exception unused) {
                TapjoyLog.d("Exception in evaluateJavascript. Device not supported.");
            }
        }
    }
}
