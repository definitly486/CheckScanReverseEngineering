package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.serialization.RouteDeserializerKt;
import androidx.savedstate.SavedStateWriter;
import defpackage.aa4;
import defpackage.b36;
import defpackage.iq7;
import defpackage.m05;
import defpackage.ne4;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class NavBackStackEntryKt {
    public static final <T> T toRoute(NavBackStackEntry navBackStackEntry, ne4<?> ne4Var) {
        navBackStackEntry.getClass();
        ne4Var.getClass();
        Bundle arguments = navBackStackEntry.getArguments();
        if (arguments == null) {
            b36[] b36VarArr = new b36[0];
            arguments = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
            SavedStateWriter.m9456constructorimpl(arguments);
        }
        Map<String, NavArgument> arguments2 = navBackStackEntry.getDestination().getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(arguments2.size()));
        Iterator<T> it = arguments2.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).getType());
        }
        return (T) RouteDeserializerKt.decodeArguments(iq7.b(ne4Var), arguments, linkedHashMap);
    }

    public static final <T> T toRoute(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        aa4.i();
        throw null;
    }
}
