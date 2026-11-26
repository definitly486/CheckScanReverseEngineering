package defpackage;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class w24 implements Serializable {
    public static final w24 d = new w24(new int[0]);
    public final int[] b;
    public final int c;

    public w24(int[] iArr) {
        int length = iArr.length;
        this.b = iArr;
        this.c = length;
    }

    public final boolean equals(Object obj) {
        w24 w24Var;
        int i;
        int i2;
        if (obj == this) {
            return true;
        }
        if ((obj instanceof w24) && (i2 = this.c) == (i = (w24Var = (w24) obj).c)) {
            for (int i3 = 0; i3 < i2; i3++) {
                o8.j(i3, i2);
                int i4 = this.b[i3];
                o8.j(i3, i);
                if (i4 == w24Var.b[i3]) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 1;
        for (int i = 0; i < this.c; i++) {
            iHashCode = (iHashCode * 31) + Integer.hashCode(this.b[i]);
        }
        return iHashCode;
    }

    public Object readResolve() {
        return this.c == 0 ? d : this;
    }

    public final String toString() {
        int i = this.c;
        if (i == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(i * 5);
        sb.append('[');
        int[] iArr = this.b;
        sb.append(iArr[0]);
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(", ");
            sb.append(iArr[i2]);
        }
        sb.append(']');
        return sb.toString();
    }

    public Object writeReplace() {
        int[] iArr = this.b;
        int length = iArr.length;
        int i = this.c;
        return i < length ? new w24(Arrays.copyOfRange(iArr, 0, i)) : this;
    }
}
