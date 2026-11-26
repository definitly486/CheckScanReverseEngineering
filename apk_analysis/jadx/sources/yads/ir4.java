package yads;

import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public final class ir4 extends lr4 {
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final DisplayMetrics f;

    public ir4(int i, int i2, int i3, int i4, DisplayMetrics displayMetrics) {
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
        return Math.min(this.b + i, this.c - 1);
    }

    @Override // yads.lr4
    public final int b(int i) {
        return Math.min(Math.max(0, defpackage.w65.b(pq.a((Number) Integer.valueOf(i), this.f)) + this.e), this.d);
    }

    @Override // yads.lr4
    public final int c(int i) {
        if (this.a <= 0) {
            return -1;
        }
        return Math.max(0, this.b - i);
    }
}
