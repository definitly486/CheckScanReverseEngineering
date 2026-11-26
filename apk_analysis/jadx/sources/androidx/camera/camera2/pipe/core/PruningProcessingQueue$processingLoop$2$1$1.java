package androidx.camera.camera2.pipe.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fr;
import defpackage.j59;
import defpackage.p91;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$processingLoop$2$1$1", f = "PruningProcessingQueue.kt", l = {}, m = "invokeSuspend", v = 1)
public final class PruningProcessingQueue$processingLoop$2$1$1<T> extends pg8 implements bm3<T, e02<? super j59>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PruningProcessingQueue<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningProcessingQueue$processingLoop$2$1$1(PruningProcessingQueue<T> pruningProcessingQueue, e02<? super PruningProcessingQueue$processingLoop$2$1$1> e02Var) {
        super(2, e02Var);
        this.this$0 = pruningProcessingQueue;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PruningProcessingQueue$processingLoop$2$1$1 pruningProcessingQueue$processingLoop$2$1$1 = new PruningProcessingQueue$processingLoop$2$1$1(this.this$0, e02Var);
        pruningProcessingQueue$processingLoop$2$1$1.L$0 = obj;
        return pruningProcessingQueue$processingLoop$2$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(T t, e02<? super j59> e02Var) {
        return ((PruningProcessingQueue$processingLoop$2$1$1) create(t, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        ((PruningProcessingQueue) this.this$0).queue.addLast(this.L$0);
        Object objI = ((PruningProcessingQueue) this.this$0).channel.i();
        while (!(objI instanceof p91.b)) {
            fr frVar = ((PruningProcessingQueue) this.this$0).queue;
            p91.c(objI);
            frVar.addLast(objI);
            objI = ((PruningProcessingQueue) this.this$0).channel.i();
        }
        Log log = Log.INSTANCE;
        PruningProcessingQueue<T> pruningProcessingQueue = this.this$0;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "PruningProcessingQueue: Pruning " + ((PruningProcessingQueue) pruningProcessingQueue).queue);
        }
        ((PruningProcessingQueue) this.this$0).prune.invoke(((PruningProcessingQueue) this.this$0).queue);
        return j59.a;
    }
}
