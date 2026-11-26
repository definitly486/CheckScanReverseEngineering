package yads;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

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
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldOverrideUrlLoading(android.webkit.WebView r7, java.lang.String r8) {
        /*
            r6 = this;
            r0 = 0
            if (r8 == 0) goto L5a
            int r1 = r8.length()
            if (r1 <= 0) goto L5a
            int r1 = r8.length()
            if (r1 != 0) goto L10
            goto L49
        L10:
            java.lang.String r1 = "http(s?)://"
            java.util.regex.Pattern r1 = java.util.regex.Pattern.compile(r1)
            r1.getClass()
            java.lang.String r2 = ""
            java.util.regex.Matcher r1 = r1.matcher(r8)
            java.lang.String r1 = r1.replaceFirst(r2)
            r1.getClass()
            yads.c56 r2 = yads.d56.c
            r2.getClass()
            yads.d56 r2 = yads.d56.GOOGLE_MARKET_SCHEME
            yads.d56 r3 = yads.d56.GOOGLE_PLAY_SCHEME
            yads.d56 r4 = yads.d56.GOOGLE_MARKET_HOST
            yads.d56 r5 = yads.d56.GOOGLE_PLAY_HOST
            yads.d56[] r2 = new yads.d56[]{r2, r3, r4, r5}
            r3 = r0
        L38:
            r4 = 4
            if (r3 >= r4) goto L49
            r4 = r2[r3]
            java.lang.String r4 = r4.b
            boolean r4 = defpackage.ra8.C(r1, r4, r0)
            if (r4 == 0) goto L46
            goto L4f
        L46:
            int r3 = r3 + 1
            goto L38
        L49:
            boolean r1 = android.webkit.URLUtil.isNetworkUrl(r8)
            if (r1 != 0) goto L5a
        L4f:
            yads.q56 r6 = r6.c
            android.content.Context r7 = r7.getContext()
            boolean r6 = r6.a(r7, r8)
            return r6
        L5a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.w3.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
    }
}
