package yads;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f55 {
    public static Object a(String str, Object... objArr) throws ClassNotFoundException {
        Class<?> cls = Class.forName(str);
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        ArrayList arrayList = new ArrayList(objArrCopyOf.length);
        for (Object obj : objArrCopyOf) {
            arrayList.add(obj.getClass());
        }
        Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
        try {
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
            boolean zIsAccessible = declaredConstructor.isAccessible();
            if (!zIsAccessible) {
                declaredConstructor.setAccessible(true);
            }
            Object objNewInstance = declaredConstructor.newInstance(Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            if (!zIsAccessible) {
                declaredConstructor.setAccessible(false);
            }
            return objNewInstance;
        } catch (Throwable unused) {
            Arrays.toString(objArrCopyOf);
            return null;
        }
    }

    public static Object a(Object obj, Class cls, String str, Class[] clsArr, Object... objArr) {
        Object objInvoke = null;
        try {
            Method methodA = a(cls, str, clsArr);
            if (methodA == null) {
                return null;
            }
            methodA.setAccessible(true);
            objInvoke = methodA.invoke(obj, Arrays.copyOf(objArr, objArr.length));
            methodA.setAccessible(false);
            return objInvoke;
        } catch (Throwable unused) {
            return objInvoke;
        }
    }

    public static Object a(Object obj, String str, Object... objArr) {
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        ArrayList arrayList = new ArrayList();
        int length = objArrCopyOf.length;
        for (int i = 0; i < length; i++) {
            Object obj2 = objArrCopyOf[i];
            Class<?> cls = obj2 != null ? obj2.getClass() : null;
            if (cls != null) {
                arrayList.add(cls);
            }
        }
        return a(obj, obj.getClass(), str, (Class[]) arrayList.toArray(new Class[0]), Arrays.copyOf(objArr, objArr.length));
    }

    public static Method a(Class cls, String str, Class[] clsArr) {
        while (cls != null) {
            for (Method method : cls.getDeclaredMethods()) {
                Class<?>[] clsArr2 = (Class[]) Arrays.copyOf(clsArr, clsArr.length);
                if (defpackage.aa4.e(str, method.getName())) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == clsArr2.length) {
                        int length = parameterTypes.length;
                        for (int i = 0; i < length; i++) {
                            if (parameterTypes[i].isAssignableFrom(clsArr2[i])) {
                            }
                        }
                        return method;
                    }
                    continue;
                }
            }
            cls = cls.getSuperclass();
        }
        return null;
    }
}
