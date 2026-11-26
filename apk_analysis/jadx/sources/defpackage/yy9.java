package defpackage;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes4.dex */
public abstract class yy9 extends WebViewClient {
    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        pw9 pw9Var = y14.k;
        if (pw9Var == null) {
            y14.r(null, "MyTargetWebViewClient: can't verify ssl Error – certData is null");
            sslErrorHandler.cancel();
        } else if (pn9.a(sslError, pw9Var.b)) {
            sslErrorHandler.proceed();
        } else {
            y14.r(null, "MyTargetWebViewClient: ssl error not verified");
            sslErrorHandler.cancel();
        }
    }
}
