package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class n10 extends lu0 {
    public final m10 a;

    public n10(m10 m10Var) {
        this.a = m10Var;
    }

    @Override // yads.lu0
    public final boolean a(xr0 xr0Var, vh2 vh2Var, fs2 fs2Var) {
        as2 as2Var = xr0Var.k;
        boolean z = false;
        if (as2Var != null) {
            String string = ((Uri) as2Var.a(fs2Var)).toString();
            if (defpackage.aa4.e(string, "close_ad")) {
                m10 m10Var = this.a;
                eo0.a(m10Var.a);
                m10Var.b.e();
            } else if (defpackage.aa4.e(string, "close_dialog")) {
                eo0.a(this.a.a);
            }
            z = true;
        }
        return z ? z : super.a(xr0Var, vh2Var, fs2Var);
    }
}
