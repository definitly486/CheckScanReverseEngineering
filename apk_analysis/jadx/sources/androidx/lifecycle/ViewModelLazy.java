package androidx.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.viewmodel.CreationExtras;
import defpackage.cl4;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.ne4;
import defpackage.z52;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewModelLazy<VM extends ViewModel> implements cl4<VM> {
    private VM cached;
    private final ll3<CreationExtras> extrasProducer;
    private final ll3<ViewModelProvider.Factory> factoryProducer;
    private final ll3<ViewModelStore> storeProducer;
    private final ne4<VM> viewModelClass;

    /* JADX WARN: Multi-variable type inference failed */
    public ViewModelLazy(ne4<VM> ne4Var, ll3<? extends ViewModelStore> ll3Var, ll3<? extends ViewModelProvider.Factory> ll3Var2, ll3<? extends CreationExtras> ll3Var3) {
        ne4Var.getClass();
        ll3Var.getClass();
        ll3Var2.getClass();
        ll3Var3.getClass();
        this.viewModelClass = ne4Var;
        this.storeProducer = ll3Var;
        this.factoryProducer = ll3Var2;
        this.extrasProducer = ll3Var3;
    }

    @Override // defpackage.cl4
    public VM getValue() {
        VM vm = this.cached;
        if (vm != null) {
            return vm;
        }
        VM vm2 = (VM) ViewModelProvider.Companion.create(this.storeProducer.invoke(), this.factoryProducer.invoke(), this.extrasProducer.invoke()).get(this.viewModelClass);
        this.cached = vm2;
        return vm2;
    }

    @Override // defpackage.cl4
    public boolean isInitialized() {
        return this.cached != null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(ne4<VM> ne4Var, ll3<? extends ViewModelStore> ll3Var, ll3<? extends ViewModelProvider.Factory> ll3Var2) {
        this(ne4Var, ll3Var, ll3Var2, null, 8, null);
        ne4Var.getClass();
        ll3Var.getClass();
        ll3Var2.getClass();
    }

    public /* synthetic */ ViewModelLazy(ne4 ne4Var, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, int i, jh2 jh2Var) {
        this(ne4Var, ll3Var, ll3Var2, (i & 8) != 0 ? new z52(1) : ll3Var3);
    }
}
