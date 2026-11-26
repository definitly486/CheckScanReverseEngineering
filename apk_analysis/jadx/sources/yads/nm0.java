package yads;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class nm0 implements kv {
    public static final jv e = new defpackage.nz0();
    public final int b;
    public final int[] c;
    public final int d;

    public nm0(int i, int i2, int[] iArr) {
        this.b = i;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        this.c = iArrCopyOf;
        this.d = i2;
        Arrays.sort(iArrCopyOf);
    }

    public static nm0 a(Bundle bundle) {
        int i = bundle.getInt(Integer.toString(0, 36), -1);
        int[] intArray = bundle.getIntArray(Integer.toString(1, 36));
        int i2 = bundle.getInt(Integer.toString(2, 36), -1);
        if (i < 0 || i2 < 0) {
            defpackage.mi2.b();
            return null;
        }
        intArray.getClass();
        return new nm0(i, i2, intArray);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && nm0.class == obj.getClass()) {
            nm0 nm0Var = (nm0) obj;
            if (this.b == nm0Var.b && Arrays.equals(this.c, nm0Var.c) && this.d == nm0Var.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Arrays.hashCode(this.c) + (this.b * 31)) * 31) + this.d;
    }
}
