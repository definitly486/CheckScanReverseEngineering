package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.NavType;
import androidx.savedstate.SavedStateReader;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class SavedStateArgStore extends ArgStore {
    private final Bundle savedState;
    private final Map<String, NavType<?>> typeMap;

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateArgStore(Bundle bundle, Map<String, ? extends NavType<?>> map) {
        bundle.getClass();
        map.getClass();
        this.savedState = bundle;
        this.typeMap = map;
    }

    @Override // androidx.navigation.serialization.ArgStore
    public boolean contains(String str) {
        str.getClass();
        return SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(this.savedState), str);
    }

    @Override // androidx.navigation.serialization.ArgStore
    public Object get(String str) {
        str.getClass();
        NavType<?> navType = this.typeMap.get(str);
        if (navType != null) {
            return navType.get(this.savedState, str);
        }
        return null;
    }
}
