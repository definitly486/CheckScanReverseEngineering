package defpackage;

import com.warefly.checkscan.presentation.operations.allOperations.view.AllOperationsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class oc extends gh4 implements ll3<j59> {
    public final /* synthetic */ AllOperationsFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oc(AllOperationsFragment allOperationsFragment) {
        super(0);
        this.f = allOperationsFragment;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        this.f.o().onLoadMoreOperations();
        return j59.a;
    }
}
