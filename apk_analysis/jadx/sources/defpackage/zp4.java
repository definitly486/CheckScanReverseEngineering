package defpackage;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;

/* JADX INFO: loaded from: classes3.dex */
public final class zp4 {
    /* JADX WARN: Code duplicated, block: B:29:0x0076  */
    /* JADX WARN: Code duplicated, block: B:36:0x0087  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [T, androidx.lifecycle.LifecycleObserver, yp4] */
    public static final Object a(Lifecycle lifecycle, f02 f02Var) throws Throwable {
        xp4 xp4Var;
        Lifecycle lifecycle2;
        r07 r07Var;
        Throwable th;
        Lifecycle lifecycle3;
        LifecycleObserver lifecycleObserver;
        LifecycleObserver lifecycleObserver2;
        if (f02Var instanceof xp4) {
            xp4Var = (xp4) f02Var;
            int i = xp4Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                xp4Var.o = i - Integer.MIN_VALUE;
            } else {
                xp4Var = new xp4(f02Var);
            }
        } else {
            xp4Var = new xp4(f02Var);
        }
        Object obj = xp4Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = xp4Var.o;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var = xp4Var.m;
            lifecycle2 = xp4Var.l;
            try {
                r57.b(obj);
                lifecycle3 = lifecycle2;
                lifecycleObserver2 = (LifecycleObserver) r07Var.b;
                if (lifecycleObserver2 != null) {
                    lifecycle3.removeObserver(lifecycleObserver2);
                }
                return j59.a;
            } catch (Throwable th2) {
                th = th2;
                lifecycleObserver = (LifecycleObserver) r07Var.b;
                if (lifecycleObserver != null) {
                    lifecycle2.removeObserver(lifecycleObserver);
                }
                throw th;
            }
        }
        r57.b(obj);
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            return j59.a;
        }
        r07 r07Var2 = new r07();
        try {
            xp4Var.l = lifecycle;
            xp4Var.m = r07Var2;
            xp4Var.o = 1;
            c31 c31Var = new c31(1, zya.b(xp4Var));
            c31Var.u();
            ?? yp4Var = new yp4(c31Var);
            r07Var2.b = yp4Var;
            lifecycle.addObserver(yp4Var);
            if (c31Var.s() == a32Var) {
                return a32Var;
            }
            lifecycle3 = lifecycle;
            r07Var = r07Var2;
            lifecycleObserver2 = (LifecycleObserver) r07Var.b;
            if (lifecycleObserver2 != null) {
                lifecycle3.removeObserver(lifecycleObserver2);
            }
            return j59.a;
        } catch (Throwable th3) {
            lifecycle2 = lifecycle;
            r07Var = r07Var2;
            th = th3;
            lifecycleObserver = (LifecycleObserver) r07Var.b;
            if (lifecycleObserver != null) {
                lifecycle2.removeObserver(lifecycleObserver);
            }
            throw th;
        }
    }
}
