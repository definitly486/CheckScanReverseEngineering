package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class fi0 {
    public static final ei0 Companion = new ei0();
    public final String a;
    public final String b;

    public fi0(int i, String str, String str2) {
        if (3 != (i & 3)) {
            defpackage.r96.f(di0.b, i, 3);
            throw null;
        }
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fi0)) {
            return false;
        }
        fi0 fi0Var = (fi0) obj;
        return defpackage.aa4.e(this.a, fi0Var.a) && defpackage.aa4.e(this.b, fi0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("DebugPanelWaterfallParameter(name=", this.a, ", value=", this.b, ")");
    }
}
