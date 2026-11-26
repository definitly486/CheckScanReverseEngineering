package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class vv3 {
    public int a;
    public long[] b = new long[32];

    public final long a(int i) {
        if (i >= 0 && i < this.a) {
            return this.b[i];
        }
        defpackage.bj.d(this.a, defpackage.n7.c(i, "Invalid index ", ", size is "));
        return 0L;
    }

    public final void a(long j) {
        int i = this.a;
        long[] jArrCopyOf = this.b;
        if (i == jArrCopyOf.length) {
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i * 2);
            this.b = jArrCopyOf;
        }
        int i2 = this.a;
        this.a = i2 + 1;
        jArrCopyOf[i2] = j;
    }

    public final long[] a() {
        return Arrays.copyOf(this.b, this.a);
    }
}
