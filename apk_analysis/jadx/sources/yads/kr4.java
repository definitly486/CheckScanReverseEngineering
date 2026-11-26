package yads;

import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public final class kr4 extends lr4 {
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final DisplayMetrics f;

    public kr4(int i, int i2, int i3, int i4, DisplayMetrics displayMetrics) {
        super(i2);
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = displayMetrics;
    }

    @Override // yads.lr4
    public final int a(int i) {
        if (this.a <= 0) {
            return -1;
        }
        return (this.b + i) % this.c;
    }

    @Override // yads.lr4
    public final int b(int i) {
        int iB = defpackage.w65.b(pq.a((Number) Integer.valueOf(i), this.f)) + this.e;
        int i2 = this.d;
        int i3 = iB % i2;
        return i3 < 0 ? i3 + i2 : i3;
    }

    @Override // yads.lr4
    public final int c(int i) {
        if (this.a <= 0) {
            return -1;
        }
        int i2 = this.b - i;
        int i3 = this.c;
        int i4 = i2 % i3;
        return i4 + (i3 & (((i4 ^ i3) & ((-i4) | i4)) >> 31));
    }
}
