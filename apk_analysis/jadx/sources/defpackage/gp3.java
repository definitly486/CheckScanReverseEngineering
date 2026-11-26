package defpackage;

import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes4.dex */
public final class gp3 {
    public static final gp3 h;
    public final int[] a;
    public final int[] b;
    public final hp3 c;
    public final hp3 d;
    public final int e;
    public final int f;
    public final int g;

    static {
        new gp3(4201, 4096, 1);
        new gp3(AnalyticsListener.EVENT_RENDERER_READY_CHANGED, 1024, 1);
        new gp3(67, 64, 1);
        new gp3(19, 16, 1);
        h = new gp3(285, 256, 0);
        new gp3(301, 256, 1);
    }

    public gp3(int i, int i2, int i3) {
        this.f = i;
        this.e = i2;
        this.g = i3;
        this.a = new int[i2];
        this.b = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.a[i5] = i4;
            i4 *= 2;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.b[this.a[i6]] = i6;
        }
        this.c = new hp3(this, new int[]{0});
        this.d = new hp3(this, new int[]{1});
    }

    public final hp3 a(int i, int i2) {
        if (i < 0) {
            mi2.b();
            return null;
        }
        if (i2 == 0) {
            return this.c;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new hp3(this, iArr);
    }

    public final int b(int i) {
        if (i == 0) {
            throw new ArithmeticException();
        }
        return this.a[(this.e - this.b[i]) - 1];
    }

    public final int c(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.b;
        return this.a[(iArr[i] + iArr[i2]) % (this.e - 1)];
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GF(0x");
        sb.append(Integer.toHexString(this.f));
        sb.append(',');
        return rg.h(sb, this.e, ')');
    }
}
