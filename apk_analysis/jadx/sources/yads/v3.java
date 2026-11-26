package yads;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes6.dex */
public final class v3 extends WebChromeClient {
    public static final /* synthetic */ defpackage.ze4[] b = {cb.a(v3.class, "context", "getContext()Landroid/content/Context;", 0)};
    public final e55 a;

    public v3(Context context) {
        this.a = new e55(context);
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        e55 e55Var = this.a;
        defpackage.ze4 ze4Var = b[0];
        Object obj = (Context) e55Var.a.get();
        x3 x3Var = obj instanceof x3 ? (x3) obj : null;
        if (x3Var != null) {
            a2 a2Var = (a2) x3Var;
            int i2 = i * 100;
            a2Var.k.setProgress(i2);
            if (10000 > i2) {
                a2Var.a(0);
            } else {
                a2Var.j.setText(webView.getTitle());
                a2Var.a(8);
            }
        }
    }
}
