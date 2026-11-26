package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class w74 implements Iterable<Integer>, re4 {
    public final int b;
    public final int c;
    public final int d;

    public w74(int i, int i2, int i3) {
        if (i3 == 0) {
            fg.c("Step must be non-zero.");
            throw null;
        }
        if (i3 == Integer.MIN_VALUE) {
            fg.c("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        this.b = i;
        this.c = nh5.a(i, i2, i3);
        this.d = i3;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final x74 iterator() {
        return new x74(this.b, this.c, this.d);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof w74)) {
            return false;
        }
        if (isEmpty() && ((w74) obj).isEmpty()) {
            return true;
        }
        w74 w74Var = (w74) obj;
        return this.b == w74Var.b && this.c == w74Var.c && this.d == w74Var.d;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.b * 31) + this.c) * 31) + this.d;
    }

    public boolean isEmpty() {
        int i = this.c;
        int i2 = this.d;
        int i3 = this.b;
        if (i2 > 0) {
            return i3 > i;
        }
        return i3 < i;
    }

    public String toString() {
        StringBuilder sb;
        int i = this.c;
        int i2 = this.d;
        int i3 = this.b;
        if (i2 > 0) {
            sb = new StringBuilder();
            sb.append(i3);
            sb.append("..");
            sb.append(i);
            sb.append(" step ");
            sb.append(i2);
        } else {
            sb = new StringBuilder();
            sb.append(i3);
            sb.append(" downTo ");
            sb.append(i);
            sb.append(" step ");
            sb.append(-i2);
        }
        return sb.toString();
    }
}
