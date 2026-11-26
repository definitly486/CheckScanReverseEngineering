package androidx.navigation;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.media3.muxer.MuxerUtil;
import androidx.navigation.internal.Utils_jvmCommonKt;
import defpackage.ga1;
import defpackage.jh2;
import defpackage.vp2;
import defpackage.x07;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class NavControllerViewModel extends ViewModel implements NavViewModelStoreProvider {
    public static final Companion Companion = new Companion(null);
    private final Map<String, ViewModelStore> viewModelStores = new LinkedHashMap();

    public final void clear(String str) {
        str.getClass();
        ViewModelStore viewModelStoreRemove = this.viewModelStores.remove(str);
        if (viewModelStoreRemove != null) {
            viewModelStoreRemove.clear();
        }
    }

    @Override // androidx.navigation.NavViewModelStoreProvider
    public ViewModelStore getViewModelStore(String str) {
        str.getClass();
        ViewModelStore viewModelStore = this.viewModelStores.get(str);
        if (viewModelStore != null) {
            return viewModelStore;
        }
        ViewModelStore viewModelStore2 = new ViewModelStore();
        this.viewModelStores.put(str, viewModelStore2);
        return viewModelStore2;
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        Iterator<ViewModelStore> it = this.viewModelStores.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.viewModelStores.clear();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavControllerViewModel{");
        int iIdentityHashCode = Utils_jvmCommonKt.identityHashCode(this);
        ga1.b(16);
        sb.append(vp2.e(16, ((long) iIdentityHashCode) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        sb.append("} ViewModelStores (");
        Iterator<String> it = this.viewModelStores.keySet().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final NavControllerViewModel getInstance(ViewModelStore viewModelStore) {
            viewModelStore.getClass();
            return (NavControllerViewModel) ViewModelProvider.Companion.create$default(ViewModelProvider.Companion, viewModelStore, NavControllerViewModelKt.FACTORY, (CreationExtras) null, 4, (Object) null).get(x07.a(NavControllerViewModel.class));
        }

        private Companion() {
        }
    }
}
