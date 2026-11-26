package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.x07;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewModelInitializer<T extends ViewModel> {
    private final ne4<T> clazz;
    private final nl3<CreationExtras, T> initializer;

    /* JADX WARN: Multi-variable type inference failed */
    public ViewModelInitializer(ne4<T> ne4Var, nl3<? super CreationExtras, ? extends T> nl3Var) {
        ne4Var.getClass();
        nl3Var.getClass();
        this.clazz = ne4Var;
        this.initializer = nl3Var;
    }

    public final ne4<T> getClazz$lifecycle_viewmodel() {
        return this.clazz;
    }

    public final nl3<CreationExtras, T> getInitializer$lifecycle_viewmodel() {
        return this.initializer;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelInitializer(Class<T> cls, nl3<? super CreationExtras, ? extends T> nl3Var) {
        this(x07.a(cls), nl3Var);
        cls.getClass();
        nl3Var.getClass();
    }
}
