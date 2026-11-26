package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import defpackage.ad2;
import defpackage.fg;
import defpackage.i01;
import defpackage.i3a;
import defpackage.nfa;
import defpackage.vg4;
import defpackage.w4a;
import defpackage.y14;
import defpackage.y99;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class h1 extends FrameLayout implements nfa {
    public static final /* synthetic */ int d = 0;
    public final WebView b;
    public final ArrayList c;

    public h1(Context context) {
        super(context);
        try {
            WebView webView = new WebView(context);
            this.b = webView;
            webView.clearCache(true);
            webView.addJavascriptInterface(this, "vkAdsWebInterface");
            addView(webView);
            this.c = new ArrayList();
        } catch (Throwable th) {
            y14.u(null, "BaseWebView: Webview cannot be initialized, ad will not work properly - " + th.getMessage());
            th.printStackTrace();
        }
    }

    public static void c(Throwable th) {
        y14.u(null, "BaseWebView: WebView fail - " + th.getMessage());
    }

    public final void a(int i) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        if (i > 0) {
            w4a.g.postDelayed(new y99(this, 2), i);
        } else {
            try {
                webView.destroy();
            } catch (Throwable th) {
                c(th);
            }
        }
    }

    public final void b(String str) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        try {
            webView.loadUrl(str);
        } catch (Throwable th) {
            c(th);
        }
    }

    public WebSettings getSettings() {
        try {
            WebView webView = this.b;
            if (webView == null) {
                return null;
            }
            return webView.getSettings();
        } catch (Throwable th) {
            c(th);
            return null;
        }
    }

    public String getUrl() {
        try {
            WebView webView = this.b;
            if (webView == null) {
                return null;
            }
            return webView.getUrl();
        } catch (Throwable th) {
            c(th);
            return null;
        }
    }

    public WebView getWebView() {
        return this.b;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        webView.layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        WebView webView = this.b;
        if (webView == null) {
            setMeasuredDimension(0, 0);
        } else {
            webView.measure(i, i2);
            setMeasuredDimension(webView.getMeasuredWidth(), webView.getMeasuredHeight());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    @Override // defpackage.nfa
    @JavascriptInterface
    public void sendMessage(String str, String str2, String str3) {
        ?? vg4Var = 0;
        vg4Var = 0;
        vg4Var = 0;
        vg4Var = 0;
        i01.d(ad2.d("BaseWebView: sendMessage ", str, " ", str2, " "), str3, null);
        try {
            if (TextUtils.isEmpty(str)) {
                y14.r(null, "PostMessageParser: can't parse postMessage – type is empty");
            } else if (TextUtils.isEmpty(str2)) {
                y14.r(null, "PostMessageParser: can't parse postMessage – action is empty");
            } else if (TextUtils.isEmpty(str3)) {
                y14.r(null, "PostMessageParser: can't parse postMessage – params is empty");
            } else {
                vg4Var = new vg4(1);
            }
        } catch (Throwable th) {
            fg.e(vg4Var, new StringBuilder("PostMessageParser: can't parse postMessage – "), th);
        }
        if (vg4Var == 0) {
            return;
        }
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((i3a) it.next()).a();
        }
    }

    @Override // android.view.View
    public void setHorizontalScrollBarEnabled(boolean z) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        webView.setHorizontalScrollBarEnabled(z);
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        webView.setOnTouchListener(onTouchListener);
    }

    @Override // android.view.View
    public void setScrollContainer(boolean z) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        webView.setScrollContainer(z);
    }

    @Override // android.view.View
    public void setVerticalScrollBarEnabled(boolean z) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        webView.setVerticalScrollBarEnabled(z);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        try {
            webView.setWebChromeClient(webChromeClient);
        } catch (Throwable th) {
            c(th);
        }
    }

    public void setWebViewBackgroundColor(int i) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        webView.setBackgroundColor(i);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        try {
            webView.setWebViewClient(webViewClient);
        } catch (Throwable th) {
            c(th);
        }
    }
}
