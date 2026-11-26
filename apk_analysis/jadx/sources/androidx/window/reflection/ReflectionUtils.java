package androidx.window.reflection;

import android.util.Log;
import androidx.window.reflection.ReflectionUtils;
import defpackage.d31;
import defpackage.ll3;
import defpackage.ne4;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class ReflectionUtils {
    public static final ReflectionUtils INSTANCE = new ReflectionUtils();

    private ReflectionUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean validateImplementation$lambda$1$lambda$0(Class cls, Method method) throws NoSuchMethodException {
        String name = method.getName();
        Class<?>[] parameterTypes = method.getParameterTypes();
        Method method2 = cls.getMethod(name, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        ReflectionUtils reflectionUtils = INSTANCE;
        method2.getClass();
        if (!reflectionUtils.isPublic$window_release(method2)) {
            return false;
        }
        Class<?> returnType = method.getReturnType();
        returnType.getClass();
        return reflectionUtils.doesReturn$window_release(method2, returnType);
    }

    public static final boolean validateReflection$window_release(String str, ll3<Boolean> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        try {
            boolean zBooleanValue = ll3Var.invoke().booleanValue();
            if (!zBooleanValue) {
                Log.e("ReflectionGuard", str);
            }
            return zBooleanValue;
        } catch (ClassNotFoundException unused) {
            Log.e("ReflectionGuard", "ClassNotFound: ".concat(str));
            return false;
        } catch (NoSuchFieldException unused2) {
            Log.e("ReflectionGuard", "NoSuchField: ".concat(str));
            return false;
        } catch (NoSuchMethodException unused3) {
            Log.e("ReflectionGuard", "NoSuchMethod: ".concat(str));
            return false;
        }
    }

    public final boolean checkIsPresent$window_release(ll3<? extends Class<?>> ll3Var) {
        ll3Var.getClass();
        try {
            ll3Var.invoke();
            return true;
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
            return false;
        }
    }

    public final boolean doesReturn$window_release(Method method, ne4<?> ne4Var) {
        method.getClass();
        ne4Var.getClass();
        return doesReturn$window_release(method, d31.n(ne4Var));
    }

    public final boolean isPublic$window_release(Constructor<?> constructor) {
        constructor.getClass();
        return Modifier.isPublic(constructor.getModifiers());
    }

    public final boolean validateImplementation$window_release(final Class<?> cls, Class<?> cls2) {
        cls.getClass();
        cls2.getClass();
        Method[] methods = cls2.getMethods();
        methods.getClass();
        for (final Method method : methods) {
            if (!validateReflection$window_release(cls.getName() + '#' + method.getName() + " is not valid", new ll3() { // from class: d17
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Boolean.valueOf(ReflectionUtils.validateImplementation$lambda$1$lambda$0(cls, method));
                }
            })) {
                return false;
            }
        }
        return true;
    }

    public final boolean isPublic$window_release(Method method) {
        method.getClass();
        return Modifier.isPublic(method.getModifiers());
    }

    public final boolean isPublic$window_release(Field field) {
        field.getClass();
        return Modifier.isPublic(field.getModifiers());
    }

    public final boolean doesReturn$window_release(Method method, Class<?> cls) {
        method.getClass();
        cls.getClass();
        return method.getReturnType().equals(cls);
    }
}
