package com.my.target;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import defpackage.lga;
import defpackage.tn9;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class cl extends h1 {
    public final String e;

    public cl(String str, lga lgaVar, tn9 tn9Var, Context context) {
        super(context);
        WebSettings settings = getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
            settings.setDomStorageEnabled(true);
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        this.e = str;
        WebView webView = getWebView();
        if (webView == null) {
            y14.u(null, "WebFormView: WebView is null, can't add handlers");
        } else {
            setWebViewClient(tn9Var);
            webView.addJavascriptInterface(lgaVar, "AndroidBridge");
        }
    }
}
