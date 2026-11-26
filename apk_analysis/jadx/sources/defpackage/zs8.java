package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zs8 implements pz3 {
    public final String a;
    public final String b;

    public zs8(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zs8)) {
            return false;
        }
        zs8 zs8Var = (zs8) obj;
        return this.a.equals(zs8Var.a) && this.b.equals(zs8Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final /* bridge */ /* synthetic */ Object id() {
        return 0;
    }

    public final String toString() {
        return n2.d("TextViewModel(position=", this.a, ", text=", this.b, ")");
    }
}
