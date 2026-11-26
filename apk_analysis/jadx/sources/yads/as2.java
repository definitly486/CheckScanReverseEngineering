package yads;

import defpackage.nl3;
import defpackage.ta8;

/* JADX INFO: loaded from: classes6.dex */
public abstract class as2 {
    public static final boolean a(Object obj) {
        return (obj instanceof String) && ta8.D((CharSequence) obj, "@{", false);
    }

    public abstract Object a();

    public abstract Object a(fs2 fs2Var);

    public abstract tp0 a(fs2 fs2Var, nl3 nl3Var);

    public tp0 b(fs2 fs2Var, nl3 nl3Var) {
        Object objA;
        try {
            objA = a(fs2Var);
        } catch (ft4 unused) {
            objA = null;
        }
        if (objA != null) {
            nl3Var.invoke(objA);
        }
        return a(fs2Var, nl3Var);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof as2) {
            return defpackage.aa4.e(a(), ((as2) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode() * 16;
    }
}
