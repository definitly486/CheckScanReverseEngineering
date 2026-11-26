package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ho1 implements pn0 {
    public final d9 a;

    public ho1(d9 d9Var) {
        this.a = d9Var;
    }

    @Override // yads.pn0
    public final boolean a(Context context) {
        String str = this.a.k;
        tn0[] tn0VarArr = tn0.b;
        return "divkit".equals(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ho1) && defpackage.aa4.e(this.a, ((ho1) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DivKitDesignConstraint(adResponse=" + this.a + ")";
    }
}
