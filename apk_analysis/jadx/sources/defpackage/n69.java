package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.GeolocationPermissions;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes5.dex */
public final class n69 extends WebChromeClient {
    public final a a;

    public interface a {
        void a(View view, WebChromeClient.CustomViewCallback customViewCallback);

        void b(PermissionRequest permissionRequest);

        boolean c(ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams);

        void d(String str);

        void e(String str);

        void f(String str, GeolocationPermissions.Callback callback);

        void g(int i);

        void h();
    }

    public static final class b extends WebViewClient {
        public final /* synthetic */ WebView b;
        public final /* synthetic */ WebView c;

        public b(WebView webView, WebView webView2) {
            this.b = webView;
            this.c = webView2;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url;
            String string;
            if (webResourceRequest != null && (url = webResourceRequest.getUrl()) != null && (string = url.toString()) != null) {
                n69.this.a.d(string);
            }
            this.b.post(new xz6(this.c, 2));
            return true;
        }
    }

    public n69(a aVar) {
        aVar.getClass();
        this.a = aVar;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        Context context = webView != null ? webView.getContext() : null;
        if (context == null) {
            return false;
        }
        Object obj = message != null ? message.obj : null;
        WebView.WebViewTransport webViewTransport = obj instanceof WebView.WebViewTransport ? (WebView.WebViewTransport) obj : null;
        if (webViewTransport == null) {
            return false;
        }
        WebView webView2 = new WebView(context);
        webView2.setWebViewClient(new b(webView, webView2));
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        this.a.f(str, callback);
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        super.onHideCustomView();
        this.a.h();
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        j59 j59Var;
        if (permissionRequest != null) {
            this.a.b(permissionRequest);
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            super.onPermissionRequest(permissionRequest);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        this.a.g(i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        if (str != null) {
            if (ta8.M(str)) {
                str = null;
            }
            if (str != null) {
                this.a.e(str);
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (view == null || customViewCallback == null) {
            super.onShowCustomView(view, customViewCallback);
        } else {
            this.a.a(view, customViewCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        if (valueCallback == null || fileChooserParams == null) {
            return false;
        }
        return this.a.c(valueCallback, fileChooserParams);
    }
}
