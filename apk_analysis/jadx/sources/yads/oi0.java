package yads;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class oi0 {
    public final String a;
    public final vz2 b;
    public final vz2 c;
    public final int d;
    public final int e;

    public oi0(String str, vz2 vz2Var, vz2 vz2Var2, int i, int i2) {
        if (i != 0 && i2 != 0) {
            defpackage.mi2.b();
            throw null;
        }
        if (TextUtils.isEmpty(str)) {
            defpackage.mi2.b();
            throw null;
        }
        this.a = str;
        vz2Var.getClass();
        this.b = vz2Var;
        vz2Var2.getClass();
        this.c = vz2Var2;
        this.d = i;
        this.e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && oi0.class == obj.getClass()) {
            oi0 oi0Var = (oi0) obj;
            if (this.d == oi0Var.d && this.e == oi0Var.e && this.a.equals(oi0Var.a) && this.b.equals(oi0Var.b) && this.c.equals(oi0Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + l4.a((((this.d + 527) * 31) + this.e) * 31, 31, this.a)) * 31);
    }
}
