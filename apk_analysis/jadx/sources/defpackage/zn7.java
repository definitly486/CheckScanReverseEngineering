package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zn7 implements pz3 {
    public final int a;
    public final String b;
    public final boolean c;
    public final List<pz3> d;
    public final String e;

    public zn7(List list, String str, int i, String str2, boolean z) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = z;
        this.d = list;
        this.e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zn7)) {
            return false;
        }
        zn7 zn7Var = (zn7) obj;
        return this.a == zn7Var.a && aa4.e(this.b, zn7Var.b) && this.c == zn7Var.c && this.d.equals(zn7Var.d) && aa4.e(this.e, zn7Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + qn1.a0(this.d, null, null, null, 0, null, 63) + this.a + this.e;
    }

    public final int hashCode() {
        int iB = e2.b(this.d, tg.c(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31);
        String str = this.e;
        return iB + (str == null ? 0 : str.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "SelectionViewModel(id=", ", title=", this.b, ", isCollapsed=");
        sbE.append(this.c);
        sbE.append(", products=");
        sbE.append(this.d);
        sbE.append(", shopIconUrl=");
        return me0.d(sbE, this.e, ")");
    }
}
