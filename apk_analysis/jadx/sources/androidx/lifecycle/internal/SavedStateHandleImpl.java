package androidx.lifecycle.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import defpackage.b36;
import defpackage.bf3;
import defpackage.jh2;
import defpackage.mr7;
import defpackage.mx2;
import defpackage.n05;
import defpackage.px;
import defpackage.vg5;
import defpackage.xg5;
import defpackage.y68;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateHandleImpl {
    private final Map<String, xg5<Object>> flows;
    private final Map<String, xg5<Object>> mutableFlows;
    private final Map<String, SavedStateRegistry.SavedStateProvider> providers;
    private final Map<String, Object> regular;
    private final SavedStateRegistry.SavedStateProvider savedStateProvider;

    public SavedStateHandleImpl(Map<String, ? extends Object> map) {
        map.getClass();
        this.regular = new LinkedHashMap(map);
        this.providers = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.mutableFlows = new LinkedHashMap();
        this.savedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: ec7
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                return SavedStateHandleImpl.savedStateProvider$lambda$0(this.b);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle savedStateProvider$lambda$0(SavedStateHandleImpl savedStateHandleImpl) {
        b36[] b36VarArr;
        for (Map.Entry entry : n05.l(savedStateHandleImpl.mutableFlows).entrySet()) {
            savedStateHandleImpl.set((String) entry.getKey(), ((xg5) entry.getValue()).getValue());
        }
        for (Map.Entry entry2 : n05.l(savedStateHandleImpl.providers).entrySet()) {
            savedStateHandleImpl.set((String) entry2.getKey(), ((SavedStateRegistry.SavedStateProvider) entry2.getValue()).saveState());
        }
        Map<String, Object> map = savedStateHandleImpl.regular;
        if (map.isEmpty()) {
            b36VarArr = new b36[0];
        } else {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, Object> entry3 : map.entrySet()) {
                arrayList.add(new b36(entry3.getKey(), entry3.getValue()));
            }
            b36VarArr = (b36[]) arrayList.toArray(new b36[0]);
        }
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        return bundleBundleOf;
    }

    public final void clearSavedStateProvider(String str) {
        str.getClass();
        this.providers.remove(str);
    }

    public final boolean contains(String str) {
        str.getClass();
        return this.regular.containsKey(str);
    }

    public final <T> T get(String str) {
        T t;
        str.getClass();
        try {
            xg5<Object> xg5Var = this.mutableFlows.get(str);
            if (xg5Var != null && (t = (T) xg5Var.getValue()) != null) {
                return t;
            }
            return (T) this.regular.get(str);
        } catch (ClassCastException unused) {
            remove(str);
            return null;
        }
    }

    public final Map<String, xg5<Object>> getMutableFlows() {
        return this.mutableFlows;
    }

    public final <T> xg5<T> getMutableStateFlow(String str, T t) {
        str.getClass();
        Map<String, xg5<Object>> map = this.mutableFlows;
        vg5 vg5VarA = map.get(str);
        if (vg5VarA == null) {
            if (!this.regular.containsKey(str)) {
                this.regular.put(str, t);
            }
            vg5VarA = px.a(this.regular.get(str));
            map.put(str, (xg5<Object>) vg5VarA);
        }
        return (xg5) vg5VarA;
    }

    public final Map<String, Object> getRegular() {
        return this.regular;
    }

    public final SavedStateRegistry.SavedStateProvider getSavedStateProvider() {
        return this.savedStateProvider;
    }

    public final <T> y68<T> getStateFlow(String str, T t) {
        str.getClass();
        Map<String, xg5<Object>> map = this.flows;
        xg5<Object> xg5VarA = map.get(str);
        if (xg5VarA == null) {
            if (!this.regular.containsKey(str)) {
                this.regular.put(str, t);
            }
            xg5VarA = px.a(this.regular.get(str));
            map.put(str, xg5VarA);
        }
        return bf3.b(xg5VarA);
    }

    public final Set<String> keys() {
        return mr7.l(this.regular.keySet(), this.providers.keySet());
    }

    public final <T> T remove(String str) {
        str.getClass();
        T t = (T) this.regular.remove(str);
        this.flows.remove(str);
        this.mutableFlows.remove(str);
        return t;
    }

    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.savedStateProvider;
    }

    public final <T> void set(String str, T t) {
        str.getClass();
        this.regular.put(str, t);
        xg5<Object> xg5Var = this.flows.get(str);
        if (xg5Var != null) {
            xg5Var.setValue(t);
        }
        xg5<Object> xg5Var2 = this.mutableFlows.get(str);
        if (xg5Var2 != null) {
            xg5Var2.setValue(t);
        }
    }

    public final void setSavedStateProvider(String str, SavedStateRegistry.SavedStateProvider savedStateProvider) {
        str.getClass();
        savedStateProvider.getClass();
        this.providers.put(str, savedStateProvider);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateHandleImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ SavedStateHandleImpl(Map map, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? mx2.b : map);
    }
}
