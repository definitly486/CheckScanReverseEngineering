package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ls3 implements pn0 {
    public final d9 a;

    public ls3(d9 d9Var) {
        this.a = d9Var;
    }

    @Override // yads.pn0
    public final boolean a(Context context) {
        tn0[] tn0VarArr = tn0.b;
        return "lightBundle".equals(this.a.k);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ls3) && defpackage.aa4.e(this.a, ((ls3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "LightBundleDesignConstraint(adResponse=" + this.a + ")";
    }
}
