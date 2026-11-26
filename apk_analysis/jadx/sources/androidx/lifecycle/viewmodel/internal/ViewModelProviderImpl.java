package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import defpackage.ne4;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewModelProviderImpl {
    private final CreationExtras defaultExtras;
    private final ViewModelProvider.Factory factory;
    private final SynchronizedObject lock;
    private final ViewModelStore store;

    public ViewModelProviderImpl(ViewModelStore viewModelStore, ViewModelProvider.Factory factory, CreationExtras creationExtras) {
        viewModelStore.getClass();
        factory.getClass();
        creationExtras.getClass();
        this.store = viewModelStore;
        this.factory = factory;
        this.defaultExtras = creationExtras;
        this.lock = new SynchronizedObject();
    }

    public static /* synthetic */ ViewModel getViewModel$lifecycle_viewmodel$default(ViewModelProviderImpl viewModelProviderImpl, ne4 ne4Var, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = ViewModelProviders.INSTANCE.getDefaultKey$lifecycle_viewmodel(ne4Var);
        }
        return viewModelProviderImpl.getViewModel$lifecycle_viewmodel(ne4Var, str);
    }

    public final <T extends ViewModel> T getViewModel$lifecycle_viewmodel(ne4<T> ne4Var, String str) {
        T t;
        ne4Var.getClass();
        str.getClass();
        synchronized (this.lock) {
            try {
                t = (T) this.store.get(str);
                if (ne4Var.e(t)) {
                    if (this.factory instanceof ViewModelProvider.OnRequeryFactory) {
                        ViewModelProvider.OnRequeryFactory onRequeryFactory = (ViewModelProvider.OnRequeryFactory) this.factory;
                        t.getClass();
                        onRequeryFactory.onRequery(t);
                    }
                    t.getClass();
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.defaultExtras);
                    mutableCreationExtras.set(ViewModelProvider.VIEW_MODEL_KEY, str);
                    t = (T) ViewModelProviderImpl_androidKt.createViewModel(this.factory, ne4Var, mutableCreationExtras);
                    this.store.put(str, t);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t;
    }
}
