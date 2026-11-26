package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ka3 implements pz3 {
    public final List<oa3> a;

    public ka3(List<oa3> list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ka3) && this.a.equals(((ka3) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return qn1.a0(this.a, null, null, null, 0, null, 63);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "filters_holder_".concat(qn1.a0(this.a, null, null, null, 0, null, 63));
    }

    public final String toString() {
        return rs2.c("FilterHolderViewModel(filters=", this.a, ")");
    }
}
