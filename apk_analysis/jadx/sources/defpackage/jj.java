package defpackage;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class jj extends i36 {
    public final CreationExtras c;

    /* JADX WARN: Illegal instructions before constructor call */
    public jj(sk skVar, CreationExtras creationExtras) {
        List<Object> list = ((i36) skVar.invoke()).a;
        super(list != null ? new ArrayList(list) : new ArrayList(), 2);
        this.c = creationExtras;
    }

    @Override // defpackage.i36
    public final Object a(int i, zk1 zk1Var) {
        if (!zk1Var.equals(x07.a(SavedStateHandle.class))) {
            return super.a(i, zk1Var);
        }
        try {
            return SavedStateHandleSupport.createSavedStateHandle(this.c);
        } catch (IllegalArgumentException e) {
            h2.e("Koin could not create a SavedStateHandle: the ViewModel's CreationExtras has no SavedStateRegistryOwner. Resolve the ViewModel via koinViewModel()/koinNavViewModel() with a proper owner (e.g. a NavBackStackEntry), and inject SavedStateHandle directly in the ViewModel constructor (not lazily/outside construction).", e);
            return null;
        }
    }

    @Override // defpackage.i36
    public final <T> T b(ne4<?> ne4Var) {
        if (!vh.g(ne4Var, SavedStateHandle.class)) {
            return (T) super.b(ne4Var);
        }
        try {
            return (T) SavedStateHandleSupport.createSavedStateHandle(this.c);
        } catch (IllegalArgumentException e) {
            h2.e("Koin could not create a SavedStateHandle: the ViewModel's CreationExtras has no SavedStateRegistryOwner. Resolve the ViewModel via koinViewModel()/koinNavViewModel() with a proper owner (e.g. a NavBackStackEntry), and inject SavedStateHandle directly in the ViewModel constructor (not lazily/outside construction).", e);
            return null;
        }
    }
}
