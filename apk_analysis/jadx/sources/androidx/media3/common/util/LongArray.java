package androidx.media3.common.util;

import defpackage.bj;
import defpackage.n7;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class LongArray {
    private static final int DEFAULT_INITIAL_CAPACITY = 32;
    private int size;
    private long[] values;

    public LongArray(int i) {
        this.values = new long[i];
    }

    public void add(long j) {
        int i = this.size;
        long[] jArrCopyOf = this.values;
        if (i == jArrCopyOf.length) {
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i * 2);
            this.values = jArrCopyOf;
        }
        int i2 = this.size;
        this.size = i2 + 1;
        jArrCopyOf[i2] = j;
    }

    public void addAll(long[] jArr) {
        int length = this.size + jArr.length;
        long[] jArrCopyOf = this.values;
        if (length > jArrCopyOf.length) {
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, Math.max(jArrCopyOf.length * 2, length));
            this.values = jArrCopyOf;
        }
        System.arraycopy(jArr, 0, jArrCopyOf, this.size, jArr.length);
        this.size = length;
    }

    public long get(int i) {
        if (i >= 0 && i < this.size) {
            return this.values[i];
        }
        bj.d(this.size, n7.c(i, "Invalid index ", ", size is "));
        return 0L;
    }

    public int size() {
        return this.size;
    }

    public long[] toArray() {
        return Arrays.copyOf(this.values, this.size);
    }

    public LongArray() {
        this(32);
    }
}
