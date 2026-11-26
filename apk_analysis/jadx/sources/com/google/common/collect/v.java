package com.google.common.collect;

import androidx.media3.muxer.MuxerUtil;
import defpackage.ah;
import defpackage.eg9;
import defpackage.fg;
import defpackage.jh;
import defpackage.o8;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class v<K> {
    public transient Object[] a;
    public transient int[] b;
    public transient int c;
    public transient int d;
    public transient int[] e;
    public transient long[] f;
    public transient float g;
    public transient int h;

    public final class a extends u.a<K> {
        public final K a;
        public int b;

        public a(int i) {
            this.a = (K) v.this.a[i];
            this.b = i;
        }

        @Override // com.google.common.collect.t.a
        public final K a() {
            return this.a;
        }

        @Override // com.google.common.collect.t.a
        public final int getCount() {
            int i = this.b;
            K k = this.a;
            v vVar = v.this;
            if (i == -1 || i >= vVar.c || !Objects.equals(k, vVar.a[i])) {
                this.b = vVar.d(k);
            }
            int i2 = this.b;
            if (i2 == -1) {
                return 0;
            }
            return vVar.b[i2];
        }
    }

    public final void a(int i) {
        if (i > this.f.length) {
            h(i);
        }
        if (i >= this.h) {
            i(Math.max(2, Integer.highestOneBit(i - 1) << 1));
        }
    }

    public final int b(Object obj) {
        int iD = d(obj);
        if (iD == -1) {
            return 0;
        }
        return this.b[iD];
    }

    public final int c(int i) {
        o8.j(i, this.c);
        return this.b[i];
    }

    public final int d(Object obj) {
        int iG = eg9.g(obj);
        int[] iArr = this.e;
        int i = iArr[(iArr.length - 1) & iG];
        while (i != -1) {
            long j = this.f[i];
            if (((int) (j >>> 32)) == iG && Objects.equals(obj, this.a[i])) {
                return i;
            }
            i = (int) j;
        }
        return -1;
    }

    public final void e(int i) {
        o8.f(i >= 0, "Initial capacity must be non-negative");
        int iMax = Math.max(i, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (1.0d * ((double) iHighestOneBit))) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
            iHighestOneBit = 1073741824;
        }
        int[] iArr = new int[iHighestOneBit];
        Arrays.fill(iArr, -1);
        this.e = iArr;
        this.g = 1.0f;
        this.a = new Object[i];
        this.b = new int[i];
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        this.f = jArr;
        this.h = Math.max(1, (int) (iHighestOneBit * 1.0f));
    }

    public final void f(Object obj, int i) {
        long j;
        if (i <= 0) {
            fg.c(jh.b(i, "count must be positive but was: "));
            return;
        }
        long[] jArr = this.f;
        Object[] objArr = this.a;
        int[] iArr = this.b;
        int iG = eg9.g(obj);
        int[] iArr2 = this.e;
        int length = (iArr2.length - 1) & iG;
        int i2 = this.c;
        int i3 = iArr2[length];
        if (i3 == -1) {
            iArr2[length] = i2;
            j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        } else {
            while (true) {
                long j2 = jArr[i3];
                j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                if (((int) (j2 >>> 32)) == iG && Objects.equals(obj, objArr[i3])) {
                    int i4 = iArr[i3];
                    iArr[i3] = i;
                    return;
                } else {
                    int i5 = (int) j2;
                    if (i5 == -1) {
                        jArr[i3] = ((-4294967296L) & j2) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                        break;
                    }
                    i3 = i5;
                }
            }
        }
        if (i2 == Integer.MAX_VALUE) {
            ah.f("Cannot contain more than Integer.MAX_VALUE elements!");
            return;
        }
        int i6 = i2 + 1;
        int length2 = this.f.length;
        if (i6 > length2) {
            int iMax = Math.max(1, length2 >>> 1) + length2;
            int i7 = iMax >= 0 ? iMax : Integer.MAX_VALUE;
            if (i7 != length2) {
                h(i7);
            }
        }
        this.f[i2] = (((long) iG) << 32) | j;
        this.a[i2] = obj;
        this.b[i2] = i;
        this.c = i6;
        if (i2 >= this.h) {
            i(this.e.length * 2);
        }
        this.d++;
    }

    public final int g(int i) {
        long[] jArr;
        long[] jArr2;
        long j;
        Object obj = this.a[i];
        char c = ' ';
        int i2 = (int) (this.f[i] >>> 32);
        int[] iArr = this.e;
        int length = (iArr.length - 1) & i2;
        int i3 = iArr[length];
        if (i3 != -1) {
            int i4 = -1;
            while (true) {
                if (((int) (this.f[i3] >>> c)) == i2 && Objects.equals(obj, this.a[i3])) {
                    int[] iArr2 = this.b;
                    int i5 = iArr2[i3];
                    if (i4 == -1) {
                        int[] iArr3 = this.e;
                        jArr = this.f;
                        iArr3[length] = (int) jArr[i3];
                    } else {
                        long[] jArr3 = this.f;
                        jArr3[i4] = (((long) ((int) jArr3[i3])) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (jArr3[i4] & (-4294967296L));
                        jArr = jArr3;
                    }
                    int i6 = this.c - 1;
                    Object[] objArr = this.a;
                    if (i3 < i6) {
                        objArr[i3] = objArr[i6];
                        iArr2[i3] = iArr2[i6];
                        objArr[i6] = null;
                        iArr2[i6] = 0;
                        long j2 = jArr[i6];
                        jArr[i3] = j2;
                        jArr[i6] = -1;
                        int[] iArr4 = this.e;
                        int length2 = ((int) (j2 >>> c)) & (iArr4.length - 1);
                        int i7 = iArr4[length2];
                        if (i7 == i6) {
                            iArr4[length2] = i3;
                        } else {
                            while (true) {
                                jArr2 = this.f;
                                j = jArr2[i7];
                                int i8 = (int) j;
                                if (i8 == i6) {
                                    break;
                                }
                                i7 = i8;
                            }
                            jArr2[i7] = (j & (-4294967296L)) | (((long) i3) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                        }
                    } else {
                        objArr[i3] = null;
                        iArr2[i3] = 0;
                        jArr[i3] = -1;
                    }
                    this.c--;
                    this.d++;
                    return i5;
                }
                char c2 = c;
                int i9 = (int) this.f[i3];
                if (i9 != -1) {
                    i4 = i3;
                    i3 = i9;
                    c = c2;
                }
            }
        }
        return 0;
    }

    public final void h(int i) {
        this.a = Arrays.copyOf(this.a, i);
        this.b = Arrays.copyOf(this.b, i);
        long[] jArr = this.f;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(jArrCopyOf, length, i, -1L);
        }
        this.f = jArrCopyOf;
    }

    public final void i(int i) {
        if (this.e.length >= 1073741824) {
            this.h = Integer.MAX_VALUE;
            return;
        }
        int i2 = ((int) (i * this.g)) + 1;
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        long[] jArr = this.f;
        int i3 = i - 1;
        for (int i4 = 0; i4 < this.c; i4++) {
            int i5 = (int) (jArr[i4] >>> 32);
            int i6 = i5 & i3;
            int i7 = iArr[i6];
            iArr[i6] = i4;
            jArr[i4] = (((long) i5) << 32) | (((long) i7) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        }
        this.h = i2;
        this.e = iArr;
    }
}
