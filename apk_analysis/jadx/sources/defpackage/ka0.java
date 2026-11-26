package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ka0 implements pz3 {
    public final String a;
    public final ArrayList b;

    public ka0(String str, ArrayList arrayList) {
        str.getClass();
        this.a = str;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ka0)) {
            return false;
        }
        ka0 ka0Var = (ka0) obj;
        return aa4.e(this.a, ka0Var.a) && this.b.equals(ka0Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, qn1.a0(this.b, null, null, null, 0, null, 63));
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return "BankLandingBenefitsViewModel(title=" + this.a + ", benefits=" + this.b + ")";
    }
}
