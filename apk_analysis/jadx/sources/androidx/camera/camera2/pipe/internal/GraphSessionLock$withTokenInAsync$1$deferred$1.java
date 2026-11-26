package androidx.camera.camera2.pipe.internal;

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

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.internal.GraphSessionLock$withTokenInAsync$1$deferred$1", f = "GraphSessionLock.kt", l = {64}, m = "invokeSuspend", v = 1)
public final class GraphSessionLock$withTokenInAsync$1$deferred$1<T> extends pg8 implements bm3<Token, e02<? super mk2<? extends T>>, Object> {
    final /* synthetic */ bm3<Token, e02<? super mk2<? extends T>>, Object> $action;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GraphSessionLock$withTokenInAsync$1$deferred$1(bm3<? super Token, ? super e02<? super mk2<? extends T>>, ? extends Object> bm3Var, e02<? super GraphSessionLock$withTokenInAsync$1$deferred$1> e02Var) {
        super(2, e02Var);
        this.$action = bm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        GraphSessionLock$withTokenInAsync$1$deferred$1 graphSessionLock$withTokenInAsync$1$deferred$1 = new GraphSessionLock$withTokenInAsync$1$deferred$1(this.$action, e02Var);
        graphSessionLock$withTokenInAsync$1$deferred$1.L$0 = obj;
        return graphSessionLock$withTokenInAsync$1$deferred$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(Token token, e02<? super mk2<? extends T>> e02Var) {
        return ((GraphSessionLock$withTokenInAsync$1$deferred$1) create(token, e02Var)).invokeSuspend(j59.a);
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
        bm3<Token, e02<? super mk2<? extends T>>, Object> bm3Var = this.$action;
        this.label = 1;
        Object objInvoke = bm3Var.invoke(token, this);
        return objInvoke == a32Var ? a32Var : objInvoke;
    }
}
