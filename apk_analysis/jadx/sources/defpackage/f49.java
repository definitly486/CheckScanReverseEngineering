package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class f49 implements Comparable<f49> {
    public final byte b;

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(f49 f49Var) {
        return aa4.f(this.b & 255, f49Var.b & 255);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f49) {
            return this.b == ((f49) obj).b;
        }
        return false;
    }

    public final int hashCode() {
        return Byte.hashCode(this.b);
    }

    public final String toString() {
        return String.valueOf(this.b & 255);
    }
}
