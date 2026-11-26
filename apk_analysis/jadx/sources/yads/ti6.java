package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ti6 {
    public final byte[] a;
    public final int b;
    public int c;
    public int d;

    public ti6(byte[] bArr) {
        this.a = bArr;
        this.b = bArr.length;
    }

    public final int a(int i) {
        int i2 = this.c;
        int iMin = Math.min(i, 8 - this.d);
        int i3 = i2 + 1;
        int i4 = ((this.a[i2] & 255) >> this.d) & (255 >> (8 - iMin));
        while (iMin < i) {
            i4 |= (this.a[i3] & 255) << iMin;
            iMin += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        b(i);
        return i5;
    }

    public final void b(int i) {
        int i2 = i / 8;
        int i3 = this.c + i2;
        this.c = i3;
        int i4 = (i - (i2 * 8)) + this.d;
        this.d = i4;
        if (i4 > 7) {
            i3++;
            this.c = i3;
            i4 -= 8;
            this.d = i4;
        }
        if (i3 >= 0) {
            int i5 = this.b;
            if (i3 < i5) {
                return;
            }
            if (i3 == i5 && i4 == 0) {
                return;
            }
        }
        defpackage.ud.g();
    }

    public final boolean a() {
        boolean z = (((this.a[this.c] & 255) >> this.d) & 1) == 1;
        b(1);
        return z;
    }
}
