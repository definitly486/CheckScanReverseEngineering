package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class c89 {
    public final k5 a;
    public final dc7 b;

    public c89(k5 k5Var, dc7 dc7Var) {
        this.a = k5Var;
        this.b = dc7Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(f02 f02Var) {
        b89 b89Var;
        dc7 dc7Var;
        if (f02Var instanceof b89) {
            b89Var = (b89) f02Var;
            int i = b89Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                b89Var.o = i - Integer.MIN_VALUE;
            } else {
                b89Var = new b89(this, f02Var);
            }
        } else {
            b89Var = new b89(this, f02Var);
        }
        Object obj = b89Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = b89Var.o;
        if (i2 == 0) {
            r57.b(obj);
            dc7 dc7Var2 = this.b;
            b89Var.l = dc7Var2;
            b89Var.o = 1;
            Object objC = this.a.c(b89Var);
            if (objC == a32Var) {
                return a32Var;
            }
            obj = objC;
            dc7Var = dc7Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            dc7Var = b89Var.l;
            r57.b(obj);
        }
        dc7Var.a((t99) obj);
        return j59.a;
    }
}
