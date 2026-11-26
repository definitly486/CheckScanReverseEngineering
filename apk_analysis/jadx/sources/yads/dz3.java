package yads;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class dz3 {
    public final String a;
    public final boolean b;
    public final boolean c;

    public dz3(String str, boolean z, boolean z2) {
        this.a = str;
        this.b = z;
        this.c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == dz3.class) {
            dz3 dz3Var = (dz3) obj;
            if (TextUtils.equals(this.a, dz3Var.a) && this.b == dz3Var.b && this.c == dz3Var.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((l4.a(31, 31, this.a) + (this.b ? 1231 : 1237)) * 31) + (this.c ? 1231 : 1237);
    }
}
