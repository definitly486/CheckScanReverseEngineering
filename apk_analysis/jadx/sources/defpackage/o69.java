package defpackage;

import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import javax.net.ssl.TrustManagerFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class o69 extends fn2 {
    public final a b;

    public interface a {
        void a(String str);

        void b();

        void c();

        boolean d(String str);

        void e();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o69(TrustManagerFactory trustManagerFactory, a aVar) {
        super(trustManagerFactory);
        aVar.getClass();
        this.b = aVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.b.b();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.b.a(str);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        if (webResourceError == null || webResourceError.getErrorCode() != -10) {
            this.b.e();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceRequest == null || !webResourceRequest.isForMainFrame() || webResourceResponse == null || webResourceResponse.getStatusCode() < 500) {
            return;
        }
        this.b.e();
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        this.b.c();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        return this.b.d((webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString());
    }
}
