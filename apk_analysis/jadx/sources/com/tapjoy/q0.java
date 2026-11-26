package com.tapjoy;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.webkit.URLUtil;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
public final class q0 extends WebViewClient {
    public final /* synthetic */ TJWebViewActivity a;

    public q0(TJWebViewActivity tJWebViewActivity) {
        this.a = tJWebViewActivity;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.a.g.flushMessageQueue();
        this.a.g.display();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (webView != null) {
            webView.loadUrl("about:blank");
        }
        this.a.showErrorDialog();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        TJWebViewActivity tJWebViewActivity = this.a;
        String string = webResourceRequest.getUrl().toString();
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) tJWebViewActivity.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected() && URLUtil.isValidUrl(string)) {
                try {
                    if (string.startsWith("https://" + new URL(TapjoyConnectCore.getInstance().getHostURL()).getHost()) || string.startsWith(TapjoyConnectCore.getInstance().getRedirectDomain()) || string.startsWith(TapjoyUtil.getRedirectDomain(TapjoyConnectCore.getInstance().getPlacementURL()))) {
                        return false;
                    }
                } catch (MalformedURLException unused) {
                }
                if (tJWebViewActivity.g.allowRedirect) {
                    Uri uri = Uri.parse(string);
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(uri);
                    intent.addFlags(268435456);
                    if (tJWebViewActivity.f.getContext() != null) {
                        try {
                            tJWebViewActivity.f.getContext().startActivity(intent);
                            return true;
                        } catch (Exception e) {
                            TapjoyLog.e("Exception in loading URL. " + e.getMessage());
                        }
                    }
                } else if (string.startsWith("javascript:")) {
                    try {
                        tJWebViewActivity.f.evaluateJavascript(string.replaceFirst("javascript:", ""), null);
                        return true;
                    } catch (Exception e2) {
                        TapjoyLog.e("Exception in evaluateJavascript. Device not supported. " + e2);
                    }
                }
                return false;
            }
        } catch (Exception e3) {
            TapjoyLog.d("Exception getting NetworkInfo: " + e3.getLocalizedMessage());
        }
        tJWebViewActivity.showErrorDialog();
        return true;
    }
}
