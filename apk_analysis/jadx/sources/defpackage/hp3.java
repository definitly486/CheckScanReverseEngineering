package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class hp3 {
    public final gp3 a;
    public final int[] b;

    public hp3(gp3 gp3Var, int[] iArr) {
        if (iArr.length == 0) {
            mi2.b();
            throw null;
        }
        this.a = gp3Var;
        int length = iArr.length;
        int i = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.b = iArr;
            return;
        }
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.b = new int[]{0};
            return;
        }
        int i2 = length - i;
        int[] iArr2 = new int[i2];
        this.b = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, i2);
    }

    public final hp3 a(hp3 hp3Var) {
        gp3 gp3Var = hp3Var.a;
        gp3 gp3Var2 = this.a;
        if (!gp3Var2.equals(gp3Var)) {
            fg.c("GenericGFPolys do not have same GenericGF field");
            return null;
        }
        if (e()) {
            return hp3Var;
        }
        if (hp3Var.e()) {
            return this;
        }
        int[] iArr = hp3Var.b;
        int[] iArr2 = this.b;
        if (iArr2.length > iArr.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = iArr2[i - length] ^ iArr[i];
        }
        return new hp3(gp3Var2, iArr3);
    }

    public final int b(int i) {
        if (i == 0) {
            return c(0);
        }
        int[] iArr = this.b;
        int length = iArr.length;
        if (i != 1) {
            int iC = iArr[0];
            for (int i2 = 1; i2 < length; i2++) {
                iC = this.a.c(i, iC) ^ iArr[i2];
            }
            return iC;
        }
        int i3 = 0;
        for (int i4 : iArr) {
            gp3 gp3Var = gp3.h;
            i3 ^= i4;
        }
        return i3;
    }

    public final int c(int i) {
        int[] iArr = this.b;
        return iArr[(iArr.length - 1) - i];
    }

    public final int d() {
        return this.b.length - 1;
    }

    public final boolean e() {
        return this.b[0] == 0;
    }

    public final hp3 f(int i) {
        gp3 gp3Var = this.a;
        if (i == 0) {
            return gp3Var.c;
        }
        if (i == 1) {
            return this;
        }
        int[] iArr = this.b;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr2[i2] = gp3Var.c(iArr[i2], i);
        }
        return new hp3(gp3Var, iArr2);
    }

    public final hp3 g(hp3 hp3Var) {
        gp3 gp3Var = hp3Var.a;
        gp3 gp3Var2 = this.a;
        if (!gp3Var2.equals(gp3Var)) {
            fg.c("GenericGFPolys do not have same GenericGF field");
            return null;
        }
        if (e() || hp3Var.e()) {
            return gp3Var2.c;
        }
        int[] iArr = this.b;
        int length = iArr.length;
        int[] iArr2 = hp3Var.b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = iArr3[i4] ^ gp3Var2.c(i2, iArr2[i3]);
            }
        }
        return new hp3(gp3Var2, iArr3);
    }

    public final hp3 h(int i, int i2) {
        if (i < 0) {
            mi2.b();
            return null;
        }
        gp3 gp3Var = this.a;
        if (i2 == 0) {
            return gp3Var.c;
        }
        int[] iArr = this.b;
        int length = iArr.length;
        int[] iArr2 = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr2[i3] = gp3Var.c(iArr[i3], i2);
        }
        return new hp3(gp3Var, iArr2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(d() * 8);
        for (int iD = d(); iD >= 0; iD--) {
            int iC = c(iD);
            if (iC != 0) {
                if (iC < 0) {
                    sb.append(" - ");
                    iC = -iC;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iD == 0 || iC != 1) {
                    gp3 gp3Var = this.a;
                    if (iC == 0) {
                        gp3Var.getClass();
                        mi2.b();
                        return null;
                    }
                    int i = gp3Var.b[iC];
                    if (i == 0) {
                        sb.append('1');
                    } else if (i == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(i);
                    }
                }
                if (iD != 0) {
                    if (iD == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iD);
                    }
                }
            }
        }
        return sb.toString();
    }
}
