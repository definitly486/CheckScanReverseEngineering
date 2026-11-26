package com.tapjoy;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import defpackage.jg;
import defpackage.n7;
import java.io.FileInputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends WebViewClient {
    public final /* synthetic */ TJAdUnit a;

    public d(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        TJAdUnitJSBridge tJAdUnitJSBridge;
        jg.f("onPageFinished: ", str);
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit.j) {
            return;
        }
        TJAdUnitActivity tJAdUnitActivity = tJAdUnit.b;
        if (tJAdUnitActivity != null) {
            tJAdUnitActivity.setProgressSpinnerVisibility(false);
        }
        TJAdUnit tJAdUnit2 = this.a;
        tJAdUnit2.j = true;
        if (tJAdUnit2.f && (tJAdUnitJSBridge = tJAdUnit2.c) != null) {
            tJAdUnitJSBridge.display();
        }
        TJAdUnitJSBridge tJAdUnitJSBridge2 = this.a.c;
        if (tJAdUnitJSBridge2 != null) {
            tJAdUnitJSBridge2.flushMessageQueue();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        jg.f("onPageStarted: ", str);
        TJAdUnitJSBridge tJAdUnitJSBridge = this.a.c;
        if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.allowRedirect = true;
            tJAdUnitJSBridge.customClose = false;
            tJAdUnitJSBridge.closeRequested = false;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        jg.f("error:", str);
        TJAdUnitActivity tJAdUnitActivity = this.a.b;
        if (tJAdUnitActivity != null) {
            tJAdUnitActivity.showErrorDialog();
        }
        if (this.a.getSdkBeacon() != null) {
            com.tapjoy.internal.l0 sdkBeacon = this.a.getSdkBeacon();
            if (!TextUtils.isEmpty(sdkBeacon.d)) {
                HashMap map = new HashMap(sdkBeacon.b);
                map.put("error", "loadFailure");
                new com.tapjoy.internal.k0(sdkBeacon, map).start();
            }
        }
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        TapjoyLog.e("WebView rendering process exited while instantiating a WebViewClient unexpectedly");
        if (this.a.getSdkBeacon() != null) {
            com.tapjoy.internal.l0 sdkBeacon = this.a.getSdkBeacon();
            if (!TextUtils.isEmpty(sdkBeacon.d)) {
                HashMap map = new HashMap(sdkBeacon.b);
                map.put("error", "terminated");
                new com.tapjoy.internal.k0(sdkBeacon, map).start();
            }
        }
        TJAdUnit tJAdUnit = this.a;
        View view = tJAdUnit.d;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.a.d);
            }
            tJAdUnit = this.a;
            tJAdUnit.d = null;
        }
        TJWebView tJWebView = tJAdUnit.e;
        if (tJWebView != null) {
            ViewGroup viewGroup2 = (ViewGroup) tJWebView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.a.e);
            }
            this.a.e.removeAllViews();
            this.a.e.destroy();
            tJAdUnit = this.a;
            tJAdUnit.e = null;
        }
        TJAdUnitJSBridge tJAdUnitJSBridge = tJAdUnit.c;
        if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.cleanUpJSBridge();
            tJAdUnit = this.a;
            tJAdUnit.c = null;
        }
        TJAdUnitActivity tJAdUnitActivity = tJAdUnit.b;
        if (tJAdUnitActivity == null) {
            return true;
        }
        tJAdUnitActivity.finish();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebResourceResponse webResourceResponse;
        TapjoyCacheData cachedDataForURL = this.a.l.getCachedDataForURL(str);
        if (cachedDataForURL != null) {
            try {
                webResourceResponse = new WebResourceResponse(cachedDataForURL.getMimeType(), "UTF-8", new FileInputStream(cachedDataForURL.getLocalFilePath()));
            } catch (Exception unused) {
                webResourceResponse = null;
            }
            if (webResourceResponse != null) {
                StringBuilder sbD = n7.d("Reading request for ", str, " from cache -- localPath: ");
                sbD.append(cachedDataForURL.getLocalFilePath());
                TapjoyLog.d(sbD.toString());
                return webResourceResponse;
            }
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        NetworkInfo activeNetworkInfo;
        String string = webResourceRequest.getUrl().toString();
        TJAdUnit tJAdUnit = this.a;
        try {
            if (tJAdUnit.e.getContext() != null && (activeNetworkInfo = ((ConnectivityManager) tJAdUnit.e.getContext().getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected() && URLUtil.isValidUrl(string)) {
                try {
                    if (string.startsWith("https://" + new URL(TapjoyConnectCore.getInstance().getHostURL()).getHost()) || string.startsWith(TapjoyConnectCore.getInstance().getRedirectDomain()) || string.startsWith(TapjoyUtil.getRedirectDomain(TapjoyConnectCore.getInstance().getPlacementURL()))) {
                        return false;
                    }
                } catch (MalformedURLException unused) {
                }
                if (this.a.c.allowRedirect) {
                    Uri uri = Uri.parse(string);
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(uri);
                    intent.addFlags(268435456);
                    if (this.a.e.getContext() == null) {
                        return false;
                    }
                    try {
                        this.a.e.getContext().startActivity(intent);
                    } catch (Exception e) {
                        TapjoyLog.e("Exception in loading URL. " + e.getMessage());
                        return false;
                    }
                } else {
                    if (!string.startsWith("javascript:")) {
                        return false;
                    }
                    try {
                        this.a.e.evaluateJavascript(string.replaceFirst("javascript:", ""), null);
                    } catch (Exception e2) {
                        TapjoyLog.e("Exception in evaluateJavascript. Device not supported. " + e2);
                        return false;
                    }
                }
            } else {
                TJAdUnitActivity tJAdUnitActivity = this.a.b;
                if (tJAdUnitActivity != null) {
                    tJAdUnitActivity.showErrorDialog();
                }
            }
        } catch (Exception e3) {
            TapjoyLog.d("Exception getting NetworkInfo: " + e3.getLocalizedMessage());
        }
        return true;
    }
}
