package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ni6 implements pz3 {
    public final String a;
    public final boolean b;
    public final List<ji6> c;

    public ni6(String str, boolean z, List<ji6> list) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ni6)) {
            return false;
        }
        ni6 ni6Var = (ni6) obj;
        return aa4.e(this.a, ni6Var.a) && this.b == ni6Var.b && this.c.equals(ni6Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return qn1.i0(Boolean.valueOf(this.b), this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + tg.c(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return bg.e(")", this.c, p2.b("ProductShopsViewModel(title=", this.a, ", isCollapsed=", ", shops=", this.b));
    }
}
