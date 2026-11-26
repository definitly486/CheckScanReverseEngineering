package androidx.navigation;

import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.serialization.RouteDeserializerKt;
import androidx.navigation.serialization.RouteSerializerKt;
import defpackage.aa4;
import defpackage.df4;
import defpackage.ef4;
import defpackage.iq7;
import defpackage.mx2;
import defpackage.ne4;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class SavedStateHandleKt__SavedStateHandleKt {
    public static final <T> T toRoute(SavedStateHandle savedStateHandle, ne4<T> ne4Var, Map<ef4, NavType<?>> map) {
        savedStateHandle.getClass();
        ne4Var.getClass();
        map.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        df4 df4VarB = iq7.b(ne4Var);
        for (NamedNavArgument namedNavArgument : RouteSerializerKt.generateNavArguments(df4VarB, map)) {
            linkedHashMap.put(namedNavArgument.getName(), namedNavArgument.getArgument().getType());
        }
        return (T) RouteDeserializerKt.decodeArguments(df4VarB, savedStateHandle, linkedHashMap);
    }

    public static Object toRoute$default(SavedStateHandle savedStateHandle, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = mx2.b;
        }
        savedStateHandle.getClass();
        map.getClass();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ Object toRoute$default(SavedStateHandle savedStateHandle, ne4 ne4Var, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = mx2.b;
        }
        return SavedStateHandleKt.toRoute(savedStateHandle, ne4Var, map);
    }

    public static final <T> T toRoute(SavedStateHandle savedStateHandle, Map<ef4, NavType<?>> map) {
        savedStateHandle.getClass();
        map.getClass();
        aa4.i();
        throw null;
    }
}
