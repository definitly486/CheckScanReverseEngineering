package yads;

import androidx.media3.exoplayer.RendererCapabilities;

/* JADX INFO: loaded from: classes6.dex */
public final class ab4 {
    public int a;
    public String b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;

    /* JADX WARN: Code duplicated, block: B:30:0x0057  */
    public final boolean a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        this.a = i2;
        this.b = bb4.a[3 - i3];
        int i7 = bb4.b[i5];
        this.d = i7;
        if (i2 == 2) {
            i7 /= 2;
            this.d = i7;
        } else if (i2 == 0) {
            i7 /= 4;
            this.d = i7;
        }
        int i8 = (i >>> 9) & 1;
        if (i3 != 1) {
            if (i3 == 2) {
                i6 = 1152;
            } else {
                if (i3 != 3) {
                    defpackage.mi2.b();
                    return false;
                }
                i6 = RendererCapabilities.DECODER_SUPPORT_MASK;
            }
        } else if (i2 == 3) {
            i6 = 1152;
        } else {
            i6 = 576;
        }
        this.g = i6;
        if (i3 == 3) {
            int i9 = i2 == 3 ? bb4.c[i4 - 1] : bb4.d[i4 - 1];
            this.f = i9;
            this.c = (((i9 * 12) / i7) + i8) * 4;
        } else {
            if (i2 == 3) {
                int i10 = i3 == 2 ? bb4.e[i4 - 1] : bb4.f[i4 - 1];
                this.f = i10;
                this.c = defpackage.pg.b(i10, 144, i7, i8);
            } else {
                int i11 = bb4.g[i4 - 1];
                this.f = i11;
                this.c = defpackage.pg.b(i3 == 1 ? 72 : 144, i11, i7, i8);
            }
        }
        this.e = ((i >> 6) & 3) == 3 ? 1 : 2;
        return true;
    }
}
