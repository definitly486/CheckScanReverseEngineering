package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class qi0 implements Cloneable {
    public final int b;
    public final int c;
    public final int d;
    public final int[] e;

    public qi0(int i, int i2) {
        if (i < 1 || i2 < 1) {
            fg.c("Both dimensions must be greater than 0");
            throw null;
        }
        this.b = i;
        this.c = i2;
        int i3 = (i + 31) / 32;
        this.d = i3;
        this.e = new int[i3 * i2];
    }

    public final void b(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.d);
        int[] iArr = this.e;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    public final boolean c(int i, int i2) {
        return ((this.e[(i / 32) + (i2 * this.d)] >>> (i & 31)) & 1) != 0;
    }

    public final Object clone() {
        return new qi0(this.b, this.c, this.d, (int[]) this.e.clone());
    }

    public final void d(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.d);
        int[] iArr = this.e;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public final void e(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            fg.c("Left and top must be nonnegative");
            return;
        }
        if (i4 < 1 || i3 < 1) {
            fg.c("Height and width must be at least 1");
            return;
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.c || i5 > this.b) {
            fg.c("The region must fit inside the matrix");
            return;
        }
        while (i2 < i6) {
            int i7 = this.d * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int i9 = (i8 / 32) + i7;
                int[] iArr = this.e;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof qi0)) {
            return false;
        }
        qi0 qi0Var = (qi0) obj;
        return this.b == qi0Var.b && this.c == qi0Var.c && this.d == qi0Var.d && Arrays.equals(this.e, qi0Var.e);
    }

    public final int hashCode() {
        int i = this.b;
        return Arrays.hashCode(this.e) + (((((((i * 31) + i) * 31) + this.c) * 31) + this.d) * 31);
    }

    public final String toString() {
        int i = this.b;
        int i2 = this.c;
        StringBuilder sb = new StringBuilder((i + 1) * i2);
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                sb.append(c(i4, i3) ? "X " : "  ");
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public qi0(int i, int i2, int i3, int[] iArr) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = iArr;
    }
}
