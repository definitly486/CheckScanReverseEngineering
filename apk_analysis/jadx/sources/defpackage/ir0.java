package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ir0 implements so8 {
    public final String a;
    public final ArrayList b;

    public ir0() {
        throw null;
    }

    public ir0(ArrayList arrayList) {
        this.a = "BonusesPointsBlock";
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ir0)) {
            return false;
        }
        ir0 ir0Var = (ir0) obj;
        return aa4.e(this.a, ir0Var.a) && aa4.e(this.b, ir0Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return qn1.a0(this.b, null, null, null, 0, null, 63);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return "BonusesPointsViewModel(id=" + this.a + ", items=" + this.b + ")";
    }
}
