package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class ci0 {
    public static final bi0 Companion = new bi0();
    public final String a;
    public final String b;

    public ci0(int i, String str, String str2) {
        if (3 != (i & 3)) {
            defpackage.r96.f(ai0.b, i, 3);
            throw null;
        }
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ci0)) {
            return false;
        }
        ci0 ci0Var = (ci0) obj;
        return defpackage.aa4.e(this.a, ci0Var.a) && defpackage.aa4.e(this.b, ci0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("DebugPanelWaterfallCurrency(name=", this.a, ", symbol=", this.b, ")");
    }
}
