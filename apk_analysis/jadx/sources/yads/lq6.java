package yads;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes6.dex */
public final class lq6 implements Runnable {
    public final /* synthetic */ WebView b;
    public final /* synthetic */ String c;
    public final /* synthetic */ nq6 d;

    public lq6(nq6 nq6Var, WebView webView, String str) {
        this.d = nq6Var;
        this.b = webView;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        nq6 nq6Var = this.d;
        WebView webView = this.b;
        String str = this.c;
        nq6Var.getClass();
        nq6.a(webView, str);
    }
}
