package androidx.camera.camera2.pipe.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2$1$2", f = "PruningProcessingQueue.kt", l = {}, m = "invokeSuspend", v = 1)
public final class PruningProcessingQueue$processingLoop$2$1$2 extends pg8 implements bm3<j59, e02<? super j59>, Object> {
    final /* synthetic */ r07<mk2<j59>> $processDeferred;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningProcessingQueue$processingLoop$2$1$2(r07<mk2<j59>> r07Var, e02<? super PruningProcessingQueue$processingLoop$2$1$2> e02Var) {
        super(2, e02Var);
        this.$processDeferred = r07Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new PruningProcessingQueue$processingLoop$2$1$2(this.$processDeferred, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(j59 j59Var, e02<? super j59> e02Var) {
        return ((PruningProcessingQueue$processingLoop$2$1$2) create(j59Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.$processDeferred.b = null;
        return j59.a;
    }
}
