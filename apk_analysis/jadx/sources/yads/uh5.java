package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class uh5 {
    public static final uh5 c = new uh5(0, 0);
    public final long a;
    public final long b;

    public uh5(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && uh5.class == obj.getClass()) {
            uh5 uh5Var = (uh5) obj;
            if (this.a == uh5Var.a && this.b == uh5Var.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[timeUs=");
        sb.append(this.a);
        sb.append(", position=");
        return defpackage.k2.b(this.b, "]", sb);
    }
}
