package yads;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import defpackage.ra8;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class w3 extends WebViewClient {
    public static final /* synthetic */ defpackage.ze4[] d = {cb.a(w3.class, "context", "getContext()Landroid/content/Context;", 0)};
    public final e55 a;
    public final kk6 b = new kk6();
    public final q56 c = new q56();

    public w3(Context context) {
        this.a = new e55(context);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        e55 e55Var = this.a;
        defpackage.ze4 ze4Var = d[0];
        Object obj = (Context) e55Var.a.get();
        x3 x3Var = obj instanceof x3 ? (x3) obj : null;
        if (x3Var != null) {
            ((a2) x3Var).a(8);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        e55 e55Var = this.a;
        defpackage.ze4 ze4Var = d[0];
        Object obj = (Context) e55Var.a.get();
        x3 x3Var = obj instanceof x3 ? (x3) obj : null;
        if (x3Var != null) {
            ((a2) x3Var).a(0);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (this.b.a(webView.getContext(), sslError)) {
            sslErrorHandler.proceed();
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
    
        if (android.webkit.URLUtil.isNetworkUrl(r8) == false) goto L18;
     */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str != null && str.length() > 0) {
            if (str.length() != 0) {
                Pattern patternCompile = Pattern.compile("http(s?)://");
                patternCompile.getClass();
                String strReplaceFirst = patternCompile.matcher(str).replaceFirst("");
                strReplaceFirst.getClass();
                d56.c.getClass();
                d56[] d56VarArr = {d56.GOOGLE_MARKET_SCHEME, d56.GOOGLE_PLAY_SCHEME, d56.GOOGLE_MARKET_HOST, d56.GOOGLE_PLAY_HOST};
                for (int i = 0; i < 4; i++) {
                    if (!ra8.C(strReplaceFirst, d56VarArr[i].b, false)) {
                    }
                }
            }
            return this.c.a(webView.getContext(), str);
        }
        return false;
    }
}
