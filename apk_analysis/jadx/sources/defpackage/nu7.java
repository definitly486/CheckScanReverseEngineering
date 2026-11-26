package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class nu7 implements cs0 {
    public final List<er6> a;

    public nu7(List<er6> list) {
        list.getClass();
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nu7) && aa4.e(this.a, ((nu7) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return qn1.a0(this.a, new String(), null, null, 0, null, 62);
    }

    public final String toString() {
        return rs2.c("ShopCouponsViewModel(items=", this.a, ")");
    }
}
