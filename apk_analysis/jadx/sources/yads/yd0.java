package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yd0 implements zd0 {
    public final ci0 a;
    public final List b;

    public yd0(ci0 ci0Var, List list) {
        this.a = ci0Var;
        this.b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yd0)) {
            return false;
        }
        yd0 yd0Var = (yd0) obj;
        return defpackage.aa4.e(this.a, yd0Var.a) && defpackage.aa4.e(this.b, yd0Var.b);
    }

    public final int hashCode() {
        ci0 ci0Var = this.a;
        return this.b.hashCode() + ((ci0Var == null ? 0 : ci0Var.hashCode()) * 31);
    }

    public final String toString() {
        return "Waterfall(currency=" + this.a + ", cpmFloors=" + this.b + ")";
    }
}
