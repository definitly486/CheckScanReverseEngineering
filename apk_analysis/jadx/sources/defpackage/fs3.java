package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class fs3 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final List<sv7.c> e;

    public fs3(int i, String str, String str2, String str3, List<sv7.c> list) {
        str.getClass();
        str3.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fs3)) {
            return false;
        }
        fs3 fs3Var = (fs3) obj;
        return this.a == fs3Var.a && aa4.e(this.b, fs3Var.b) && this.c.equals(fs3Var.c) && aa4.e(this.d, fs3Var.d) && this.e.equals(fs3Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return qn1.a0(this.e, null, null, null, 0, null, 63);
    }

    public final int hashCode() {
        return this.e.hashCode() + zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "GroupItemRectangleViewModel(id=", ", title=", this.b, ", subTitle=");
        kv2.c(sbE, this.c, ", imageUrl=", this.d, ", shops=");
        return bg.e(")", this.e, sbE);
    }
}
