package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class tb9 implements Comparable<tb9>, Serializable {
    public static final tb9 d = new tb9(0, 0);
    public final long b;
    public final long c;

    public tb9(long j, long j2) {
        this.b = j;
        this.c = j2;
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        return new ub9(this.b, this.c);
    }

    @Override // java.lang.Comparable
    public final int compareTo(tb9 tb9Var) {
        tb9 tb9Var2 = tb9Var;
        tb9Var2.getClass();
        long j = tb9Var2.b;
        long j2 = this.b;
        return j2 != j ? Long.compareUnsigned(j2, j) : Long.compareUnsigned(this.c, tb9Var2.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tb9)) {
            return false;
        }
        tb9 tb9Var = (tb9) obj;
        return this.b == tb9Var.b && this.c == tb9Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.b ^ this.c);
    }

    public final String toString() {
        byte[] bArr = new byte[36];
        ea6.c(this.b, bArr, 0, 0, 4);
        bArr[8] = 45;
        ea6.c(this.b, bArr, 9, 4, 6);
        bArr[13] = 45;
        ea6.c(this.b, bArr, 14, 6, 8);
        bArr[18] = 45;
        ea6.c(this.c, bArr, 19, 0, 2);
        bArr[23] = 45;
        ea6.c(this.c, bArr, 24, 2, 8);
        return ra8.t(bArr);
    }
}
