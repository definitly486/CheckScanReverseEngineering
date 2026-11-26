package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class s64 {
    public final String a;
    public final int b;
    public final String c;

    public s64(String str, int i, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = i;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s64)) {
            return false;
        }
        s64 s64Var = (s64) obj;
        return aa4.e(this.a, s64Var.a) && this.b == s64Var.b && aa4.e(this.c, s64Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ej0.b(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return me0.d(mz0.a(this.b, "Instruction(title=", this.a, ", icon=", ", description="), this.c, ")");
    }
}
