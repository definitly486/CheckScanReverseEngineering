package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class pi0 implements Cloneable {
    public int c = 0;
    public int[] b = new int[1];

    public final void b(boolean z) {
        d(this.c + 1);
        if (z) {
            int[] iArr = this.b;
            int i = this.c;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.c++;
    }

    public final void c(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            fg.c("Num bits must be between 0 and 32");
            return;
        }
        d(this.c + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            b(z);
            i2--;
        }
    }

    public final Object clone() {
        int[] iArr = (int[]) this.b.clone();
        int i = this.c;
        pi0 pi0Var = new pi0();
        pi0Var.b = iArr;
        pi0Var.c = i;
        return pi0Var;
    }

    public final void d(int i) {
        int[] iArr = this.b;
        if (i > iArr.length * 32) {
            int[] iArr2 = new int[(i + 31) / 32];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.b = iArr2;
        }
    }

    public final boolean e(int i) {
        return (this.b[i / 32] & (1 << (i & 31))) != 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof pi0)) {
            return false;
        }
        pi0 pi0Var = (pi0) obj;
        return this.c == pi0Var.c && Arrays.equals(this.b, pi0Var.b);
    }

    public final int h() {
        return (this.c + 7) / 8;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (this.c * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.c);
        for (int i = 0; i < this.c; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(e(i) ? 'X' : '.');
        }
        return sb.toString();
    }
}
