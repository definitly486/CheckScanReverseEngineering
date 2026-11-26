package androidx.camera.camera2.pipe.core;

import androidx.compose.runtime.ComposerKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.core.PruningProcessingQueue$Companion$processIn$job$1", f = "PruningProcessingQueue.kt", l = {ComposerKt.compositionLocalMapKey}, m = "invokeSuspend", v = 1)
public final class PruningProcessingQueue$Companion$processIn$job$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ PruningProcessingQueue<T> $this_processIn;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningProcessingQueue$Companion$processIn$job$1(PruningProcessingQueue<T> pruningProcessingQueue, e02<? super PruningProcessingQueue$Companion$processIn$job$1> e02Var) {
        super(2, e02Var);
        this.$this_processIn = pruningProcessingQueue;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new PruningProcessingQueue$Companion$processIn$job$1(this.$this_processIn, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((PruningProcessingQueue$Companion$processIn$job$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            PruningProcessingQueue<T> pruningProcessingQueue = this.$this_processIn;
            this.label = 1;
            if (pruningProcessingQueue.processingLoop(this) == a32Var) {
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
