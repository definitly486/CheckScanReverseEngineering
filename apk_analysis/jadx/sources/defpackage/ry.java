package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ry<T> {
    public final T a;
    public final ig6 b;
    public final dz c;

    /* JADX WARN: Multi-variable type inference failed */
    public ry(Object obj, ig6 ig6Var, dz dzVar) {
        if (obj == 0) {
            o2.d("Null payload");
            throw null;
        }
        this.a = obj;
        if (ig6Var == null) {
            o2.d("Null priority");
            throw null;
        }
        this.b = ig6Var;
        this.c = dzVar;
    }

    public static ry b(Object obj) {
        return new ry(obj, ig6.DEFAULT, null);
    }

    public final dz a() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ry)) {
            return false;
        }
        ry ryVar = (ry) obj;
        if (!this.a.equals(ryVar.a) || !this.b.equals(ryVar.b)) {
            return false;
        }
        dz dzVar = this.c;
        if (dzVar == null) {
            return ryVar.a() == null;
        }
        return dzVar.equals(ryVar.a());
    }

    public final int hashCode() {
        int iHashCode = ((((1000003 * 1000003) ^ this.a.hashCode()) * 1000003) ^ this.b.hashCode()) * 1000003;
        dz dzVar = this.c;
        return ((dzVar == null ? 0 : dzVar.hashCode()) ^ iHashCode) * 1000003;
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.a + ", priority=" + this.b + ", productData=" + this.c + ", eventContext=null}";
    }
}
