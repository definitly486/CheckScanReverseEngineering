package androidx.navigation.serialization;

import androidx.navigation.NamedNavArgument;
import androidx.navigation.NamedNavArgumentKt;
import androidx.navigation.NavArgumentBuilder;
import androidx.navigation.NavType;
import androidx.navigation.serialization.RouteSerializerKt;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.da6;
import defpackage.df4;
import defpackage.dm3;
import defpackage.e84;
import defpackage.eb8;
import defpackage.ef4;
import defpackage.fg;
import defpackage.iq7;
import defpackage.j2;
import defpackage.j59;
import defpackage.kh;
import defpackage.ll3;
import defpackage.lt0;
import defpackage.ly1;
import defpackage.me0;
import defpackage.mp7;
import defpackage.mx2;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.vc6;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteSerializerKt {
    private static final <T> void assertNotAbstractClass(df4<T> df4Var, ll3<j59> ll3Var) {
        if (df4Var instanceof da6) {
            ll3Var.invoke();
        }
    }

    private static final NavType<Object> computeNavType(mp7 mp7Var, Map<ef4, ? extends NavType<?>> map) {
        Object next;
        Iterator<T> it = map.keySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!NavTypeConverterKt.matchKType(mp7Var, (ef4) next));
        ef4 ef4Var = (ef4) next;
        NavType<?> navType = ef4Var != null ? map.get(ef4Var) : null;
        if (navType == null) {
            navType = null;
        }
        if (navType == null) {
            navType = NavTypeConverterKt.getNavType(mp7Var);
        }
        if (aa4.e(navType, UNKNOWN.INSTANCE)) {
            return null;
        }
        navType.getClass();
        return navType;
    }

    private static final <T> void forEachIndexedKType(df4<T> df4Var, Map<ef4, ? extends NavType<?>> map, dm3<? super Integer, ? super String, ? super NavType<Object>, j59> dm3Var) {
        int iE = df4Var.getDescriptor().e();
        for (int i = 0; i < iE; i++) {
            String strF = df4Var.getDescriptor().f(i);
            NavType<Object> navTypeComputeNavType = computeNavType(df4Var.getDescriptor().d(i), map);
            if (navTypeComputeNavType == null) {
                fg.c(unknownNavTypeErrorMessage(strF, df4Var.getDescriptor().d(i).h(), df4Var.getDescriptor().h(), map.toString()));
                return;
            }
            dm3Var.invoke(Integer.valueOf(i), strF, navTypeComputeNavType);
        }
    }

    public static /* synthetic */ void forEachIndexedKType$default(df4 df4Var, Map map, dm3 dm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            map = mx2.b;
        }
        forEachIndexedKType(df4Var, map, dm3Var);
    }

    private static final <T> void forEachIndexedName(df4<T> df4Var, Map<String, ? extends NavType<Object>> map, dm3<? super Integer, ? super String, ? super NavType<Object>, j59> dm3Var) {
        int iE = df4Var.getDescriptor().e();
        for (int i = 0; i < iE; i++) {
            String strF = df4Var.getDescriptor().f(i);
            NavType<Object> navType = map.get(strF);
            if (navType == null) {
                j2.d(lt0.d(']', "Cannot locate NavType for argument [", strF));
                return;
            }
            dm3Var.invoke(Integer.valueOf(i), strF, navType);
        }
    }

    public static final <T> int generateHashCode(df4<T> df4Var) {
        df4Var.getClass();
        int iHashCode = df4Var.getDescriptor().h().hashCode();
        int iE = df4Var.getDescriptor().e();
        for (int i = 0; i < iE; i++) {
            iHashCode = (iHashCode * 31) + df4Var.getDescriptor().f(i).hashCode();
        }
        return iHashCode;
    }

    public static final <T> List<NamedNavArgument> generateNavArguments(final df4<T> df4Var, final Map<ef4, ? extends NavType<?>> map) {
        df4Var.getClass();
        map.getClass();
        assertNotAbstractClass(df4Var, new e84(df4Var, 4));
        int iE = df4Var.getDescriptor().e();
        ArrayList arrayList = new ArrayList(iE);
        for (final int i = 0; i < iE; i++) {
            final String strF = df4Var.getDescriptor().f(i);
            arrayList.add(NamedNavArgumentKt.navArgument(strF, new nl3() { // from class: n87
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return RouteSerializerKt.generateNavArguments$lambda$4$lambda$3(df4Var, i, map, strF, (NavArgumentBuilder) obj);
                }
            }));
        }
        return arrayList;
    }

    public static /* synthetic */ List generateNavArguments$default(df4 df4Var, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = mx2.b;
        }
        return generateNavArguments(df4Var, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 generateNavArguments$lambda$2(df4 df4Var) {
        throw new IllegalArgumentException("Cannot generate NavArguments for polymorphic serializer " + df4Var + ". Arguments can only be generated from concrete classes or objects.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 generateNavArguments$lambda$4$lambda$3(df4 df4Var, int i, Map map, String str, NavArgumentBuilder navArgumentBuilder) {
        navArgumentBuilder.getClass();
        mp7 mp7VarD = df4Var.getDescriptor().d(i);
        boolean zB = mp7VarD.b();
        NavType<?> navTypeComputeNavType = computeNavType(mp7VarD, map);
        if (navTypeComputeNavType == null) {
            fg.c(unknownNavTypeErrorMessage(str, mp7VarD.h(), df4Var.getDescriptor().h(), map.toString()));
            return null;
        }
        navArgumentBuilder.setType(navTypeComputeNavType);
        navArgumentBuilder.setNullable(zB);
        if (df4Var.getDescriptor().i(i)) {
            navArgumentBuilder.setUnknownDefaultValuePresent$navigation_common_release(true);
        }
        return j59.a;
    }

    public static final <T> String generateRoutePattern(df4<T> df4Var, Map<ef4, ? extends NavType<?>> map, String str) {
        df4Var.getClass();
        map.getClass();
        assertNotAbstractClass(df4Var, new vc6(df4Var, 1));
        final RouteBuilder routeBuilder = str != null ? new RouteBuilder(str, df4Var) : new RouteBuilder(df4Var);
        forEachIndexedKType(df4Var, map, new dm3() { // from class: l87
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return RouteSerializerKt.generateRoutePattern$lambda$1(routeBuilder, ((Integer) obj).intValue(), (String) obj2, (NavType) obj3);
            }
        });
        return routeBuilder.build();
    }

    public static /* synthetic */ String generateRoutePattern$default(df4 df4Var, Map map, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            map = mx2.b;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return generateRoutePattern(df4Var, map, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 generateRoutePattern$lambda$0(df4 df4Var) {
        StringBuilder sb = new StringBuilder("Cannot generate route pattern from polymorphic class ");
        ne4 ne4VarC = ly1.c(df4Var.getDescriptor());
        throw new IllegalArgumentException(me0.d(sb, ne4VarC != null ? ne4VarC.f() : null, ". Routes can only be generated from concrete classes or objects."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 generateRoutePattern$lambda$1(RouteBuilder routeBuilder, int i, String str, NavType navType) {
        str.getClass();
        navType.getClass();
        routeBuilder.appendPattern(i, str, navType);
        return j59.a;
    }

    public static final <T> String generateRouteWithArgs(T t, Map<String, ? extends NavType<Object>> map) {
        t.getClass();
        map.getClass();
        df4 df4VarB = iq7.b(x07.a(t.getClass()));
        final Map<String, List<String>> mapEncodeToArgMap = new RouteEncoder(df4VarB, map).encodeToArgMap(t);
        final RouteBuilder routeBuilder = new RouteBuilder(df4VarB);
        forEachIndexedName(df4VarB, map, new dm3() { // from class: m87
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return RouteSerializerKt.generateRouteWithArgs$lambda$5(mapEncodeToArgMap, routeBuilder, ((Integer) obj).intValue(), (String) obj2, (NavType) obj3);
            }
        });
        return routeBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 generateRouteWithArgs$lambda$5(Map map, RouteBuilder routeBuilder, int i, String str, NavType navType) {
        str.getClass();
        navType.getClass();
        Object obj = map.get(str);
        obj.getClass();
        routeBuilder.appendArg(i, str, navType, (List) obj);
        return j59.a;
    }

    public static final boolean isValueClass(mp7 mp7Var) {
        mp7Var.getClass();
        return aa4.e(mp7Var.getKind(), eb8.a.a) && mp7Var.isInline() && mp7Var.e() == 1;
    }

    private static final String unknownNavTypeErrorMessage(String str, String str2, String str3, String str4) {
        return kh.c(ad2.d("Route ", str3, " could not find any NavType for argument ", str, " of type "), str2, " - typeMap received was ", str4);
    }
}
