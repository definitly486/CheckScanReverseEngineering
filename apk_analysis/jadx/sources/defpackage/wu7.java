package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class wu7 implements cs0 {
    public final List<pz3> a;

    /* JADX WARN: Multi-variable type inference failed */
    public wu7(List<? extends pz3> list) {
        list.getClass();
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof wu7) && aa4.e(this.a, ((wu7) obj).a);
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
        return this.a;
    }

    public final String toString() {
        return rs2.c("ShopSearchChipViewModel(chips=", this.a, ")");
    }
}
