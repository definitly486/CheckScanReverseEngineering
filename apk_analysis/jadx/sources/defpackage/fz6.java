package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class fz6 implements e94.a {
    public final b24 a;
    public final List<e94> b;
    public final int c;
    public final b24 d;
    public final t18 e;
    public final a13 f;
    public final boolean g;

    /* JADX WARN: Multi-variable type inference failed */
    public fz6(b24 b24Var, List<? extends e94> list, int i, b24 b24Var2, t18 t18Var, a13 a13Var, boolean z) {
        this.a = b24Var;
        this.b = list;
        this.c = i;
        this.d = b24Var2;
        this.e = t18Var;
        this.f = a13Var;
        this.g = z;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(f02 f02Var) {
        dz6 dz6Var;
        e94 e94Var;
        if (f02Var instanceof dz6) {
            dz6Var = (dz6) f02Var;
            int i = dz6Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                dz6Var.o = i - Integer.MIN_VALUE;
            } else {
                dz6Var = new dz6(this, f02Var);
            }
        } else {
            dz6Var = new dz6(this, f02Var);
        }
        Object obj = dz6Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = dz6Var.o;
        b24 b24Var = this.a;
        if (i2 == 0) {
            r57.b(obj);
            List<e94> list = this.b;
            int i3 = this.c;
            e94 e94Var2 = list.get(i3);
            a13 a13Var = this.f;
            boolean z = this.g;
            fz6 fz6Var = new fz6(b24Var, this.b, i3 + 1, this.d, this.e, a13Var, z);
            dz6Var.l = e94Var2;
            dz6Var.o = 1;
            Object objA = e94Var2.a(fz6Var, dz6Var);
            if (objA == a32Var) {
                return a32Var;
            }
            obj = objA;
            e94Var = e94Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            e94Var = dz6Var.l;
            r57.b(obj);
        }
        g24 g24Var = (g24) obj;
        b24 request = g24Var.getRequest();
        if (request.a != b24Var.a) {
            wg.c(e94Var, "Interceptor '", "' cannot modify the request's context.");
            return null;
        }
        if (request.b == zp5.a) {
            wg.c(e94Var, "Interceptor '", "' cannot set the request's data to null.");
            return null;
        }
        if (request.c != b24Var.c) {
            wg.c(e94Var, "Interceptor '", "' cannot modify the request's target.");
            return null;
        }
        if (request.o == b24Var.o) {
            return g24Var;
        }
        wg.c(e94Var, "Interceptor '", "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.");
        return null;
    }

    @Override // e94.a
    public final b24 getRequest() {
        return this.d;
    }
}
