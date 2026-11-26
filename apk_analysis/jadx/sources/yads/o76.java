package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class o76 {
    public static final long[] d = {128, 64, 32, 16, 8, 4, 2, 1};
    public final byte[] a = new byte[8];
    public int b;
    public int c;

    public final long a(wk0 wk0Var, boolean z, boolean z2, int i) {
        int i2;
        if (this.b == 0) {
            if (!wk0Var.a(this.a, 0, 1, z)) {
                return -1L;
            }
            int i3 = this.a[0] & 255;
            int i4 = 0;
            while (true) {
                long[] jArr = d;
                if (i4 >= 8) {
                    i2 = -1;
                    break;
                }
                if ((((long) i3) & jArr[i4]) != 0) {
                    i2 = i4 + 1;
                    break;
                }
                i4++;
            }
            this.c = i2;
            if (i2 == -1) {
                defpackage.ah.f("No valid varint length mask found");
                return 0L;
            }
            this.b = 1;
        }
        int i5 = this.c;
        if (i5 > i) {
            this.b = 0;
            return -2L;
        }
        if (i5 != 1) {
            wk0Var.a(this.a, 1, i5 - 1, false);
        }
        this.b = 0;
        return a(this.a, this.c, z2);
    }

    public static long a(byte[] bArr, int i, boolean z) {
        long j = ((long) bArr[0]) & 255;
        if (z) {
            j &= ~d[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (((long) bArr[i2]) & 255);
        }
        return j;
    }
}
