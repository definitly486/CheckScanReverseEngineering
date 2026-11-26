package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class j06 {
    public final int a;
    public final byte[] b;
    public final int c;
    public final int d;

    public j06(int i, int i2, int i3, byte[] bArr) {
        this.a = i;
        this.b = bArr;
        this.c = i2;
        this.d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && j06.class == obj.getClass()) {
            j06 j06Var = (j06) obj;
            if (this.a == j06Var.a && this.c == j06Var.c && this.d == j06Var.d && Arrays.equals(this.b, j06Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.b) + (this.a * 31)) * 31) + this.c) * 31) + this.d;
    }
}
