package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class xv7 implements cs0 {
    public final List<hc0.b> a;

    public xv7(List<hc0.b> list) {
        list.getClass();
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xv7) && aa4.e(this.a, ((xv7) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return "ShopsSpecialViewModel";
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "ShopsSpecialViewModel";
    }

    public final String toString() {
        return rs2.c("ShopsSpecialViewModel(items=", this.a, ")");
    }
}
