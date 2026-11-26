package androidx.compose.runtime.reflect;

import androidx.compose.runtime.Composer;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.aa4;
import defpackage.kn1;
import defpackage.kx6;
import defpackage.l68;
import defpackage.u74;
import defpackage.x74;
import defpackage.y74;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableMethodKt {
    private static final int BITS_PER_INT = 31;

    public static final ComposableMethod asComposableMethod(Method method) {
        ComposableInfo composableInfo = getComposableInfo(method);
        if (composableInfo.isComposable()) {
            return new ComposableMethod(method, composableInfo);
        }
        return null;
    }

    private static final int changedParamCount(int i, int i2) {
        if (i == 0) {
            return 1;
        }
        return (int) Math.ceil(((double) (i + i2)) / 10.0d);
    }

    private static final int defaultParamCount(int i) {
        return (int) Math.ceil(((double) i) / 31.0d);
    }

    private static final <T> T[] dup(T t, int i) {
        y74 y74VarN = kx6.n(0, i);
        ArrayList arrayList = new ArrayList(kn1.q(y74VarN, 10));
        Iterator<Integer> it = y74VarN.iterator();
        while (it.hasNext()) {
            ((u74) it).nextInt();
            arrayList.add(t);
        }
        aa4.i();
        throw null;
    }

    private static final ComposableInfo getComposableInfo(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        int length = parameterTypes.length - 1;
        if (length < 0) {
            length = -1;
            break;
        }
        while (true) {
            int i = length - 1;
            if (aa4.e(parameterTypes[length], Composer.class)) {
                break;
            }
            if (i < 0) {
                length = -1;
                break;
            }
            length = i;
        }
        if (length == -1) {
            return new ComposableInfo(false, method.getParameterTypes().length, 0, 0);
        }
        int iChangedParamCount = changedParamCount(length, !Modifier.isStatic(method.getModifiers()) ? 1 : 0);
        int i2 = length + 1 + iChangedParamCount;
        int length2 = method.getParameterTypes().length;
        int iDefaultParamCount = length2 != i2 ? defaultParamCount(length) : 0;
        return new ComposableInfo(i2 + iDefaultParamCount == length2, length, iChangedParamCount, iDefaultParamCount);
    }

    public static final ComposableMethod getDeclaredComposableMethod(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException {
        Method declaredMethod;
        Class cls2 = Integer.TYPE;
        int iChangedParamCount = changedParamCount(clsArr.length, 0);
        try {
            l68 l68Var = new l68(3);
            ArrayList<Object> arrayList = l68Var.a;
            l68Var.b(clsArr);
            l68Var.a(Composer.class);
            y74 y74VarN = kx6.n(0, iChangedParamCount);
            ArrayList arrayList2 = new ArrayList(kn1.q(y74VarN, 10));
            x74 it = y74VarN.iterator();
            while (it.d) {
                it.nextInt();
                arrayList2.add(cls2);
            }
            l68Var.b(arrayList2.toArray(new Class[0]));
            declaredMethod = cls.getDeclaredMethod(str, (Class[]) arrayList.toArray(new Class[arrayList.size()]));
        } catch (ReflectiveOperationException unused) {
            int iDefaultParamCount = defaultParamCount(clsArr.length);
            try {
                l68 l68Var2 = new l68(4);
                ArrayList<Object> arrayList3 = l68Var2.a;
                l68Var2.b(clsArr);
                l68Var2.a(Composer.class);
                y74 y74VarN2 = kx6.n(0, iChangedParamCount);
                ArrayList arrayList4 = new ArrayList(kn1.q(y74VarN2, 10));
                x74 it2 = y74VarN2.iterator();
                while (it2.d) {
                    it2.nextInt();
                    arrayList4.add(cls2);
                }
                l68Var2.b(arrayList4.toArray(new Class[0]));
                y74 y74VarN3 = kx6.n(0, iDefaultParamCount);
                ArrayList arrayList5 = new ArrayList(kn1.q(y74VarN3, 10));
                x74 it3 = y74VarN3.iterator();
                while (it3.d) {
                    it3.nextInt();
                    arrayList5.add(cls2);
                }
                l68Var2.b(arrayList5.toArray(new Class[0]));
                declaredMethod = cls.getDeclaredMethod(str, (Class[]) arrayList3.toArray(new Class[arrayList3.size()]));
            } catch (ReflectiveOperationException unused2) {
                declaredMethod = null;
            }
        }
        if (declaredMethod != null) {
            ComposableMethod composableMethodAsComposableMethod = asComposableMethod(declaredMethod);
            composableMethodAsComposableMethod.getClass();
            return composableMethodAsComposableMethod;
        }
        throw new NoSuchMethodException(cls.getName() + '.' + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object getDefaultValue(Class<?> cls) {
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    return Double.valueOf(0.0d);
                }
                return null;
            case 104431:
                return !name.equals("int") ? null : 0;
            case 3039496:
                return !name.equals("byte") ? null : (byte) 0;
            case 3052374:
                return !name.equals("char") ? null : (char) 0;
            case 3327612:
                return !name.equals("long") ? null : 0L;
            case 64711720:
                if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
                    return Boolean.FALSE;
                }
                return null;
            case 97526364:
                if (name.equals(TypedValues.Custom.S_FLOAT)) {
                    return Float.valueOf(0.0f);
                }
                return null;
            case 109413500:
                return !name.equals("short") ? null : (short) 0;
            default:
                return null;
        }
    }
}
