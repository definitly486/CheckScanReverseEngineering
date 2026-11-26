package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class y74 extends w74 implements om1<Integer> {
    public static final y74 e = new y74(1, 0, 1);

    public final boolean c(int i) {
        return this.b <= i && i <= this.c;
    }

    @Override // defpackage.w74
    public final boolean equals(Object obj) {
        if (!(obj instanceof y74)) {
            return false;
        }
        if (isEmpty() && ((y74) obj).isEmpty()) {
            return true;
        }
        y74 y74Var = (y74) obj;
        return this.b == y74Var.b && this.c == y74Var.c;
    }

    @Override // defpackage.om1
    public final Comparable getEndInclusive() {
        return Integer.valueOf(this.c);
    }

    @Override // defpackage.om1
    public final Comparable getStart() {
        return Integer.valueOf(this.b);
    }

    @Override // defpackage.w74
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.b * 31) + this.c;
    }

    @Override // defpackage.w74, defpackage.om1
    public final boolean isEmpty() {
        return this.b > this.c;
    }

    @Override // defpackage.w74
    public final String toString() {
        return this.b + ".." + this.c;
    }
}
