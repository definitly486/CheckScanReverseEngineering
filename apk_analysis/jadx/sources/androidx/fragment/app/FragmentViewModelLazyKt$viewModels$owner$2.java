package androidx.fragment.app;

import androidx.lifecycle.ViewModelStoreOwner;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentViewModelLazyKt$viewModels$owner$2 extends gh4 implements ll3<ViewModelStoreOwner> {
    final /* synthetic */ ll3<ViewModelStoreOwner> $ownerProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentViewModelLazyKt$viewModels$owner$2(ll3<? extends ViewModelStoreOwner> ll3Var) {
        super(0);
        this.$ownerProducer = ll3Var;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final ViewModelStoreOwner invoke() {
        return this.$ownerProducer.invoke();
    }
}
