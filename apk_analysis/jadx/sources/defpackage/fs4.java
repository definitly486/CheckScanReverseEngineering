package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fs4 {
    public final do3 a;

    public fs4(do3 do3Var) {
        this.a = do3Var;
    }

    public static String b(String str) {
        String string;
        if (str == null || (string = ta8.f0(str).toString()) == null || string.length() <= 0) {
            return null;
        }
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(f02 f02Var) {
        es4 es4Var;
        String strB;
        kn3 kn3Var;
        if (f02Var instanceof es4) {
            es4Var = (es4) f02Var;
            int i = es4Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                es4Var.n = i - Integer.MIN_VALUE;
            } else {
                es4Var = new es4(this, f02Var);
            }
        } else {
            es4Var = new es4(this, f02Var);
        }
        Object objA = es4Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = es4Var.n;
        if (i2 == 0) {
            r57.b(objA);
            es4Var.n = 1;
            objA = this.a.a(es4Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        for (ln3 ln3Var : (Iterable) objA) {
            String strB2 = b(ln3Var.b());
            if (strB2 == null || (strB = b(ln3Var.d())) == null) {
                kn3Var = null;
            } else {
                String strB3 = b(ln3Var.a());
                ln3.a aVarC = ln3Var.c();
                kn3Var = new kn3(strB2, strB, strB3, b(aVarC != null ? aVarC.a() : null));
            }
            if (kn3Var != null) {
                return kn3Var;
            }
        }
        return null;
    }
}
