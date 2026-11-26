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
import defpackage.mk2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yg5;
import defpackage.z22;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenInAsync$1", f = "GraphSessionLock.kt", l = {105, 64, 67}, m = "invokeSuspend", v = 1)
public final class GraphSessionLock$withTokenInAsync$1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
    final /* synthetic */ bm3<Token, e02<? super mk2<? extends T>>, Object> $action;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ GraphSessionLock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GraphSessionLock$withTokenInAsync$1(GraphSessionLock graphSessionLock, bm3<? super Token, ? super e02<? super mk2<? extends T>>, ? extends Object> bm3Var, e02<? super GraphSessionLock$withTokenInAsync$1> e02Var) {
        super(2, e02Var);
        this.this$0 = graphSessionLock;
        this.$action = bm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        GraphSessionLock$withTokenInAsync$1 graphSessionLock$withTokenInAsync$1 = new GraphSessionLock$withTokenInAsync$1(this.this$0, this.$action, e02Var);
        graphSessionLock$withTokenInAsync$1.L$0 = obj;
        return graphSessionLock$withTokenInAsync$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
        return ((GraphSessionLock$withTokenInAsync$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007f A[RETURN] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        y22 y22Var;
        GraphSessionLock graphSessionLock;
        yg5 yg5Var;
        y22 y22Var2;
        Object objZ;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            y22Var = (y22) this.L$0;
            graphSessionLock = this.this$0;
            yg5 yg5Var2 = graphSessionLock.mutex;
            this.L$0 = y22Var;
            this.L$1 = yg5Var2;
            this.L$2 = graphSessionLock;
            this.label = 1;
            if (MutexesKt.lockAndSuspend(yg5Var2, this) != a32Var) {
                yg5Var = yg5Var2;
            }
            return a32Var;
        }
        if (i == 1) {
            graphSessionLock = (GraphSessionLock) this.L$2;
            yg5Var = (yg5) this.L$1;
            y22 y22Var3 = (y22) this.L$0;
            r57.b(obj);
            y22Var = y22Var3;
        } else {
            if (i != 2) {
                if (i == 3) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            y22Var2 = (y22) this.L$0;
            r57.b(obj);
        }
        z22.d(y22Var2);
        this.L$0 = null;
        this.label = 3;
        objZ = ((mk2) obj).Z(this);
        if (objZ != a32Var) {
            return a32Var;
        }
        return objZ;
        MutexToken mutexToken = new MutexToken(yg5Var);
        GraphSessionLock$withTokenInAsync$1$deferred$1 graphSessionLock$withTokenInAsync$1$deferred$1 = new GraphSessionLock$withTokenInAsync$1$deferred$1(this.$action, null);
        this.L$0 = y22Var;
        this.L$1 = null;
        this.L$2 = null;
        this.label = 2;
        Object objUse = graphSessionLock.use(mutexToken, graphSessionLock$withTokenInAsync$1$deferred$1, this);
        if (objUse != a32Var) {
            y22Var2 = y22Var;
            obj = objUse;
            z22.d(y22Var2);
            this.L$0 = null;
            this.label = 3;
            objZ = ((mk2) obj).Z(this);
            if (objZ != a32Var) {
                return objZ;
            }
        }
        return a32Var;
    }
}
