package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class y30 {
    public static final y30 c = new y30(new int[0], null);
    public final int[] a;
    public final float[] b;

    public y30(int[] iArr, float[] fArr) {
        this.a = iArr;
        this.b = fArr;
        if (iArr.length == (fArr != null ? fArr.length : iArr.length)) {
            return;
        }
        defpackage.fg.c("Failed requirement.");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!y30.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        y30 y30Var = (y30) obj;
        return Arrays.equals(this.a, y30Var.a) && Arrays.equals(this.b, y30Var.b);
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.a) * 31;
        float[] fArr = this.b;
        return iHashCode + (fArr != null ? Arrays.hashCode(fArr) : 0);
    }
}
