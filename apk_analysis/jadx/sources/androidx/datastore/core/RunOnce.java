package androidx.datastore.core;

import com.wdullaer.materialdatetimepicker.Utils;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.r57;
import defpackage.xp1;
import defpackage.yg5;
import defpackage.yp1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RunOnce {
    private final yg5 runMutex = new ch5();
    private final xp1<j59> didRun = new yp1();

    /* JADX INFO: renamed from: androidx.datastore.core.RunOnce$runIfNeeded$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.RunOnce", f = "DataStoreImpl.kt", l = {Utils.PULSE_ANIMATOR_DURATION, 497}, m = "runIfNeeded")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RunOnce.this.runIfNeeded(this);
        }
    }

    public final Object awaitComplete(e02<? super j59> e02Var) {
        Object objZ = this.didRun.Z(e02Var);
        return objZ == a32.COROUTINE_SUSPENDED ? objZ : j59.a;
    }

    public abstract Object doRun(e02<? super j59> e02Var);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object runIfNeeded(e02<? super j59> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        yg5 yg5Var;
        Throwable th;
        yg5 yg5Var2;
        RunOnce runOnce;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                if (this.didRun.P()) {
                    return j59.a;
                }
                yg5Var = this.runMutex;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = yg5Var;
                anonymousClass1.label = 1;
                if (yg5Var.lock(null, anonymousClass1) != a32Var) {
                }
                return a32Var;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                yg5Var2 = (yg5) anonymousClass1.L$1;
                runOnce = (RunOnce) anonymousClass1.L$0;
                try {
                    r57.b(obj);
                    xp1<j59> xp1Var = runOnce.didRun;
                    j59 j59Var = j59.a;
                    xp1Var.f(j59Var);
                    yg5Var2.unlock(null);
                    return j59Var;
                } catch (Throwable th2) {
                    th = th2;
                    yg5Var2.unlock(null);
                    throw th;
                }
            }
            yg5 yg5Var3 = (yg5) anonymousClass1.L$1;
            RunOnce runOnce2 = (RunOnce) anonymousClass1.L$0;
            r57.b(obj);
            yg5Var = yg5Var3;
            this = runOnce2;
            if (this.didRun.P()) {
                j59 j59Var2 = j59.a;
                yg5Var.unlock(null);
                return j59Var2;
            }
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = yg5Var;
            anonymousClass1.label = 2;
            if (this.doRun(anonymousClass1) != a32Var) {
                runOnce = this;
                yg5Var2 = yg5Var;
                xp1<j59> xp1Var2 = runOnce.didRun;
                j59 j59Var3 = j59.a;
                xp1Var2.f(j59Var3);
                yg5Var2.unlock(null);
                return j59Var3;
            }
            return a32Var;
        } catch (Throwable th3) {
            yg5 yg5Var4 = yg5Var;
            th = th3;
            yg5Var2 = yg5Var4;
            yg5Var2.unlock(null);
            throw th;
        }
    }
}
