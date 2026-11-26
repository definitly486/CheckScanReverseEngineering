package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class fb0 implements pz3 {
    public final String a;
    public final ArrayList b;
    public final String c;

    public fb0(String str, String str2, ArrayList arrayList) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = arrayList;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fb0)) {
            return false;
        }
        fb0 fb0Var = (fb0) obj;
        return aa4.e(this.a, fb0Var.a) && this.b.equals(fb0Var.b) && aa4.e(this.c, fb0Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return cg.d(this.a, qn1.a0(this.b, null, null, null, 0, null, 63), this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + tg.d(this.b, this.a.hashCode() * 31, 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BankLandingStepsViewModel(title=");
        sb.append(this.a);
        sb.append(", steps=");
        sb.append(this.b);
        sb.append(", description=");
        return me0.d(sb, this.c, ")");
    }
}
