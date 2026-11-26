package androidx.compose.ui.platform;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1(LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry) {
        super(0);
        this.this$0 = retainedValuesStoreEntry;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0._retainedValuesStore.endLifecycleTransition();
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
