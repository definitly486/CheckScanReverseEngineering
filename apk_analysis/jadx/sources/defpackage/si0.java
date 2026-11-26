package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class si0 {
    public int a;
    public int b;
    public Serializable c;

    public int a() {
        return ((((byte[]) this.c).length - this.a) * 8) - this.b;
    }

    public int b(int i) {
        byte[] bArr = (byte[]) this.c;
        int i2 = 0;
        if (i < 1 || i > 32 || i > a()) {
            fg.c(String.valueOf(i));
            return 0;
        }
        int i3 = this.b;
        if (i3 > 0) {
            int i4 = 8 - i3;
            int i5 = i < i4 ? i : i4;
            int i6 = i4 - i5;
            int i7 = this.a;
            int i8 = (((255 >> (8 - i5)) << i6) & bArr[i7]) >> i6;
            i -= i5;
            int i9 = i3 + i5;
            this.b = i9;
            if (i9 == 8) {
                this.b = 0;
                this.a = i7 + 1;
            }
            i2 = i8;
        }
        if (i > 0) {
            while (i >= 8) {
                int i10 = this.a;
                i2 = (i2 << 8) | (bArr[i10] & 255);
                this.a = i10 + 1;
                i -= 8;
            }
            if (i > 0) {
                int i11 = 8 - i;
                int i12 = ((bArr[this.a] & ((255 >> i11) << i11)) >> i11) | (i2 << i);
                this.b += i;
                return i12;
            }
        }
        return i2;
    }
}
