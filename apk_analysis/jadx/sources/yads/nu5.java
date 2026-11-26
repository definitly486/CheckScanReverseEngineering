package yads;

import defpackage.yr9;

/* JADX INFO: loaded from: classes6.dex */
public final class nu5 {
    public final int a;
    public int b = -1;
    public int c = -1;
    public final int[] d;
    public final mu5 e;

    public nu5(int i, mu5 mu5Var) {
        this.a = i;
        this.e = mu5Var;
        this.d = new int[i];
    }

    public final int a() {
        int iMax = this.c;
        if (iMax < 0) {
            iMax = this.b;
            if (iMax < 0) {
                iMax = ((yr9) this.e).a(0);
                this.b = iMax;
            }
            for (int i = 1; i < this.a; i++) {
                iMax = Math.max(iMax, ((yr9) this.e).a(i));
            }
            this.c = iMax;
        }
        return iMax;
    }

    public final int a(int i) {
        int i2 = this.a;
        if (i2 == 0) {
            return 0;
        }
        if (i < 0) {
            return a(0);
        }
        if (i >= i2) {
            return a(i2);
        }
        int[] iArr = this.d;
        if (iArr[i] <= 0) {
            iArr[i] = ((yr9) this.e).a(i);
        }
        return this.d[i];
    }
}
