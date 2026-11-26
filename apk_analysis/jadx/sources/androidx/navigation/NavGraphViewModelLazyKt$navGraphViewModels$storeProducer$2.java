package androidx.navigation;

import androidx.lifecycle.ViewModelStore;
import defpackage.cl4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2 implements ll3<ViewModelStore> {
    final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;

    public NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2(cl4<NavBackStackEntry> cl4Var) {
        this.$backStackEntry$delegate = cl4Var;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final ViewModelStore invoke() {
        return NavGraphViewModelLazyKt.m9352navGraphViewModels$lambda1(this.$backStackEntry$delegate).getViewModelStore();
    }
}
