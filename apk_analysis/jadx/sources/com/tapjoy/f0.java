package com.tapjoy;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes4.dex */
public final class f0 extends WebChromeClient {
    public final /* synthetic */ TJSplitWebView a;

    public f0(TJSplitWebView tJSplitWebView) {
        this.a = tJSplitWebView;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        this.a.p.setProgress(i);
        this.a.isFirstOrLastPage();
    }
}
