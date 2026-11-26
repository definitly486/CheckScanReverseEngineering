package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.internal.CanonicalName_jvmKt;
import androidx.lifecycle.viewmodel.internal.ViewModelProviders;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.w7;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@ViewModelFactoryDsl
public final class InitializerViewModelFactoryBuilder {
    private final Map<ne4<?>, ViewModelInitializer<?>> initializers = new LinkedHashMap();

    public final <T extends ViewModel> void addInitializer(ne4<T> ne4Var, nl3<? super CreationExtras, ? extends T> nl3Var) {
        ne4Var.getClass();
        nl3Var.getClass();
        if (this.initializers.containsKey(ne4Var)) {
            w7.g(CanonicalName_jvmKt.getCanonicalName(ne4Var), "A `initializer` with the same `clazz` has already been added: ", 46);
        } else {
            this.initializers.put(ne4Var, new ViewModelInitializer<>(ne4Var, nl3Var));
        }
    }

    public final ViewModelProvider.Factory build() {
        return ViewModelProviders.INSTANCE.createInitializerFactory$lifecycle_viewmodel(this.initializers.values());
    }
}
