package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.GestureDetector;
import android.webkit.ConsoleMessage;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.my.target.common.views.Html5View;
import defpackage.i01;
import defpackage.ml0;
import defpackage.ng;
import defpackage.rk7;
import defpackage.y14;
import defpackage.yy9;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class e1 extends h1 {
    public static final /* synthetic */ int k = 0;
    public final f e;
    public a f;
    public h g;
    public g h;
    public boolean i;
    public boolean j;

    public interface a {
        void a();

        void a(String str);

        void b(String str);

        void c(WebView webView);
    }

    public static final class b extends WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            y14.r(null, "BannerWebView$MyWebChromeClient: JS console message " + consoleMessage.message() + " at line " + consoleMessage.lineNumber());
            return false;
        }
    }

    public interface d {
    }

    public interface e {
    }

    public static final class f extends GestureDetector {
        public final e1 a;
        public ml0 b;
        public e c;

        public f(Context context, e1 e1Var) {
            super(context, new GestureDetector.SimpleOnGestureListener());
            this.a = e1Var;
            setIsLongpressEnabled(false);
        }
    }

    public interface g {
    }

    public interface h {
    }

    public e1(Context context) {
        super(context);
        f fVar = new f(getContext(), this);
        this.e = fVar;
        b bVar = new b();
        c cVar = new c();
        fVar.b = new ml0(this, 6);
        setOnTouchListener(new rk7(this, 1));
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
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

    public void setBannerWebViewListener(a aVar) {
        this.f = aVar;
    }

    public void setData(String str) {
        this.i = false;
        this.j = false;
        WebView webView = this.b;
        if (webView == null) {
            return;
        }
        try {
            webView.loadDataWithBaseURL("https://ad.mail.ru/", str, "text/html", "UTF-8", null);
        } catch (Throwable th) {
            h1.c(th);
        }
    }

    public void setForceMediaPlayback(boolean z) {
        WebView webView = getWebView();
        if (webView == null) {
            return;
        }
        webView.getSettings().setMediaPlaybackRequiresUserGesture(!z);
    }

    public void setOnLayoutListener(d dVar) {
    }

    public void setUserMotionEventListener(e eVar) {
        this.e.c = eVar;
    }

    public void setWebViewLoadingErrorListener(g gVar) {
        this.h = gVar;
    }

    public void setWebViewLoadingStartListener(h hVar) {
        this.g = hVar;
    }

    public final class c extends yy9 {
        public final List a = Arrays.asList(-2, -6);

        public c() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            e1 e1Var = e1.this;
            if (e1Var.i) {
                return;
            }
            e1Var.i = true;
            y14.r(null, "BannerWebView$MyWebViewClient: Page loaded");
            super.onPageFinished(webView, str);
            a aVar = e1Var.f;
            if (aVar != null) {
                aVar.c(webView);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            y14.r(null, "BannerWebView$MyWebViewClient: Load page started");
            super.onPageStarted(webView, str, bitmap);
            h hVar = e1.this.g;
            if (hVar == null) {
                return;
            }
            Html5View.this.e = 1;
            throw null;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            CharSequence description = webResourceError.getDescription();
            String string = description != null ? description.toString() : null;
            int errorCode = webResourceError.getErrorCode();
            i01.d(ng.e(errorCode, "BannerWebView$MyWebViewClient: Load failed. Error - ", ", description - ", string, ", url - "), webResourceRequest.getUrl().toString(), null);
            e1 e1Var = e1.this;
            a aVar = e1Var.f;
            if (aVar != null) {
                if (string == null) {
                    string = "Unknown JS error";
                }
                aVar.a(string);
            }
            if (e1Var.h != null) {
                if (!webResourceRequest.isForMainFrame()) {
                    String lastPathSegment = webResourceRequest.getUrl().getLastPathSegment();
                    boolean z = lastPathSegment != null && lastPathSegment.endsWith(".html");
                    String str = webResourceRequest.getRequestHeaders().get("Accept");
                    boolean z2 = str != null && str.contains("text/html");
                    if (!z && !z2 && !this.a.contains(Integer.valueOf(errorCode))) {
                        return;
                    }
                }
                Html5View html5View = Html5View.this;
                if (html5View.e == 3) {
                    return;
                }
                html5View.e = 3;
                throw null;
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            webResourceResponse.getReasonPhrase();
            webResourceResponse.getStatusCode();
            webResourceRequest.getUrl().toString();
            e1 e1Var = e1.this;
            if (e1Var.h == null || !webResourceRequest.isForMainFrame()) {
                return;
            }
            Html5View html5View = Html5View.this;
            if (html5View.e == 3) {
                return;
            }
            html5View.e = 3;
            throw null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            y14.u(null, "WebView crashed");
            a aVar = e1.this.f;
            if (aVar == null) {
                return true;
            }
            aVar.a();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onScaleChanged(WebView webView, float f, float f2) {
            super.onScaleChanged(webView, f, f2);
            y14.r(null, "BannerWebView$MyWebViewClient: Scale new - " + f2 + ", old - " + f);
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url;
            e1 e1Var = e1.this;
            if (!e1Var.j || (url = webResourceRequest.getUrl()) == null) {
                return true;
            }
            String string = url.toString();
            a aVar = e1Var.f;
            if (aVar != null) {
                aVar.b(string);
            }
            e1Var.j = false;
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            e1 e1Var = e1.this;
            if (e1Var.j && str != null) {
                a aVar = e1Var.f;
                if (aVar != null) {
                    aVar.b(str);
                }
                e1Var.j = false;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            i01.d(ng.e(i, "BannerWebView$MyWebViewClient: Load failed. Error - ", ", description - ", str, ", url - "), str2, null);
            super.onReceivedError(webView, i, str, str2);
            e1 e1Var = e1.this;
            a aVar = e1Var.f;
            if (aVar != null) {
                if (str == null) {
                    str = "unknown JS error";
                }
                aVar.a(str);
            }
            g gVar = e1Var.h;
            if (gVar != null) {
                Html5View html5View = Html5View.this;
                if (html5View.e == 3) {
                    return;
                }
                html5View.e = 3;
                throw null;
            }
        }
    }
}
