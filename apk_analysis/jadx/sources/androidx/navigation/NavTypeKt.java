package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import defpackage.aa4;
import defpackage.fg;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class NavTypeKt {
    public static final NavType<?> navTypeFromArgType(String str) {
        NavType<Integer> navType = NavType.IntType;
        if (aa4.e(navType.getName(), str)) {
            return navType;
        }
        NavType navType2 = NavType.IntArrayType;
        if (aa4.e(navType2.getName(), str)) {
            return navType2;
        }
        NavType<List<Integer>> navType3 = NavType.IntListType;
        if (aa4.e(navType3.getName(), str)) {
            return navType3;
        }
        NavType<Long> navType4 = NavType.LongType;
        if (aa4.e(navType4.getName(), str)) {
            return navType4;
        }
        NavType navType5 = NavType.LongArrayType;
        if (aa4.e(navType5.getName(), str)) {
            return navType5;
        }
        NavType<List<Long>> navType6 = NavType.LongListType;
        if (aa4.e(navType6.getName(), str)) {
            return navType6;
        }
        NavType<Boolean> navType7 = NavType.BoolType;
        if (aa4.e(navType7.getName(), str)) {
            return navType7;
        }
        NavType navType8 = NavType.BoolArrayType;
        if (aa4.e(navType8.getName(), str)) {
            return navType8;
        }
        NavType<List<Boolean>> navType9 = NavType.BoolListType;
        if (aa4.e(navType9.getName(), str)) {
            return navType9;
        }
        NavType<String> navType10 = NavType.StringType;
        if (aa4.e(navType10.getName(), str)) {
            return navType10;
        }
        NavType navType11 = NavType.StringArrayType;
        if (aa4.e(navType11.getName(), str)) {
            return navType11;
        }
        NavType<List<String>> navType12 = NavType.StringListType;
        if (aa4.e(navType12.getName(), str)) {
            return navType12;
        }
        NavType<Float> navType13 = NavType.FloatType;
        if (aa4.e(navType13.getName(), str)) {
            return navType13;
        }
        NavType navType14 = NavType.FloatArrayType;
        if (aa4.e(navType14.getName(), str)) {
            return navType14;
        }
        NavType<List<Float>> navType15 = NavType.FloatListType;
        if (aa4.e(navType15.getName(), str)) {
            return navType15;
        }
        return null;
    }

    public static final NavType<Object> navTypeInferFromValue(String str) {
        str.getClass();
        try {
            try {
                try {
                    try {
                        NavType<Integer> navType = NavType.IntType;
                        navType.parseValue(str);
                        navType.getClass();
                        return navType;
                    } catch (IllegalArgumentException unused) {
                        NavType<Float> navType2 = NavType.FloatType;
                        navType2.parseValue(str);
                        navType2.getClass();
                        return navType2;
                    }
                } catch (IllegalArgumentException unused2) {
                    NavType<Boolean> navType3 = NavType.BoolType;
                    navType3.parseValue(str);
                    navType3.getClass();
                    return navType3;
                }
            } catch (IllegalArgumentException unused3) {
                NavType<Long> navType4 = NavType.LongType;
                navType4.parseValue(str);
                navType4.getClass();
                return navType4;
            }
        } catch (IllegalArgumentException unused4) {
            NavType<String> navType5 = NavType.StringType;
            navType5.getClass();
            return navType5;
        }
    }

    public static final NavType<Object> navTypeInferFromValueType(Object obj) {
        if (obj instanceof Integer) {
            NavType<Integer> navType = NavType.IntType;
            navType.getClass();
            return navType;
        }
        if (obj instanceof int[]) {
            NavType<int[]> navType2 = NavType.IntArrayType;
            navType2.getClass();
            return navType2;
        }
        if (obj instanceof Long) {
            NavType<Long> navType3 = NavType.LongType;
            navType3.getClass();
            return navType3;
        }
        if (obj instanceof long[]) {
            NavType<long[]> navType4 = NavType.LongArrayType;
            navType4.getClass();
            return navType4;
        }
        if (obj instanceof Float) {
            NavType<Float> navType5 = NavType.FloatType;
            navType5.getClass();
            return navType5;
        }
        if (obj instanceof float[]) {
            NavType<float[]> navType6 = NavType.FloatArrayType;
            navType6.getClass();
            return navType6;
        }
        if (obj instanceof Boolean) {
            NavType<Boolean> navType7 = NavType.BoolType;
            navType7.getClass();
            return navType7;
        }
        if (obj instanceof boolean[]) {
            NavType<boolean[]> navType8 = NavType.BoolArrayType;
            navType8.getClass();
            return navType8;
        }
        if (!(obj instanceof String) && obj != null) {
            return null;
        }
        NavType<String> navType9 = NavType.StringType;
        navType9.getClass();
        return navType9;
    }

    public static final <T> T navTypeParseAndPut(NavType<T> navType, Bundle bundle, String str, String str2, T t) {
        navType.getClass();
        bundle.getClass();
        str.getClass();
        if (!SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(bundle), str)) {
            fg.c("There is no previous value in this savedState.");
            return null;
        }
        if (str2 == null) {
            return t;
        }
        T value = navType.parseValue(str2, t);
        navType.put(bundle, str, value);
        return value;
    }

    public static final <T> T parseAndPutFromUri(NavType<T> navType, Bundle bundle, String str, String str2) {
        navType.getClass();
        bundle.getClass();
        str.getClass();
        str2.getClass();
        return navType.parseAndPut(bundle, str, NavUriUtils.INSTANCE.decode(str2));
    }

    public static final <T> T parseAndPutFromUri(NavType<T> navType, Bundle bundle, String str, String str2, T t) {
        navType.getClass();
        bundle.getClass();
        str.getClass();
        str2.getClass();
        return navType.parseAndPut(bundle, str, NavUriUtils.INSTANCE.decode(str2), t);
    }

    public static final <T> T navTypeParseAndPut(NavType<T> navType, Bundle bundle, String str, String str2) {
        navType.getClass();
        bundle.getClass();
        str.getClass();
        str2.getClass();
        T value = navType.parseValue(str2);
        navType.put(bundle, str, value);
        return value;
    }
}
