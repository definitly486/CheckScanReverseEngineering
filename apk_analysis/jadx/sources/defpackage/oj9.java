package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class oj9 implements hk9 {
    public final int a;
    public final ArrayList b;

    public oj9(int i, ArrayList arrayList) {
        this.a = i;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oj9)) {
            return false;
        }
        oj9 oj9Var = (oj9) obj;
        return this.a == oj9Var.a && this.b.equals(oj9Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        return "WithdrawalHeaderLogoBannersViewModel(id=" + this.a + ", banners=" + this.b + ")";
    }
}
