package androidx.navigation.serialization;

import androidx.navigation.NavType;
import defpackage.fg;
import defpackage.mp7;
import defpackage.ra8;
import defpackage.sp7;
import defpackage.ta8;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class NavTypeConverter_androidKt {
    private static final Class<?> getClass(mp7 mp7Var) {
        String strY = ra8.y(mp7Var.h(), "?", "");
        try {
            return Class.forName(strY);
        } catch (ClassNotFoundException unused) {
            if (ta8.D(strY, ".", false)) {
                Pattern patternCompile = Pattern.compile("(\\.+)(?!.*\\.)");
                patternCompile.getClass();
                String strReplaceAll = patternCompile.matcher(strY).replaceAll("\\$");
                strReplaceAll.getClass();
                return Class.forName(strReplaceAll);
            }
            String strConcat = "Cannot find class with name \"" + mp7Var.h() + "\". Ensure that the serialName for this argument is the default fully qualified name";
            if (mp7Var.getKind() instanceof sp7.b) {
                strConcat = strConcat.concat(".\nIf the build is minified, try annotating the Enum class with \"androidx.annotation.Keep\" to ensure the Enum is not removed.");
            }
            fg.c(strConcat);
            return null;
        }
    }

    public static final NavType<?> parseEnum(mp7 mp7Var) {
        mp7Var.getClass();
        NavType<?> serializableOrParcelableType$navigation_common_release = NavType.Companion.parseSerializableOrParcelableType$navigation_common_release(getClass(mp7Var), false);
        return serializableOrParcelableType$navigation_common_release == null ? UNKNOWN.INSTANCE : serializableOrParcelableType$navigation_common_release;
    }

    public static final NavType<?> parseEnumList(mp7 mp7Var) {
        mp7Var.getClass();
        Class<?> cls = getClass(mp7Var.d(0));
        cls.getClass();
        return new InternalAndroidNavType.EnumListType(cls);
    }

    public static final NavType<?> parseNullableEnum(mp7 mp7Var) {
        mp7Var.getClass();
        Class<?> cls = getClass(mp7Var);
        if (!Enum.class.isAssignableFrom(cls)) {
            return UNKNOWN.INSTANCE;
        }
        cls.getClass();
        return new InternalAndroidNavType.EnumNullableType(cls);
    }
}
