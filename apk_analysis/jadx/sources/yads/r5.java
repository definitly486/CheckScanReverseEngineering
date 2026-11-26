package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class r5 {
    public final s5 a;
    public final Map b;

    public r5(s5 s5Var, Map map) {
        this.a = s5Var;
        this.b = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r5)) {
            return false;
        }
        r5 r5Var = (r5) obj;
        return this.a == r5Var.a && defpackage.aa4.e(this.b, r5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AdLoadingPhase(adLoadingPhaseType=" + this.a + ", reportParameters=" + this.b + ")";
    }
}
