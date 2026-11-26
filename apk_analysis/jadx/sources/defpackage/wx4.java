package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class wx4<V> {
    public final nw4 a;
    public final Throwable b;

    public wx4(nw4 nw4Var) {
        this.a = nw4Var;
        this.b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wx4)) {
            return false;
        }
        wx4 wx4Var = (wx4) obj;
        nw4 nw4Var = this.a;
        if (nw4Var != null && nw4Var == wx4Var.a) {
            return true;
        }
        Throwable th = this.b;
        if (th == null || wx4Var.b == null) {
            return false;
        }
        return th.toString().equals(th.toString());
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public wx4(Throwable th) {
        this.b = th;
        this.a = null;
    }
}
