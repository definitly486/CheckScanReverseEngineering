package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class f30 implements pz3 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final List<b60> e;
    public final String f;
    public final int g;
    public boolean h;

    public f30() {
        throw null;
    }

    public f30(long j, String str, String str2, String str3, ArrayList arrayList, String str4, int i) {
        str2.getClass();
        str3.getClass();
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = arrayList;
        this.f = str4;
        this.g = i;
        this.h = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f30)) {
            return false;
        }
        f30 f30Var = (f30) obj;
        return this.a == f30Var.a && aa4.e(this.b, f30Var.b) && aa4.e(this.c, f30Var.c) && aa4.e(this.d, f30Var.d) && aa4.e(this.e, f30Var.e) && aa4.e(this.f, f30Var.f) && this.g == f30Var.g && this.h == f30Var.h;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.f + this.h + this.g;
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        String str = this.b;
        int iB = zg.b(zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d);
        List<b60> list = this.e;
        return Boolean.hashCode(this.h) + ej0.b(this.g, zg.b((iB + (list != null ? list.hashCode() : 0)) * 31, 31, this.f), 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }

    public final String toString() {
        boolean z = this.h;
        StringBuilder sbD = ah.d(this.a, "BalanceGroupOperationViewModel(id=", ", icon=", this.b);
        kv2.c(sbD, ", title=", this.c, ", sum=", this.d);
        sbD.append(", subOperations=");
        sbD.append(this.e);
        sbD.append(", status=");
        sbD.append(this.f);
        sbD.append(", colorStatus=");
        sbD.append(this.g);
        sbD.append(", isExpanded=");
        sbD.append(z);
        sbD.append(")");
        return sbD.toString();
    }
}
