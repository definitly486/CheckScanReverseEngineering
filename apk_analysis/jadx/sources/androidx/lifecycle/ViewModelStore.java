package androidx.lifecycle;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class ViewModelStore {
    private final Map<String, ViewModel> map = new LinkedHashMap();

    public final void clear() {
        Iterator<ViewModel> it = this.map.values().iterator();
        while (it.hasNext()) {
            it.next().clear$lifecycle_viewmodel();
        }
        this.map.clear();
    }

    public final ViewModel get(String str) {
        str.getClass();
        return this.map.get(str);
    }

    public final Set<String> keys() {
        return new HashSet(this.map.keySet());
    }

    public final void put(String str, ViewModel viewModel) {
        str.getClass();
        viewModel.getClass();
        ViewModel viewModelPut = this.map.put(str, viewModel);
        if (viewModelPut != null) {
            viewModelPut.clear$lifecycle_viewmodel();
        }
    }
}
