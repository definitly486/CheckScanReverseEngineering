package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class q15 {
    public final String a;
    public final y74 b;

    public q15(String str, y74 y74Var) {
        this.a = str;
        this.b = y74Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q15)) {
            return false;
        }
        q15 q15Var = (q15) obj;
        return this.a.equals(q15Var.a) && this.b.equals(q15Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "MatchGroup(value=" + this.a + ", range=" + this.b + ')';
    }
}
