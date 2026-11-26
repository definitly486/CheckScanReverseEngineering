package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class gf5 {
    public Class<?> a;
    public Class<?> b;
    public Class<?> c;

    public gf5(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.a = cls;
        this.b = cls2;
        this.c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gf5.class != obj.getClass()) {
            return false;
        }
        gf5 gf5Var = (gf5) obj;
        return this.a.equals(gf5Var.a) && this.b.equals(gf5Var.b) && eb9.b(this.c, gf5Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        Class<?> cls = this.c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.a + ", second=" + this.b + '}';
    }

    public gf5() {
    }
}
