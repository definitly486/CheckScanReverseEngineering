package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class kr3 {
    public final float[] a;
    public final int[] b;

    public kr3(float[] fArr, int[] iArr) {
        this.a = fArr;
        this.b = iArr;
    }

    public final void a(kr3 kr3Var) {
        int i = 0;
        while (true) {
            int[] iArr = kr3Var.b;
            if (i >= iArr.length) {
                return;
            }
            this.a[i] = kr3Var.a[i];
            this.b[i] = iArr[i];
            i++;
        }
    }

    public final kr3 b(float[] fArr) {
        int iC;
        int[] iArr = new int[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            float f = fArr[i];
            float[] fArr2 = this.a;
            int iBinarySearch = Arrays.binarySearch(fArr2, f);
            int[] iArr2 = this.b;
            if (iBinarySearch >= 0) {
                iC = iArr2[iBinarySearch];
            } else {
                int i2 = -(iBinarySearch + 1);
                if (i2 == 0) {
                    iC = iArr2[0];
                } else if (i2 == iArr2.length - 1) {
                    iC = iArr2[iArr2.length - 1];
                } else {
                    int i3 = i2 - 1;
                    float f2 = fArr2[i3];
                    iC = dh5.c((f - f2) / (fArr2[i2] - f2), iArr2[i3], iArr2[i2]);
                }
            }
            iArr[i] = iC;
        }
        return new kr3(fArr, iArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || kr3.class != obj.getClass()) {
            return false;
        }
        kr3 kr3Var = (kr3) obj;
        return Arrays.equals(this.a, kr3Var.a) && Arrays.equals(this.b, kr3Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (Arrays.hashCode(this.a) * 31);
    }
}
