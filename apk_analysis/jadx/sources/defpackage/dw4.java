package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class dw4 implements om1<Long>, Iterable<Long>, re4 {
    public final long b;
    public final long c;

    public dw4(long j, long j2) {
        this.b = j;
        if (j < j2) {
            long j3 = j2 % 1;
            long j4 = j % 1;
            long j5 = ((j3 < 0 ? j3 + 1 : j3) - (j4 < 0 ? j4 + 1 : j4)) % 1;
            j2 -= j5 < 0 ? j5 + 1 : j5;
        }
        this.c = j2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dw4)) {
            return false;
        }
        if (isEmpty() && ((dw4) obj).isEmpty()) {
            return true;
        }
        dw4 dw4Var = (dw4) obj;
        return this.b == dw4Var.b && this.c == dw4Var.c;
    }

    @Override // defpackage.om1
    public final Comparable getEndInclusive() {
        return Long.valueOf(this.c);
    }

    @Override // defpackage.om1
    public final Comparable getStart() {
        return Long.valueOf(this.b);
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j = this.b;
        long j2 = 31 * (j ^ (j >>> 32));
        long j3 = this.c;
        return (int) (j2 + (j3 ^ (j3 >>> 32)));
    }

    @Override // defpackage.om1
    public final boolean isEmpty() {
        return this.b > this.c;
    }

    @Override // java.lang.Iterable
    public final Iterator<Long> iterator() {
        return new cw4(this.b, this.c);
    }

    public final String toString() {
        return this.b + ".." + this.c;
    }
}
