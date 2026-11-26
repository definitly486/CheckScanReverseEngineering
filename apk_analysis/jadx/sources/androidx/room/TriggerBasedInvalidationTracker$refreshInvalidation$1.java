package androidx.room;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {372}, m = "refreshInvalidation$room_runtime")
public final class TriggerBasedInvalidationTracker$refreshInvalidation$1 extends f02 {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$refreshInvalidation$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, e02<? super TriggerBasedInvalidationTracker$refreshInvalidation$1> e02Var) {
        super(e02Var);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.refreshInvalidation$room_runtime(null, null, null, this);
    }
}
