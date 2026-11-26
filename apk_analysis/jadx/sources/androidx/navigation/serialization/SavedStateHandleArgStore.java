package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavType;
import androidx.savedstate.SavedStateWriter;
import defpackage.b36;
import defpackage.n7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class SavedStateHandleArgStore extends ArgStore {
    private final SavedStateHandle handle;
    private final Map<String, NavType<?>> typeMap;

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateHandleArgStore(SavedStateHandle savedStateHandle, Map<String, ? extends NavType<?>> map) {
        savedStateHandle.getClass();
        map.getClass();
        this.handle = savedStateHandle;
        this.typeMap = map;
    }

    @Override // androidx.navigation.serialization.ArgStore
    public boolean contains(String str) {
        str.getClass();
        return this.handle.contains(str);
    }

    @Override // androidx.navigation.serialization.ArgStore
    public Object get(String str) {
        b36[] b36VarArr;
        str.getClass();
        Map mapSingletonMap = Collections.singletonMap(str, this.handle.get(str));
        mapSingletonMap.getClass();
        if (mapSingletonMap.isEmpty()) {
            b36VarArr = new b36[0];
        } else {
            ArrayList arrayList = new ArrayList(mapSingletonMap.size());
            for (Map.Entry entry : mapSingletonMap.entrySet()) {
                arrayList.add(new b36((String) entry.getKey(), entry.getValue()));
            }
            b36VarArr = (b36[]) arrayList.toArray(new b36[0]);
        }
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        NavType<?> navType = this.typeMap.get(str);
        if (navType != null) {
            return navType.get(bundleBundleOf, str);
        }
        StringBuilder sbD = n7.d("Failed to find type for ", str, " when decoding ");
        sbD.append(this.handle);
        throw new IllegalStateException(sbD.toString().toString());
    }
}
