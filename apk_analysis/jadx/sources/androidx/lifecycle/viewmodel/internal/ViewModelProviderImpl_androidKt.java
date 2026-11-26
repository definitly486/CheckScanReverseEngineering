package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import defpackage.d31;
import defpackage.ne4;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewModelProviderImpl_androidKt {
    public static final <VM extends ViewModel> VM createViewModel(ViewModelProvider.Factory factory, ne4<VM> ne4Var, CreationExtras creationExtras) {
        factory.getClass();
        ne4Var.getClass();
        creationExtras.getClass();
        try {
            try {
                return (VM) factory.create(ne4Var, creationExtras);
            } catch (AbstractMethodError unused) {
                return (VM) factory.create(d31.n(ne4Var));
            }
        } catch (AbstractMethodError unused2) {
            return (VM) factory.create(d31.n(ne4Var), creationExtras);
        }
    }
}
