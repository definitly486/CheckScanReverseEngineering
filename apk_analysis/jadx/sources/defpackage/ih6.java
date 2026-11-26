package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ih6 implements pz3 {
    public final String a;
    public final String b;
    public final ArrayList c;

    public ih6(String str, String str2, ArrayList arrayList) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ih6)) {
            return false;
        }
        ih6 ih6Var = (ih6) obj;
        return aa4.e(this.a, ih6Var.a) && this.b.equals(ih6Var.b) && this.c.equals(ih6Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return cg.d(this.a, this.b, qn1.a0(this.c, null, null, null, 0, null, 63));
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return bj.c("cashbacks_", this.a);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("ProductCashbacksViewModel(title=", this.a, ", subtitle=", this.b, ", cashbacks=");
        sbD.append(this.c);
        sbD.append(")");
        return sbD.toString();
    }
}
