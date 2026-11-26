package androidx.room.util;

import defpackage.qz0;
import defpackage.xy;

/* JADX INFO: loaded from: classes3.dex */
public final class KClassUtil {
    public static final <T, C> T findAndInstantiateDatabaseImpl(Class<C> cls, String str) {
        String name;
        String str2;
        cls.getClass();
        str.getClass();
        Package r0 = cls.getPackage();
        if (r0 == null || (name = r0.getName()) == null) {
            name = "";
        }
        String canonicalName = cls.getCanonicalName();
        canonicalName.getClass();
        if (name.length() != 0) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String strReplace = canonicalName.replace('.', '_');
        strReplace.getClass();
        String strConcat = strReplace.concat(str);
        try {
            if (name.length() == 0) {
                str2 = strConcat;
            } else {
                str2 = name + '.' + strConcat;
            }
            Class<?> cls2 = Class.forName(str2, true, cls.getClassLoader());
            cls2.getClass();
            return (T) cls2.getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e) {
            qz0.h("Cannot find implementation for ", cls.getCanonicalName(), ". ", strConcat, " does not exist. Is Room annotation processor correctly configured?", e);
            return null;
        } catch (IllegalAccessException e2) {
            xy.f("Cannot access the constructor ", cls.getCanonicalName(), e2);
            return null;
        } catch (InstantiationException e3) {
            xy.f("Failed to create an instance of ", cls.getCanonicalName(), e3);
            return null;
        }
    }

    public static /* synthetic */ Object findAndInstantiateDatabaseImpl$default(Class cls, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "_Impl";
        }
        return findAndInstantiateDatabaseImpl(cls, str);
    }
}
