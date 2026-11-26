package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class on1 extends lu0 {
    public final do0 a;

    public on1(do0 do0Var) {
        this.a = do0Var;
    }

    @Override // yads.lu0
    public final boolean a(xr0 xr0Var, vh2 vh2Var, fs2 fs2Var) {
        as2 as2Var = xr0Var.k;
        if (as2Var != null) {
            Uri uri = (Uri) as2Var.a(fs2Var);
            if (defpackage.aa4.e(uri.getScheme(), "mobileads") && defpackage.aa4.e(uri.getHost(), "closeDialog")) {
                this.a.e();
                return true;
            }
        }
        return super.a(xr0Var, vh2Var, fs2Var);
    }
}
