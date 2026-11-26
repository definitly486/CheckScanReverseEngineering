package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.r57;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class qj2 {
    public static final AtomicBoolean e = new AtomicBoolean(true);
    public final t5 a;
    public final Context b;
    public final c5 c;
    public final u93 d;

    public qj2(Context context, t5 t5Var) {
        Context applicationContext = context.getApplicationContext();
        c5 c5Var = new c5();
        u93 u93Var = new u93();
        this.a = t5Var;
        this.b = applicationContext;
        this.c = c5Var;
        this.d = u93Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) {
        mj2 mj2Var;
        t5 t5Var;
        Throwable th;
        s5 s5Var;
        if (f02Var instanceof mj2) {
            mj2Var = (mj2) f02Var;
            int i = mj2Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                mj2Var.f = i - Integer.MIN_VALUE;
            } else {
                mj2Var = new mj2(this, f02Var);
            }
        } else {
            mj2Var = new mj2(this, f02Var);
        }
        Object obj = mj2Var.d;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = mj2Var.f;
        if (i2 == 0) {
            r57.b(obj);
            if (e.getAndSet(false)) {
                t5 t5Var2 = this.a;
                s5 s5Var2 = s5.DNS_PREFETCH;
                t5Var2.b(s5Var2);
                try {
                    defpackage.r22 r22VarA = e90.a();
                    nj2 nj2Var = new nj2(this, null);
                    mj2Var.b = t5Var2;
                    mj2Var.c = s5Var2;
                    mj2Var.f = 1;
                    if (defpackage.av0.d(r22VarA, nj2Var, mj2Var) == a32Var) {
                        return a32Var;
                    }
                    t5Var = t5Var2;
                    s5Var = s5Var2;
                    j59 j59Var = j59.a;
                    t5Var.a(s5Var);
                } catch (Throwable th2) {
                    t5Var = t5Var2;
                    th = th2;
                    s5Var = s5Var2;
                    th.getMessage();
                }
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            s5Var = mj2Var.c;
            t5Var = mj2Var.b;
            try {
                r57.b(obj);
            } catch (Throwable th3) {
                th = th3;
                th.getMessage();
            }
            j59 j59Var2 = j59.a;
            t5Var.a(s5Var);
        }
        return j59.a;
    }

    public final void a(String str) {
        this.d.a(2000, str);
    }
}
