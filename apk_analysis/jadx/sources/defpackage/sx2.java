package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class sx2 {
    public final iy2 a;
    public final byte[] b;

    public sx2(iy2 iy2Var, byte[] bArr) {
        if (iy2Var == null) {
            o2.d("encoding is null");
            throw null;
        }
        if (bArr == null) {
            o2.d("bytes is null");
            throw null;
        }
        this.a = iy2Var;
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sx2)) {
            return false;
        }
        sx2 sx2Var = (sx2) obj;
        if (this.a.equals(sx2Var.a)) {
            return Arrays.equals(this.b, sx2Var.b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.a + ", bytes=[...]}";
    }
}
