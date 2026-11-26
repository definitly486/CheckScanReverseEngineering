package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.qb4;
import defpackage.r57;
import defpackage.y22;
import defpackage.yv8;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.CameraPipeLifetime$shutdownScope$1$2", f = "CameraPipeLifetime.kt", l = {119}, m = "invokeSuspend", v = 1)
public final class CameraPipeLifetime$shutdownScope$1$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ CameraPipeLifetime this$0;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.CameraPipeLifetime$shutdownScope$1$2$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.internal.CameraPipeLifetime$shutdownScope$1$2$1", f = "CameraPipeLifetime.kt", l = {121}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ CameraPipeLifetime this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CameraPipeLifetime cameraPipeLifetime, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = cameraPipeLifetime;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, "Cancelling CameraPipe root Job...");
                }
                mb4 mb4Var = this.this$0.cameraPipeJob;
                this.label = 1;
                if (qb4.c(mb4Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraPipeLifetime$shutdownScope$1$2(CameraPipeLifetime cameraPipeLifetime, e02<? super CameraPipeLifetime$shutdownScope$1$2> e02Var) {
        super(2, e02Var);
        this.this$0 = cameraPipeLifetime;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CameraPipeLifetime$shutdownScope$1$2(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CameraPipeLifetime$shutdownScope$1$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
        this.label = 1;
        Object objC = yv8.c(3000L, anonymousClass1, this);
        return objC == a32Var ? a32Var : objC;
    }
}
