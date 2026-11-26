package com.tapjoy;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import androidx.webkit.ProxyConfig;
import defpackage.jg;
import defpackage.n7;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public final class i0 extends WebViewClient {
    public final /* synthetic */ TJSplitWebView a;

    public i0(TJSplitWebView tJSplitWebView) {
        this.a = tJSplitWebView;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (this.a.l.booleanValue()) {
            ProgressBar progressBar = this.a.p;
            if (progressBar != null) {
                progressBar.setProgress(0);
                this.a.p.setVisibility(8);
            }
            this.a.isFirstOrLastPage();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.a.l.booleanValue()) {
            if (this.a.q.getText().toString().isEmpty()) {
                this.a.q.setText(TapjoyUrlFormatter.getDomain(str));
            }
            this.a.p.setVisibility(0);
        }
        jg.f("onPageStarted: ", str);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        StringBuilder sbD = n7.d("onReceivedError: ", str2, " firstUrl:");
        sbD.append(this.a.d);
        TapjoyLog.d(sbD.toString());
        TJSplitWebView tJSplitWebView = this.a;
        if (tJSplitWebView.u) {
            tJSplitWebView.showErrorDialog();
        } else if (str2.equals(tJSplitWebView.d)) {
            this.a.j.dismissSplitView(null, null);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        TJSplitWebView tJSplitWebView = this.a;
        TJWebView tJWebView = tJSplitWebView.a;
        if (tJWebView != null) {
            ViewGroup viewGroup = (ViewGroup) tJWebView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.a.a);
                viewGroup.removeAllViews();
            }
            this.a.a.destroy();
            tJSplitWebView = this.a;
            tJSplitWebView.a = null;
        }
        TJAdUnitJSBridge tJAdUnitJSBridge = tJSplitWebView.j;
        if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.cleanUpJSBridge();
            this.a.j = null;
        }
        TapjoyLog.w("WebView rendering process exited while instantiating a WebViewClient unexpectedly");
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        TJSplitWebView tJSplitWebView = this.a;
        String str2 = tJSplitWebView.f;
        Uri uri = tJSplitWebView.g;
        if (str2 != null && uri != null && str != null && str.startsWith(str2)) {
            this.a.k.startActivity(new Intent("android.intent.action.VIEW", uri));
            this.a.j.dismissSplitView(null, null);
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        HashSet hashSet;
        TapjoyLog.d("shouldOverrideUrlLoading: " + webResourceRequest.getUrl().toString());
        Uri uri = Uri.parse(webResourceRequest.getUrl().toString());
        if (uri != null) {
            String host = uri.getHost();
            String scheme = uri.getScheme();
            if (scheme != null && host != null && ((scheme.equals(ProxyConfig.MATCH_HTTP) || scheme.equals(ProxyConfig.MATCH_HTTPS)) && ((hashSet = this.a.h) == null || !hashSet.contains(host)))) {
                this.a.e = webResourceRequest.getUrl().toString();
                return false;
            }
        }
        try {
            this.a.k.startActivity(new Intent("android.intent.action.VIEW", uri));
            if (this.a.l.booleanValue()) {
                return true;
            }
            this.a.j.dismissSplitView(null, null);
            return true;
        } catch (Exception e) {
            TapjoyLog.e(e.getMessage());
            return true;
        }
    }
}
