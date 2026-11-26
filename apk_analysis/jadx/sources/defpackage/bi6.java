package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class bi6 implements pz3 {
    public final String a;
    public final ArrayList b;

    public bi6(String str, ArrayList arrayList) {
        str.getClass();
        this.a = str;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bi6)) {
            return false;
        }
        bi6 bi6Var = (bi6) obj;
        return aa4.e(this.a, bi6Var.a) && this.b.equals(bi6Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return bj.c(qn1.a0(this.b, null, null, null, 0, null, 63), this.a);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return "ProductOfferConditionsViewModel(title=" + this.a + ", conditions=" + this.b + ")";
    }
}
