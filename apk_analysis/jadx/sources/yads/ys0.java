package yads;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import defpackage.ws6;

/* JADX INFO: loaded from: classes6.dex */
public final class ys0 {
    public final ws6 a;

    public ys0(ws6 ws6Var) {
        this.a = ws6Var;
    }

    public static void a(xr0 xr0Var, fs2 fs2Var) {
        Uri uri;
        as2 as2Var = xr0Var.d;
        if (as2Var == null || (uri = (Uri) as2Var.a(fs2Var)) == null) {
            return;
        }
        String scheme = uri.getScheme();
        if (defpackage.aa4.e(scheme, ProxyConfig.MATCH_HTTP) || defpackage.aa4.e(scheme, ProxyConfig.MATCH_HTTPS)) {
            return;
        }
        int i = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        cr3.a();
    }
}
