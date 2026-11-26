package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class yh extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ Context b;
    public final /* synthetic */ q84 c;
    public final /* synthetic */ defpackage.y22 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yh(Context context, q84 q84Var, defpackage.y22 y22Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = context;
        this.c = q84Var;
        this.d = y22Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new yh(this.b, this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((yh) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        try {
            if (zh.b != null) {
                j59 j59Var = j59.a;
                zh.a.set(false);
                return j59Var;
            }
            zg5 zg5Var = zg5.l;
            if (zg5Var == null) {
                synchronized (zg5.k) {
                    zg5Var = zg5.l;
                    if (zg5Var == null) {
                        zg5Var = new zg5();
                        zg5.l = zg5Var;
                    }
                }
            }
            fe5 fe5VarA = zg5Var.a(this.b);
            if (fe5VarA != null && fe5VarA.m0) {
                Set set = fe5VarA.r0;
                if (set == null) {
                    set = defpackage.ox2.b;
                }
                Integer num = fe5VarA.n0;
                int iIntValue = num != null ? num.intValue() : 10;
                Integer num2 = fe5VarA.o0;
                int iIntValue2 = num2 != null ? num2.intValue() : 91;
                Boolean bool = fe5VarA.p0;
                boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                mf mfVar = new mf(set, iIntValue, iIntValue2, zBooleanValue);
                uh uhVar = new uh(this.b);
                vh vhVar = new vh(this.c, zBooleanValue);
                ef efVar = new ef(bv3.a(this.b, "YadPreferenceFile"));
                AtomicBoolean atomicBoolean = zh.a;
                zh.b = new xh(mfVar, this.d, uhVar, vhVar, efVar, this.c);
                xh xhVar = zh.b;
                if (xhVar != null && !xhVar.h.getAndSet(true)) {
                    defpackage.av0.c(xhVar.b, xhVar.f, null, new wh(xhVar, null), 2);
                }
            }
            zh.a.set(false);
            return j59.a;
        } catch (Throwable th) {
            zh.a.set(false);
            throw th;
        }
    }
}
