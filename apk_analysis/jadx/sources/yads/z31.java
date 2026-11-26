package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class z31 extends a41 {
    public final tx1 a;

    public z31(tx1 tx1Var) {
        this.a = tx1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof z31) && this.a == ((z31) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Relative(value=" + this.a + ")";
    }
}
