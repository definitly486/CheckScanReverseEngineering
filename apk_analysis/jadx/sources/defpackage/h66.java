package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class h66 implements f66 {
    public final v66 a;
    public final jf6 b;

    public h66(v66 v66Var, jf6 jf6Var) {
        this.a = v66Var;
        this.b = jf6Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.f66
    public final Object a(int i, String str, f02 f02Var) {
        g66 g66Var;
        a89.a aVar;
        if (f02Var instanceof g66) {
            g66Var = (g66) f02Var;
            int i2 = g66Var.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                g66Var.p = i2 - Integer.MIN_VALUE;
            } else {
                g66Var = new g66(this, f02Var);
            }
        } else {
            g66Var = new g66(this, f02Var);
        }
        Object objA = g66Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = g66Var.p;
        if (i3 == 0) {
            r57.b(objA);
            x79 x79Var = new x79(String.valueOf(i));
            g66Var.m = str;
            g66Var.l = i;
            g66Var.p = 1;
            objA = this.a.a(x79Var, g66Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = g66Var.l;
            str = g66Var.m;
            r57.b(objA);
        }
        z47 z47Var = ((a57) objA).a;
        if (z47Var.o()) {
            jf6 jf6Var = this.b;
            jf6Var.l0(i);
            jf6Var.X(str);
            jf6Var.a0();
        }
        if (z47Var.o()) {
            aVar = a89.a.Success;
        } else {
            aVar = z47Var.e == 403 ? a89.a.Forbidden : a89.a.Error;
        }
        return new a89(aVar);
    }

    @Override // defpackage.f66
    public final Object b(LinkedHashMap linkedHashMap, boolean z, x66 x66Var) {
        return this.a.b(new xk6(linkedHashMap, z), x66Var);
    }

    @Override // defpackage.f66
    public final Object c(boolean z, f02 f02Var) {
        return this.a.c(z, f02Var);
    }
}
