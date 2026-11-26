package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.core.MutexesKt;
import androidx.camera.camera2.pipe.core.Token;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yg5;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenIn$1", f = "GraphSessionLock.kt", l = {105, 54}, m = "invokeSuspend", v = 1)
public final class GraphSessionLock$withTokenIn$1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
    final /* synthetic */ bm3<Token, e02<? super T>, Object> $action;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ GraphSessionLock this$0;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenIn$1$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenIn$1$1", f = "GraphSessionLock.kt", l = {54}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<Token, e02<? super T>, Object> {
        final /* synthetic */ bm3<Token, e02<? super T>, Object> $action;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(bm3<? super Token, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$action = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$action, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(Token token, e02<? super T> e02Var) {
            return ((AnonymousClass1) create(token, e02Var)).invokeSuspend(j59.a);
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
            Token token = (Token) this.L$0;
            bm3<Token, e02<? super T>, Object> bm3Var = this.$action;
            this.label = 1;
            Object objInvoke = bm3Var.invoke(token, this);
            return objInvoke == a32Var ? a32Var : objInvoke;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GraphSessionLock$withTokenIn$1(GraphSessionLock graphSessionLock, bm3<? super Token, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super GraphSessionLock$withTokenIn$1> e02Var) {
        super(2, e02Var);
        this.this$0 = graphSessionLock;
        this.$action = bm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new GraphSessionLock$withTokenIn$1(this.this$0, this.$action, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
        return ((GraphSessionLock$withTokenIn$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        GraphSessionLock graphSessionLock;
        yg5 yg5Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            graphSessionLock = this.this$0;
            yg5 yg5Var2 = graphSessionLock.mutex;
            this.L$0 = yg5Var2;
            this.L$1 = graphSessionLock;
            this.label = 1;
            if (MutexesKt.lockAndSuspend(yg5Var2, this) != a32Var) {
                yg5Var = yg5Var2;
            }
        }
        if (i != 1) {
            if (i == 2) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        graphSessionLock = (GraphSessionLock) this.L$1;
        yg5Var = (yg5) this.L$0;
        r57.b(obj);
        MutexToken mutexToken = new MutexToken(yg5Var);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$action, null);
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        Object objUse = graphSessionLock.use(mutexToken, anonymousClass1, this);
        return objUse == a32Var ? a32Var : objUse;
    }
}
