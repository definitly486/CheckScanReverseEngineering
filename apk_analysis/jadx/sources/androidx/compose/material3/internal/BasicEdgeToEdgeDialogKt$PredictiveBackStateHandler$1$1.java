package androidx.compose.material3.internal;

import androidx.activity.BackEventCompat;
import androidx.compose.runtime.State;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.internal.BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1", f = "BasicEdgeToEdgeDialog.kt", l = {100}, m = "invokeSuspend")
public final class BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1 extends pg8 implements bm3<hd3<? extends BackEventCompat>, e02<? super j59>, Object> {
    final /* synthetic */ State<ll3<j59>> $currentOnBack$delegate;
    final /* synthetic */ PredictiveBackState $state;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1(PredictiveBackState predictiveBackState, State<? extends ll3<j59>> state, e02<? super BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1> e02Var) {
        super(2, e02Var);
        this.$state = predictiveBackState;
        this.$currentOnBack$delegate = state;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1 basicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1 = new BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1(this.$state, this.$currentOnBack$delegate, e02Var);
        basicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1.L$0 = obj;
        return basicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(hd3<BackEventCompat> hd3Var, e02<? super j59> e02Var) {
        return ((BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1) create(hd3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                r57.b(obj);
                hd3 hd3Var = (hd3) this.L$0;
                final PredictiveBackState predictiveBackState = this.$state;
                id3 id3Var = new id3() { // from class: androidx.compose.material3.internal.BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1.1
                    public final Object emit(BackEventCompat backEventCompat, e02<? super j59> e02Var) {
                        SwipeEdge swipeEdge;
                        PredictiveBackStateImpl predictiveBackStateImpl = (PredictiveBackStateImpl) predictiveBackState;
                        float touchX = backEventCompat.getTouchX();
                        float touchY = backEventCompat.getTouchY();
                        float progress = backEventCompat.getProgress();
                        int swipeEdge2 = backEventCompat.getSwipeEdge();
                        if (swipeEdge2 != 0) {
                            swipeEdge = swipeEdge2 != 1 ? SwipeEdge.None : SwipeEdge.Right;
                        } else {
                            swipeEdge = SwipeEdge.Left;
                        }
                        predictiveBackStateImpl.setValue(new BackEventProgress.InProgress(touchX, touchY, progress, swipeEdge));
                        return j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((BackEventCompat) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                if (hd3Var.collect(id3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            ((PredictiveBackStateImpl) this.$state).setValue(BackEventProgress.Completed.INSTANCE);
            BasicEdgeToEdgeDialogKt.PredictiveBackStateHandler$lambda$1(this.$currentOnBack$delegate).invoke();
            return j59.a;
        } catch (CancellationException e) {
            ((PredictiveBackStateImpl) this.$state).setValue(BackEventProgress.NotRunning.INSTANCE);
            throw e;
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(hd3<? extends BackEventCompat> hd3Var, e02<? super j59> e02Var) {
        return invoke2((hd3<BackEventCompat>) hd3Var, e02Var);
    }
}
