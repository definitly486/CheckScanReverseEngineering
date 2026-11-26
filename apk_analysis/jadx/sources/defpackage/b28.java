package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class b28 {
    public final int a;
    public final long b;

    public b28(int i, long j) {
        this.a = i;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b28)) {
            return false;
        }
        b28 b28Var = (b28) obj;
        return this.a == b28Var.a && this.b == b28Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(5000L) + vg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        return "SlideProgressBarInfo(index=" + this.a + ", id=" + this.b + ", duration=5000)";
    }
}
