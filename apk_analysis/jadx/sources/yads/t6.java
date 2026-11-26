package yads;

import android.net.Uri;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class t6 implements ln1 {
    public final r6 a;

    public t6(r6 r6Var) {
        this.a = r6Var;
    }

    @Override // yads.ln1
    public final boolean a(Uri uri) {
        v6 v6Var;
        if (!defpackage.aa4.e(uri.getHost(), "showNextAd")) {
            return false;
        }
        r6 r6Var = this.a;
        int i = r6Var.m - 1;
        if (i == r6Var.d.c && !r6Var.n) {
            r6Var.n = true;
            r6Var.b.b();
        }
        if (r6Var.m < r6Var.j.size()) {
            rr3 rr3Var = (rr3) defpackage.qn1.W(i, r6Var.j);
            if (rr3Var != null) {
                rr3Var.b();
            }
            u6 u6Var = (u6) defpackage.qn1.W(i, r6Var.k);
            if (((u6Var == null || (v6Var = u6Var.b) == null) ? null : v6Var.a) == fm5.LAST) {
                int size = r6Var.j.size() - 1;
                r6Var.m = size;
                Iterator it = r6Var.k.subList(i, size).iterator();
                long j = 0;
                while (it.hasNext()) {
                    j += ((u6) it.next()).a;
                }
                r6Var.g.a += j;
                l10 l10Var = r6Var.h;
                l10Var.a += l10Var.b;
                l10Var.b = 0L;
                r6Var.a(r6Var.m);
            } else {
                r6Var.b();
            }
        }
        return true;
    }
}
