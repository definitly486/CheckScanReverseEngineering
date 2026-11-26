package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavType;
import defpackage.df4;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteDeserializerKt {
    public static final <T> T decodeArguments(df4<T> df4Var, Bundle bundle, Map<String, ? extends NavType<?>> map) {
        df4Var.getClass();
        bundle.getClass();
        map.getClass();
        return (T) new RouteDecoder(bundle, map).decodeRouteWithArgs$navigation_common_release(df4Var);
    }

    public static final <T> T decodeArguments(df4<T> df4Var, SavedStateHandle savedStateHandle, Map<String, ? extends NavType<?>> map) {
        df4Var.getClass();
        savedStateHandle.getClass();
        map.getClass();
        return (T) new RouteDecoder(savedStateHandle, map).decodeRouteWithArgs$navigation_common_release(df4Var);
    }
}
