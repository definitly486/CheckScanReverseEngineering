package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import defpackage.d31;
import defpackage.ne4;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultViewModelProviderFactory implements ViewModelProvider.Factory {
    public static final DefaultViewModelProviderFactory INSTANCE = new DefaultViewModelProviderFactory();

    private DefaultViewModelProviderFactory() {
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(ne4<T> ne4Var, CreationExtras creationExtras) {
        ne4Var.getClass();
        creationExtras.getClass();
        return (T) JvmViewModelProviders.INSTANCE.createViewModel(d31.n(ne4Var));
    }
}
