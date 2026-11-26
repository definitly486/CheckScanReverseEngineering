package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class x86 {
    public final int a;
    public final int b;
    public final byte[] c;
    public final int d;
    public final int e;

    public x86(byte[] bArr, int i, int i2, int i3, int i4) {
        this.a = i3;
        this.b = i4;
        if (i3 > i || i4 > i2) {
            fg.c("Crop rectangle does not fit within image data.");
            throw null;
        }
        this.c = bArr;
        this.d = i;
        this.e = i2;
    }

    public final byte[] a() {
        byte[] bArr = this.c;
        int i = this.a;
        int i2 = this.b;
        int i3 = this.d;
        if (i == i3 && i2 == this.e) {
            return bArr;
        }
        int i4 = i * i2;
        byte[] bArr2 = new byte[i4];
        if (i == i3) {
            System.arraycopy(bArr, 0, bArr2, 0, i4);
            return bArr2;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            System.arraycopy(bArr, i5, bArr2, i6 * i, i);
            i5 += i3;
        }
        return bArr2;
    }

    public final byte[] b(int i, byte[] bArr) {
        if (i < 0 || i >= this.b) {
            fg.c(jh.b(i, "Requested row is outside the image: "));
            return null;
        }
        int i2 = this.a;
        if (bArr == null || bArr.length < i2) {
            bArr = new byte[i2];
        }
        System.arraycopy(this.c, i * this.d, bArr, 0, i2);
        return bArr;
    }

    public final String toString() {
        char c;
        int i = this.a;
        byte[] bArrB = new byte[i];
        int i2 = this.b;
        StringBuilder sb = new StringBuilder((i + 1) * i2);
        for (int i3 = 0; i3 < i2; i3++) {
            bArrB = b(i3, bArrB);
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = bArrB[i4] & 255;
                if (i5 < 64) {
                    c = '#';
                } else if (i5 < 128) {
                    c = '+';
                } else {
                    c = i5 < 192 ? '.' : ' ';
                }
                sb.append(c);
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
