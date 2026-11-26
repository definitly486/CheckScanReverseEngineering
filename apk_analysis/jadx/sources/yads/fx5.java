package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class fx5 {
    public long[] a = new long[10];
    public Object[] b = new Object[10];
    public int c;
    public int d;

    public final synchronized void a(Object obj, long j) {
        try {
            int i = this.d;
            if (i > 0) {
                if (j <= this.a[((this.c + i) - 1) % this.b.length]) {
                    a();
                }
            }
            Object[] objArr = this.b;
            int length = objArr.length;
            if (this.d >= length) {
                int i2 = length * 2;
                long[] jArr = new long[i2];
                objArr = new Object[i2];
                int i3 = this.c;
                int i4 = length - i3;
                System.arraycopy(this.a, i3, jArr, 0, i4);
                System.arraycopy(this.b, this.c, objArr, 0, i4);
                int i5 = this.c;
                if (i5 > 0) {
                    System.arraycopy(this.a, 0, jArr, i4, i5);
                    System.arraycopy(this.b, 0, objArr, i4, this.c);
                }
                this.a = jArr;
                this.b = objArr;
                this.c = 0;
            }
            int i6 = this.c;
            int i7 = this.d;
            int length2 = (i6 + i7) % objArr.length;
            this.a[length2] = j;
            objArr[length2] = obj;
            this.d = i7 + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Object b() {
        Object obj;
        int i = this.d;
        obj = null;
        if (i != 0) {
            if (i <= 0) {
                throw new IllegalStateException();
            }
            Object[] objArr = this.b;
            int i2 = this.c;
            Object obj2 = objArr[i2];
            objArr[i2] = null;
            this.c = (i2 + 1) % objArr.length;
            this.d = i - 1;
            obj = obj2;
        }
        return obj;
    }

    public final synchronized Object a(long j) {
        return a(j, true);
    }

    public final Object a(long j, boolean z) {
        long j2 = Long.MAX_VALUE;
        Object obj = null;
        while (true) {
            int i = this.d;
            if (i <= 0) {
                break;
            }
            long[] jArr = this.a;
            int i2 = this.c;
            long j3 = j - jArr[i2];
            if (j3 < 0 && (z || (-j3) >= j2)) {
                break;
            }
            if (i > 0) {
                Object[] objArr = this.b;
                obj = objArr[i2];
                objArr[i2] = null;
                this.c = (i2 + 1) % objArr.length;
                this.d = i - 1;
                j2 = j3;
            } else {
                defpackage.ud.g();
                return null;
            }
        }
        return obj;
    }

    public final synchronized void a() {
        this.c = 0;
        this.d = 0;
        Arrays.fill(this.b, (Object) null);
    }
}
