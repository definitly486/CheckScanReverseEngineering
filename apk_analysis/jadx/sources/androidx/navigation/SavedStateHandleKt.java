package androidx.navigation;

import androidx.lifecycle.SavedStateHandle;
import defpackage.ef4;
import defpackage.ne4;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateHandleKt {
    public static final <T> T toRoute(SavedStateHandle savedStateHandle, ne4<T> ne4Var, Map<ef4, NavType<?>> map) {
        return (T) SavedStateHandleKt__SavedStateHandleKt.toRoute(savedStateHandle, ne4Var, map);
    }

    public static final /* synthetic */ <T> T toRoute(SavedStateHandle savedStateHandle, Map<ef4, NavType<?>> map) {
        return (T) SavedStateHandleKt__SavedStateHandleKt.toRoute(savedStateHandle, map);
    }
}
