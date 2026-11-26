package androidx.work.impl.constraints;

import androidx.work.Logger;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ug6;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.work.impl.constraints.NetworkRequestConstraintController$track$1$timeoutJob$1", f = "WorkConstraintsTracker.kt", l = {162}, m = "invokeSuspend")
public final class NetworkRequestConstraintController$track$1$timeoutJob$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ ug6<ConstraintsState> $$this$callbackFlow;
    int label;
    final /* synthetic */ NetworkRequestConstraintController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NetworkRequestConstraintController$track$1$timeoutJob$1(NetworkRequestConstraintController networkRequestConstraintController, ug6<? super ConstraintsState> ug6Var, e02<? super NetworkRequestConstraintController$track$1$timeoutJob$1> e02Var) {
        super(2, e02Var);
        this.this$0 = networkRequestConstraintController;
        this.$$this$callbackFlow = ug6Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new NetworkRequestConstraintController$track$1$timeoutJob$1(this.this$0, this.$$this$callbackFlow, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((NetworkRequestConstraintController$track$1$timeoutJob$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            long j = this.this$0.timeoutMs;
            this.label = 1;
            if (yk2.b(j, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController didn't receive neither onCapabilitiesChanged/onLost callback, sending `ConstraintsNotMet` after " + this.this$0.timeoutMs + " ms");
        this.$$this$callbackFlow.mo0trySendJP2dKIU(new ConstraintsState.ConstraintsNotMet(7));
        return j59.a;
    }
}
