package androidx.fragment.app;

import androidx.lifecycle.ViewModelProvider;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1 extends gh4 implements ll3<ViewModelProvider.Factory> {
    final /* synthetic */ Fragment $this_createViewModelLazy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1(Fragment fragment) {
        super(0);
        this.$this_createViewModelLazy = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final ViewModelProvider.Factory invoke() {
        return this.$this_createViewModelLazy.getDefaultViewModelProviderFactory();
    }
}
