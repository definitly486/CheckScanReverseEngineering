package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e96 {

    public static final class a {
        public static final Method a;
        public static final Method b;

        static {
            Method method;
            Method method2;
            Method[] methods = Throwable.class.getMethods();
            methods.getClass();
            int length = methods.length;
            int i = 0;
            while (true) {
                method = null;
                if (i >= length) {
                    method2 = null;
                    break;
                }
                method2 = methods[i];
                if (aa4.e(method2.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    parameterTypes.getClass();
                    if (aa4.e(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                        break;
                    }
                }
                i++;
            }
            a = method2;
            for (Method method3 : methods) {
                if (aa4.e(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
            }
            b = method;
        }
    }

    public void a(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        th.getClass();
        th2.getClass();
        Method method = a.a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public List<Throwable> b(Throwable th) {
        Object objInvoke;
        Method method = a.b;
        if (method == null || (objInvoke = method.invoke(th, null)) == null) {
            return kx2.b;
        }
        List<Throwable> listAsList = Arrays.asList((Throwable[]) objInvoke);
        listAsList.getClass();
        return listAsList;
    }
}
