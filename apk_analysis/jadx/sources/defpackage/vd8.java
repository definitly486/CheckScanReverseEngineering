package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vd8 implements pz3 {
    public final String a;
    public final String b;

    public vd8(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vd8)) {
            return false;
        }
        vd8 vd8Var = (vd8) obj;
        return this.a.equals(vd8Var.a) && this.b.equals(vd8Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return n2.d("SupportChildImageViewModel(id=", this.a, ", url=", this.b, ")");
    }
}
