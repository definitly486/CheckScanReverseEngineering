package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.my.target.ph;
import defpackage.i01;
import defpackage.ng;
import defpackage.y14;
import defpackage.yy9;

/* JADX INFO: loaded from: classes4.dex */
public final class ph extends h1 {
    public static final /* synthetic */ int h = 0;
    public boolean e;
    public boolean f;
    public long g;

    public interface a {
    }

    public static final class b extends WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String strMessage = consoleMessage.message();
            y14.r(null, "JS Console Message at line " + consoleMessage.lineNumber() + ": " + strMessage);
            return false;
        }
    }

    public ph(Context context) {
        super(context);
        this.g = 0L;
        b bVar = new b();
        c cVar = new c();
        new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener()).setIsLongpressEnabled(false);
        setOnTouchListener(new View.OnTouchListener() { // from class: o5a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                int i = ph.h;
                int action = motionEvent.getAction();
                ph phVar = this.b;
                if (action == 0) {
                    phVar.g = Long.MAX_VALUE;
                    y14.r(null, "ShoppableWebView: action down");
                    phVar.onTouchEvent(motionEvent);
                    return false;
                }
                if (action == 1) {
                    phVar.g = System.currentTimeMillis();
                    y14.r(null, "ShoppableWebView: action up");
                    phVar.f = true;
                    return false;
                }
                if (action != 2) {
                    if (action != 3) {
                        return false;
                    }
                    phVar.g = System.currentTimeMillis();
                    y14.r(null, "ShoppableWebView: action cancel");
                    return false;
                }
                y14.r(null, "ShoppableWebView: action move");
                phVar.g = Long.MAX_VALUE;
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (x < 0.0f || x > view.getWidth() || y < 0.0f || y > view.getHeight()) {
                    return false;
                }
                phVar.onTouchEvent(motionEvent);
                return false;
            }
        });
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setWebViewBackgroundColor(-16777216);
        WebSettings settings = getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        setWebChromeClient(bVar);
        setWebViewClient(cVar);
    }

    public long getAndResetInteractionEnd() {
        long j = this.g;
        this.g = 0L;
        return j;
    }

    public void setListener(a aVar) {
    }

    public final class c extends yy9 {
        public c() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            ph phVar = ph.this;
            if (phVar.e) {
                return;
            }
            phVar.e = true;
            y14.r(null, "ShoppableWebView$MyWebViewClient: page loaded");
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            y14.r(null, "ShoppableWebView$MyWebViewClient: page started");
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            CharSequence description = webResourceError.getDescription();
            String string = description != null ? description.toString() : null;
            i01.d(ng.e(webResourceError.getErrorCode(), "ShoppableWebView$MyWebViewClient: load failed, error - ", ", description - ", string, ", url - "), webResourceRequest.getUrl().toString(), null);
        }

        @Override // android.webkit.WebViewClient
        public final void onScaleChanged(WebView webView, float f, float f2) {
            super.onScaleChanged(webView, f, f2);
            y14.r(null, "ShoppableWebView$MyWebViewClient: new scale - " + f2 + ", old scale - " + f);
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url;
            ph phVar = ph.this;
            if (!phVar.f || (url = webResourceRequest.getUrl()) == null) {
                return true;
            }
            url.toString();
            phVar.f = false;
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            ph phVar = ph.this;
            if (phVar.f && str != null) {
                phVar.f = false;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            i01.d(ng.e(i, "ShoppableWebView$MyWebViewClient: load failed, error - ", ", description - ", str, ", url - "), str2, null);
            super.onReceivedError(webView, i, str, str2);
        }
    }
}
