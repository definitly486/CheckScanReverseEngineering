package com.tapjoy;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes4.dex */
public final class d0 extends WebViewClient {
    public final /* synthetic */ TJOfferwallDiscoverView a;

    public d0(TJOfferwallDiscoverView tJOfferwallDiscoverView) {
        this.a = tJOfferwallDiscoverView;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.a.b.flushMessageQueue();
        TJOfferwallDiscoverView tJOfferwallDiscoverView = this.a;
        if (!tJOfferwallDiscoverView.f && tJOfferwallDiscoverView.isLaidOut()) {
            this.a.b.display();
            this.a.f = true;
        }
        this.a.g = true;
    }
}
