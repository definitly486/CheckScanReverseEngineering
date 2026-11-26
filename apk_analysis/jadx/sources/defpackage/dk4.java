package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class dk4 implements pz3 {
    public final List<String> a;

    public dk4(List list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dk4) && this.a.equals(((dk4) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return "Условия без статуса:".concat(qn1.a0(this.a, null, null, null, 0, null, 63));
    }

    public final int hashCode() {
        return this.a.hashCode() + 128050016;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "Условия без статуса:";
    }

    public final String toString() {
        return rs2.c("LandingTermsViewModel(title=Условия без статуса:, terms=", this.a, ")");
    }
}
