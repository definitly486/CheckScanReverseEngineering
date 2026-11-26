package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class qb9 {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(b58 b58Var, f02 f02Var) {
        ob9 ob9Var;
        b58 b58Var2;
        Throwable th;
        bu0 bu0Var;
        if (f02Var instanceof ob9) {
            ob9Var = (ob9) f02Var;
            int i = ob9Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                ob9Var.o = i - Integer.MIN_VALUE;
            } else {
                ob9Var = new ob9(f02Var);
            }
        } else {
            ob9Var = new ob9(f02Var);
        }
        Object obj = ob9Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = ob9Var.o;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            bu0Var = ob9Var.m;
            b58Var2 = ob9Var.l;
            try {
                r57.b(obj);
                aq5.c(b58Var2, null);
                return bu0Var;
            } catch (Throwable th2) {
                th = th2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    aq5.c(b58Var2, th);
                    throw th3;
                }
            }
        }
        r57.b(obj);
        try {
            bu0 bu0Var2 = new bu0();
            ob9Var.l = b58Var;
            ob9Var.m = bu0Var2;
            ob9Var.o = 1;
            if (b58Var.a(bu0Var2) == a32Var) {
                return a32Var;
            }
            b58Var2 = b58Var;
            bu0Var = bu0Var2;
            aq5.c(b58Var2, null);
            return bu0Var;
        } catch (Throwable th4) {
            b58Var2 = b58Var;
            th = th4;
            throw th;
        }
    }
}
