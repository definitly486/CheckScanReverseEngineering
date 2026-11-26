package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import defpackage.aa4;
import defpackage.eg;
import defpackage.fg;
import defpackage.ne4;
import defpackage.nl3;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewModelProviders {
    public static final ViewModelProviders INSTANCE = new ViewModelProviders();
    private static final String VIEW_MODEL_PROVIDER_DEFAULT_KEY = "androidx.lifecycle.ViewModelProvider.DefaultKey";

    private ViewModelProviders() {
    }

    public final ViewModelProvider.Factory createInitializerFactory$lifecycle_viewmodel(Collection<? extends ViewModelInitializer<?>> collection) {
        collection.getClass();
        ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) collection.toArray(new ViewModelInitializer[0]);
        return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
    }

    public final <VM extends ViewModel> VM createViewModelFromInitializers$lifecycle_viewmodel(ne4<VM> ne4Var, CreationExtras creationExtras, ViewModelInitializer<?>... viewModelInitializerArr) {
        ViewModelInitializer<?> viewModelInitializer;
        nl3<CreationExtras, T> initializer$lifecycle_viewmodel;
        ne4Var.getClass();
        creationExtras.getClass();
        viewModelInitializerArr.getClass();
        int length = viewModelInitializerArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                viewModelInitializer = null;
                break;
            }
            viewModelInitializer = viewModelInitializerArr[i];
            if (aa4.e(viewModelInitializer.getClazz$lifecycle_viewmodel(), ne4Var)) {
                break;
            }
            i++;
        }
        VM vm = (viewModelInitializer == null || (initializer$lifecycle_viewmodel = viewModelInitializer.getInitializer$lifecycle_viewmodel()) == 0) ? null : (VM) initializer$lifecycle_viewmodel.invoke(creationExtras);
        if (vm != null) {
            return vm;
        }
        eg.d(CanonicalName_jvmKt.getCanonicalName(ne4Var), "No initializer set for given class ");
        return null;
    }

    public final CreationExtras getDefaultCreationExtras$lifecycle_viewmodel(ViewModelStoreOwner viewModelStoreOwner) {
        viewModelStoreOwner.getClass();
        return viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
    }

    public final ViewModelProvider.Factory getDefaultFactory$lifecycle_viewmodel(ViewModelStoreOwner viewModelStoreOwner) {
        viewModelStoreOwner.getClass();
        return viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelProviderFactory() : DefaultViewModelProviderFactory.INSTANCE;
    }

    public final <T extends ViewModel> String getDefaultKey$lifecycle_viewmodel(ne4<T> ne4Var) {
        ne4Var.getClass();
        String canonicalName = CanonicalName_jvmKt.getCanonicalName(ne4Var);
        if (canonicalName != null) {
            return "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
        }
        fg.c("Local and anonymous classes can not be ViewModels");
        return null;
    }

    public final <VM extends ViewModel> VM unsupportedCreateViewModel$lifecycle_viewmodel() {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }

    public final ViewModelProvider.Factory createInitializerFactory$lifecycle_viewmodel(ViewModelInitializer<?>... viewModelInitializerArr) {
        viewModelInitializerArr.getClass();
        return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
    }
}
