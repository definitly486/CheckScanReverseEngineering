package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.config.CameraGraphScope;
import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.core.MutexesKt;
import androidx.camera.camera2.pipe.core.Token;
import defpackage.a0;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.ch5;
import defpackage.e02;
import defpackage.el4;
import defpackage.f02;
import defpackage.hq1;
import defpackage.j59;
import defpackage.mb4;
import defpackage.mk2;
import defpackage.nb4;
import defpackage.nk2;
import defpackage.o22;
import defpackage.q22;
import defpackage.r57;
import defpackage.sb4;
import defpackage.vr3;
import defpackage.y22;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class GraphSessionLock {
    private final yg5 mutex = new ch5();

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.GraphSessionLock$use$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.internal.GraphSessionLock", f = "GraphSessionLock.kt", l = {98}, m = "use", v = 1)
    public static final class AnonymousClass1<T> extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GraphSessionLock.this.use(null, null, this);
        }
    }

    private final <T> mk2<T> asyncUndispatched(y22 y22Var, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var) {
        nb4 nb4Var = new nb4((mb4) y22Var.getCoroutineContext().get(mb4.a.b));
        o22 o22VarPlus = y22Var.getCoroutineContext().plus(nb4Var);
        c32 c32Var = c32.UNDISPATCHED;
        GraphSessionLock$asyncUndispatched$result$1 graphSessionLock$asyncUndispatched$result$1 = new GraphSessionLock$asyncUndispatched$result$1(bm3Var, null);
        o22 o22VarB = q22.b(y22Var, o22VarPlus);
        c32Var.getClass();
        nk2 el4Var = c32Var == c32.LAZY ? new el4(o22VarB, graphSessionLock$asyncUndispatched$result$1) : new nk2(o22VarB, true, true);
        ((a0) el4Var).m0(c32Var, (a0) el4Var, graphSessionLock$asyncUndispatched$result$1);
        ((sb4) el4Var).g(new vr3(nb4Var, 0));
        return (mk2<T>) el4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 asyncUndispatched$lambda$0(hq1 hq1Var, Throwable th) {
        hq1Var.complete();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final <T> Object use(Token token, bm3<? super Token, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        AnonymousClass1 anonymousClass1;
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
        Object objInvoke = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                r57.b(objInvoke);
                anonymousClass1.L$0 = token;
                anonymousClass1.label = 1;
                objInvoke = bm3Var.invoke(token, anonymousClass1);
                if (objInvoke == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                token = (Token) anonymousClass1.L$0;
                r57.b(objInvoke);
            }
            token.release();
            return objInvoke;
        } catch (Throwable th) {
            token.release();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object acquireToken$camera_camera2_pipe(e02<? super Token> e02Var) {
        GraphSessionLock$acquireToken$1 graphSessionLock$acquireToken$1;
        yg5 yg5Var;
        if (e02Var instanceof GraphSessionLock$acquireToken$1) {
            graphSessionLock$acquireToken$1 = (GraphSessionLock$acquireToken$1) e02Var;
            int i = graphSessionLock$acquireToken$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                graphSessionLock$acquireToken$1.label = i - Integer.MIN_VALUE;
            } else {
                graphSessionLock$acquireToken$1 = new GraphSessionLock$acquireToken$1(this, e02Var);
            }
        } else {
            graphSessionLock$acquireToken$1 = new GraphSessionLock$acquireToken$1(this, e02Var);
        }
        Object obj = graphSessionLock$acquireToken$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = graphSessionLock$acquireToken$1.label;
        if (i2 == 0) {
            r57.b(obj);
            yg5Var = this.mutex;
            graphSessionLock$acquireToken$1.L$0 = yg5Var;
            graphSessionLock$acquireToken$1.label = 1;
            if (yg5Var.lock(null, graphSessionLock$acquireToken$1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5Var = (yg5) graphSessionLock$acquireToken$1.L$0;
            r57.b(obj);
        }
        return new MutexToken(yg5Var);
    }

    public final Token tryAcquireToken$camera_camera2_pipe() {
        return MutexesKt.tryAcquireToken(this.mutex);
    }

    public final <T> mk2<T> withTokenIn$camera_camera2_pipe(y22 y22Var, bm3<? super Token, ? super e02<? super T>, ? extends Object> bm3Var) {
        y22Var.getClass();
        bm3Var.getClass();
        return asyncUndispatched(y22Var, new GraphSessionLock$withTokenIn$1(this, bm3Var, null));
    }

    public final <T> mk2<T> withTokenInAsync$camera_camera2_pipe(y22 y22Var, bm3<? super Token, ? super e02<? super mk2<? extends T>>, ? extends Object> bm3Var) {
        y22Var.getClass();
        bm3Var.getClass();
        return asyncUndispatched(y22Var, new GraphSessionLock$withTokenInAsync$1(this, bm3Var, null));
    }
}
