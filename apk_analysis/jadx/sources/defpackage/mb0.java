package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class mb0 implements pz3 {
    public final String a;
    public final ArrayList b;

    public mb0(String str, ArrayList arrayList) {
        str.getClass();
        this.a = str;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mb0)) {
            return false;
        }
        mb0 mb0Var = (mb0) obj;
        return aa4.e(this.a, mb0Var.a) && this.b.equals(mb0Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, qn1.a0(this.b, null, null, null, 0, null, 63));
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return "BankLandingTextsViewModel(title=" + this.a + ", texts=" + this.b + ")";
    }
}
