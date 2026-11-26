package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class oa3 implements pz3 {
    public final int a;
    public final String b;
    public final boolean c;

    public oa3(int i, String str, boolean z) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = z;
    }

    public static oa3 d(oa3 oa3Var, boolean z) {
        int i = oa3Var.a;
        String str = oa3Var.b;
        str.getClass();
        return new oa3(i, str, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oa3)) {
            return false;
        }
        oa3 oa3Var = (oa3) obj;
        return this.a == oa3Var.a && aa4.e(this.b, oa3Var.b) && this.c == oa3Var.c;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        return dh.e(ng.e(this.a, "FilterViewModel(id=", ", title=", this.b, ", isSelected="), this.c, ")");
    }
}
