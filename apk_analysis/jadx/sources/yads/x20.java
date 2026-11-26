package yads;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class x20 implements kv {
    public static final jv g = new defpackage.v93();
    public final int b;
    public final int c;
    public final int d;
    public final byte[] e;
    public int f;

    public x20(int i, int i2, int i3, byte[] bArr) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = bArr;
    }

    public static x20 a(Bundle bundle) {
        return new x20(bundle.getInt(Integer.toString(0, 36), -1), bundle.getInt(Integer.toString(1, 36), -1), bundle.getInt(Integer.toString(2, 36), -1), bundle.getByteArray(Integer.toString(3, 36)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && x20.class == obj.getClass()) {
            x20 x20Var = (x20) obj;
            if (this.b == x20Var.b && this.c == x20Var.c && this.d == x20Var.d && Arrays.equals(this.e, x20Var.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.e) + ((((((this.b + 527) * 31) + this.c) * 31) + this.d) * 31);
        this.f = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ColorInfo(");
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.c);
        sb.append(", ");
        sb.append(this.d);
        sb.append(", ");
        return defpackage.dh.e(sb, this.e != null, ")");
    }
}
