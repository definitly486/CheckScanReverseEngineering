package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class l91 {
    public static mu0 a(int i, cu0 cu0Var, nl3 nl3Var, int i2) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            cu0Var = cu0.SUSPEND;
        }
        if ((i2 & 4) != 0) {
            nl3Var = null;
        }
        if (i == -2) {
            if (cu0Var != cu0.SUSPEND) {
                return new gw1(1, cu0Var, nl3Var);
            }
            x81.s1.getClass();
            return new mu0(x81.a.b, nl3Var);
        }
        if (i == -1) {
            if (cu0Var == cu0.SUSPEND) {
                return new gw1(1, cu0.DROP_OLDEST, nl3Var);
            }
            fg.c("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            return null;
        }
        if (i == 0) {
            return cu0Var == cu0.SUSPEND ? new mu0(0, nl3Var) : new gw1(1, cu0Var, nl3Var);
        }
        if (i != Integer.MAX_VALUE) {
            return cu0Var == cu0.SUSPEND ? new mu0(i, nl3Var) : new gw1(i, cu0Var, nl3Var);
        }
        return new mu0(Integer.MAX_VALUE, nl3Var);
    }
}
