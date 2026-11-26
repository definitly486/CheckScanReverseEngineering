package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ab4 {
    public final String a;
    public final byte[] b;

    public ab4(String str, byte[] bArr) {
        this.a = str;
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!ab4.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        ab4 ab4Var = (ab4) obj;
        return this.a.equals(ab4Var.a) && Arrays.equals(this.b, ab4Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (this.a.hashCode() * 31);
    }
}
