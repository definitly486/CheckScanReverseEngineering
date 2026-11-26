package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes3.dex */
public final class kt0 {

    public static class a implements InvocationHandler {
        public final Object a;

        public a(Object obj) {
            this.a = obj;
        }

        public final boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            boolean z = obj instanceof a;
            Object obj2 = this.a;
            return z ? obj2.equals(((a) obj).a) : obj2.equals(obj);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2 = this.a;
            try {
                return Class.forName(method.getDeclaringClass().getName(), true, obj2.getClass().getClassLoader()).getDeclaredMethod(method.getName(), method.getParameterTypes()).invoke(obj2, objArr);
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            } catch (ReflectiveOperationException e2) {
                throw new RuntimeException("Reflection failed for method " + method, e2);
            }
        }
    }

    public static <T> T a(Class<T> cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(kt0.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
