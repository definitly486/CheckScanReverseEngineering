package defpackage;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class sz4 {
    public static zq3 a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
                if (objNewInstance instanceof zq3) {
                    return (zq3) objNewInstance;
                }
                kg.e(objNewInstance, "Expected instanceof GlideModule, but found: ");
                return null;
            } catch (IllegalAccessException e) {
                b(cls, e);
                throw null;
            } catch (InstantiationException e2) {
                b(cls, e2);
                throw null;
            } catch (NoSuchMethodException e3) {
                b(cls, e3);
                throw null;
            } catch (InvocationTargetException e4) {
                b(cls, e4);
                throw null;
            }
        } catch (ClassNotFoundException e5) {
            cc.e("Unable to find GlideModule implementation", e5);
            return null;
        }
    }

    public static void b(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(ln.d(cls, "Unable to instantiate GlideModule implementation for "), reflectiveOperationException);
    }
}
