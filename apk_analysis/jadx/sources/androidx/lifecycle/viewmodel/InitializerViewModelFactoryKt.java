package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class InitializerViewModelFactoryKt {
    public static final <VM extends ViewModel> void initializer(InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder, nl3<? super CreationExtras, ? extends VM> nl3Var) {
        initializerViewModelFactoryBuilder.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }

    public static final ViewModelProvider.Factory viewModelFactory(nl3<? super InitializerViewModelFactoryBuilder, j59> nl3Var) {
        nl3Var.getClass();
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        nl3Var.invoke(initializerViewModelFactoryBuilder);
        return initializerViewModelFactoryBuilder.build();
    }
}
