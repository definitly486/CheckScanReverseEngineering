package yads;

import android.os.Bundle;
import defpackage.g7;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class l16 implements kv {
    public static final jv g = new g7(5);
    public final int b;
    public final f06 c;
    public final boolean d;
    public final int[] e;
    public final boolean[] f;

    /* JADX WARN: Code duplicated, block: B:11:0x0015  */
    public l16(f06 f06Var, boolean z, int[] iArr, boolean[] zArr) {
        boolean z2;
        int i = f06Var.b;
        this.b = i;
        if (i != iArr.length || i != zArr.length) {
            defpackage.mi2.b();
            throw null;
        }
        this.c = f06Var;
        if (z) {
            z2 = i > 1;
        }
        this.d = z2;
        this.e = (int[]) iArr.clone();
        this.f = (boolean[]) zArr.clone();
    }

    public static l16 a(Bundle bundle) {
        jv jvVar = f06.g;
        Bundle bundle2 = bundle.getBundle(Integer.toString(0, 36));
        bundle2.getClass();
        f06 f06Var = (f06) jvVar.a(bundle2);
        int[] intArray = bundle.getIntArray(Integer.toString(1, 36));
        int[] iArr = new int[f06Var.b];
        if (intArray == null) {
            intArray = iArr;
        }
        boolean[] booleanArray = bundle.getBooleanArray(Integer.toString(3, 36));
        boolean[] zArr = new boolean[f06Var.b];
        if (booleanArray == null) {
            booleanArray = zArr;
        }
        return new l16(f06Var, bundle.getBoolean(Integer.toString(4, 36), false), intArray, booleanArray);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l16.class == obj.getClass()) {
            l16 l16Var = (l16) obj;
            if (this.d == l16Var.d && this.c.equals(l16Var.c) && Arrays.equals(this.e, l16Var.e) && Arrays.equals(this.f, l16Var.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f) + ((Arrays.hashCode(this.e) + (((this.c.hashCode() * 31) + (this.d ? 1 : 0)) * 31)) * 31);
    }
}
