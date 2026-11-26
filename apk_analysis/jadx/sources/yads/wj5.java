package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class wj5 {
    public final float[] a;
    public final float b;

    public wj5(float[] fArr, float f) {
        this.a = fArr;
        this.b = f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wj5)) {
            return false;
        }
        wj5 wj5Var = (wj5) obj;
        return this.b == wj5Var.b && Arrays.equals(this.a, wj5Var.a);
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (Arrays.hashCode(this.a) * 31);
    }
}
