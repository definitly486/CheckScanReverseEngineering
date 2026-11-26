package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ip6 implements lp6 {
    public final ArrayList a;

    public ip6(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ip6) && this.a.equals(((ip6) obj).a);
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
        return Integer.valueOf(this.a.size());
    }

    public final String toString() {
        return "PromoSelectCardTagsViewModel(tags=" + this.a + ")";
    }
}
