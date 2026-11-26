package defpackage;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

/* JADX INFO: loaded from: classes5.dex */
public class w07 {

    public static final class a extends w07 {
        @Override // defpackage.w07
        public final Object b(Method method, Class<?> cls, Object obj, Object[] objArr) {
            return wh2.a(method, cls, obj, objArr);
        }

        @Override // defpackage.w07
        public final boolean c(Method method) {
            return method.isDefault();
        }
    }

    public static class b extends w07 {
        @Override // defpackage.w07
        public final String a(int i, Method method) {
            Parameter parameter = method.getParameters()[i];
            if (!parameter.isNamePresent()) {
                return super.a(i, method);
            }
            return "parameter '" + parameter.getName() + '\'';
        }

        @Override // defpackage.w07
        public final Object b(Method method, Class<?> cls, Object obj, Object[] objArr) {
            return wh2.a(method, cls, obj, objArr);
        }

        @Override // defpackage.w07
        public final boolean c(Method method) {
            return method.isDefault();
        }
    }

    public String a(int i, Method method) {
        return "parameter #" + (i + 1);
    }

    public Object b(Method method, Class<?> cls, Object obj, Object[] objArr) {
        throw new AssertionError();
    }

    public boolean c(Method method) {
        return false;
    }
}
