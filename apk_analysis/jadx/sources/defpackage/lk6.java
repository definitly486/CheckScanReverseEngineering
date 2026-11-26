package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class lk6 implements pz3 {
    public final List<ti6> a;

    public lk6(List<ti6> list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof lk6) && this.a.equals(((lk6) obj).a);
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
        return "products_list";
    }

    public final String toString() {
        return rs2.c("ProductsViewModel(items=", this.a, ")");
    }
}
