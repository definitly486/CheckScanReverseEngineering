package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class g96 {
    /* JADX WARN: Code duplicated, block: B:41:0x00bc  */
    public static final <T> df4<T> a(ne4<T> ne4Var, df4<Object>... df4VarArr) throws IllegalAccessException, InvocationTargetException {
        Object obj;
        df4<T> df4Var;
        Field field;
        Object obj2;
        df4<T> df4VarB;
        Field field2;
        up7 up7Var;
        ne4Var.getClass();
        Class clsN = d31.n(ne4Var);
        df4[] df4VarArr2 = (df4[]) Arrays.copyOf(df4VarArr, df4VarArr.length);
        if (clsN.isEnum() && clsN.getAnnotation(up7.class) == null && clsN.getAnnotation(aa6.class) == null) {
            Object[] enumConstants = clsN.getEnumConstants();
            String canonicalName = clsN.getCanonicalName();
            canonicalName.getClass();
            enumConstants.getClass();
            return new l03(canonicalName, (Enum[]) enumConstants);
        }
        df4[] df4VarArr3 = (df4[]) Arrays.copyOf(df4VarArr2, df4VarArr2.length);
        da6 da6Var = null;
        try {
            Field declaredField = clsN.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Throwable unused) {
            obj = null;
        }
        df4<T> df4VarB2 = obj == null ? null : b(obj, (df4[]) Arrays.copyOf(df4VarArr3, df4VarArr3.length));
        if (df4VarB2 != null) {
            return df4VarB2;
        }
        String canonicalName2 = clsN.getCanonicalName();
        if (canonicalName2 == null || ra8.C(canonicalName2, "java.", false) || ra8.C(canonicalName2, "kotlin.", false)) {
            df4Var = null;
        } else {
            Field[] declaredFields = clsN.getDeclaredFields();
            declaredFields.getClass();
            int length = declaredFields.length;
            Field field3 = null;
            int i = 0;
            boolean z = false;
            while (true) {
                if (i >= length) {
                    if (!z) {
                        break;
                    }
                    break;
                }
                Field field4 = declaredFields[i];
                if (aa4.e(field4.getName(), "INSTANCE") && aa4.e(field4.getType(), clsN) && Modifier.isStatic(field4.getModifiers())) {
                    if (!z) {
                        z = true;
                        field3 = field4;
                    }
                }
                i++;
                field3 = null;
                break;
            }
            if (field3 == null) {
                df4Var = null;
            } else {
                Object obj3 = field3.get(null);
                Method[] methods = clsN.getMethods();
                methods.getClass();
                int length2 = methods.length;
                Method method = null;
                int i2 = 0;
                boolean z2 = false;
                while (true) {
                    if (i2 >= length2) {
                        if (!z2) {
                            break;
                        }
                        break;
                    }
                    Method method2 = methods[i2];
                    if (aa4.e(method2.getName(), "serializer")) {
                        Class<?>[] parameterTypes = method2.getParameterTypes();
                        parameterTypes.getClass();
                        if (parameterTypes.length == 0 && aa4.e(method2.getReturnType(), df4.class)) {
                            if (!z2) {
                                z2 = true;
                                method = method2;
                            }
                        }
                    }
                    i2++;
                    method = null;
                    break;
                }
                if (method == null) {
                    df4Var = null;
                } else {
                    Object objInvoke = method.invoke(obj3, null);
                    if (objInvoke instanceof df4) {
                        df4Var = (df4) objInvoke;
                    } else {
                        df4Var = null;
                    }
                }
            }
        }
        if (df4Var != null) {
            return df4Var;
        }
        df4[] df4VarArr4 = (df4[]) Arrays.copyOf(df4VarArr2, df4VarArr2.length);
        Field[] declaredFields2 = clsN.getDeclaredFields();
        declaredFields2.getClass();
        int length3 = declaredFields2.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length3) {
                field = null;
                break;
            }
            field = declaredFields2[i3];
            if (Modifier.isStatic(field.getModifiers()) && field.getType().getAnnotation(vh5.class) != null) {
                break;
            }
            i3++;
        }
        if (field == null) {
            obj2 = null;
        } else {
            try {
                field.setAccessible(true);
                obj2 = field.get(null);
            } catch (Throwable unused2) {
                obj2 = null;
            }
        }
        if (obj2 == null || (df4VarB = b(obj2, (df4[]) Arrays.copyOf(df4VarArr4, df4VarArr4.length))) == null) {
            try {
                Class<?>[] declaredClasses = clsN.getDeclaredClasses();
                declaredClasses.getClass();
                int length4 = declaredClasses.length;
                Class<?> cls = null;
                int i4 = 0;
                boolean z3 = false;
                while (true) {
                    if (i4 < length4) {
                        Class<?> cls2 = declaredClasses[i4];
                        if (cls2.getSimpleName().equals("$serializer")) {
                            if (!z3) {
                                z3 = true;
                                cls = cls2;
                            }
                        }
                        i4++;
                    } else if (!z3) {
                    }
                    cls = null;
                    break;
                }
                Object obj4 = (cls == null || (field2 = cls.getField("INSTANCE")) == null) ? null : field2.get(null);
                df4VarB = obj4 instanceof df4 ? (df4) obj4 : null;
            } catch (NoSuchFieldException unused3) {
            }
        }
        df4<T> df4Var2 = df4VarB;
        if (df4Var2 != null) {
            return df4Var2;
        }
        if (clsN.getAnnotation(aa6.class) != null || ((up7Var = (up7) clsN.getAnnotation(up7.class)) != null && x07.a(up7Var.with()).equals(x07.a(da6.class)))) {
            da6Var = new da6(x07.a(clsN));
        }
        return da6Var;
    }

    public static final <T> df4<T> b(Object obj, df4<Object>... df4VarArr) throws IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        try {
            if (df4VarArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = df4VarArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i = 0; i < length; i++) {
                    clsArr2[i] = df4.class;
                }
                clsArr = clsArr2;
            }
            Object objInvoke = obj.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(obj, Arrays.copyOf(df4VarArr, df4VarArr.length));
            if (objInvoke instanceof df4) {
                return (df4) objInvoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                throw e;
            }
            String message = cause.getMessage();
            if (message == null) {
                message = e.getMessage();
            }
            throw new InvocationTargetException(cause, message);
        }
    }
}
