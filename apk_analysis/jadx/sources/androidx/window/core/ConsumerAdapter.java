package androidx.window.core;

import android.app.Activity;
import android.content.Context;
import androidx.window.reflection.WindowExtensionsConstants;
import defpackage.aa4;
import defpackage.c84;
import defpackage.j59;
import defpackage.ne4;
import defpackage.nl3;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes3.dex */
public final class ConsumerAdapter {
    private final ClassLoader loader;

    public static final class ConsumerHandler<T> implements InvocationHandler {
        private final ne4<T> clazz;
        private final nl3<T, j59> consumer;

        /* JADX WARN: Multi-variable type inference failed */
        public ConsumerHandler(ne4<T> ne4Var, nl3<? super T, j59> nl3Var) {
            ne4Var.getClass();
            nl3Var.getClass();
            this.clazz = ne4Var;
            this.consumer = nl3Var;
        }

        private final boolean isAccept(Method method, Object[] objArr) {
            return aa4.e(method.getName(), "accept") && objArr != null && objArr.length == 1;
        }

        private final boolean isEquals(Method method, Object[] objArr) {
            return aa4.e(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        private final boolean isHashCode(Method method, Object[] objArr) {
            return aa4.e(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null;
        }

        private final boolean isToString(Method method, Object[] objArr) {
            return aa4.e(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            obj.getClass();
            method.getClass();
            if (isAccept(method, objArr)) {
                ne4<T> ne4Var = this.clazz;
                Object obj2 = objArr != null ? objArr[0] : null;
                c84.g(ne4Var, obj2);
                invokeAccept(obj2);
                return j59.a;
            }
            if (isEquals(method, objArr)) {
                return Boolean.valueOf(obj == (objArr != null ? objArr[0] : null));
            }
            if (isHashCode(method, objArr)) {
                return Integer.valueOf(this.consumer.hashCode());
            }
            if (isToString(method, objArr)) {
                return this.consumer.toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + objArr);
        }

        public final void invokeAccept(T t) {
            t.getClass();
            this.consumer.invoke(t);
        }
    }

    public interface Subscription {
        void dispose();
    }

    public ConsumerAdapter(ClassLoader classLoader) {
        classLoader.getClass();
        this.loader = classLoader;
    }

    private final <T> Object buildConsumer(ne4<T> ne4Var, nl3<? super T, j59> nl3Var) {
        Object objNewProxyInstance = Proxy.newProxyInstance(this.loader, new Class[]{unsafeConsumerClass()}, new ConsumerHandler(ne4Var, nl3Var));
        objNewProxyInstance.getClass();
        return objNewProxyInstance;
    }

    private final Class<?> unsafeConsumerClass() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass(WindowExtensionsConstants.JAVA_CONSUMER);
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    public final <T> void addConsumer(Object obj, ne4<T> ne4Var, String str, nl3<? super T, j59> nl3Var) {
        obj.getClass();
        ne4Var.getClass();
        str.getClass();
        nl3Var.getClass();
        obj.getClass().getMethod(str, unsafeConsumerClass()).invoke(obj, buildConsumer(ne4Var, nl3Var));
    }

    public final Class<?> consumerClassOrNull$window_release() {
        try {
            return unsafeConsumerClass();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final <T> void createConsumer(Object obj, ne4<T> ne4Var, String str, Activity activity, nl3<? super T, j59> nl3Var) throws IllegalAccessException, InvocationTargetException {
        obj.getClass();
        ne4Var.getClass();
        str.getClass();
        activity.getClass();
        nl3Var.getClass();
        obj.getClass().getMethod(str, Activity.class, unsafeConsumerClass()).invoke(obj, activity, buildConsumer(ne4Var, nl3Var));
    }

    public final <T> Subscription createSubscription(final Object obj, ne4<T> ne4Var, String str, String str2, Activity activity, nl3<? super T, j59> nl3Var) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        obj.getClass();
        ne4Var.getClass();
        str.getClass();
        str2.getClass();
        activity.getClass();
        nl3Var.getClass();
        final Object objBuildConsumer = buildConsumer(ne4Var, nl3Var);
        obj.getClass().getMethod(str, Activity.class, unsafeConsumerClass()).invoke(obj, activity, objBuildConsumer);
        final Method method = obj.getClass().getMethod(str2, unsafeConsumerClass());
        return new Subscription() { // from class: androidx.window.core.ConsumerAdapter.createSubscription.1
            @Override // androidx.window.core.ConsumerAdapter.Subscription
            public void dispose() throws IllegalAccessException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }

    public final <T> Subscription createSubscriptionNoActivity(final Object obj, ne4<T> ne4Var, String str, String str2, nl3<? super T, j59> nl3Var) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        obj.getClass();
        ne4Var.getClass();
        str.getClass();
        str2.getClass();
        nl3Var.getClass();
        final Object objBuildConsumer = buildConsumer(ne4Var, nl3Var);
        obj.getClass().getMethod(str, unsafeConsumerClass()).invoke(obj, objBuildConsumer);
        final Method method = obj.getClass().getMethod(str2, unsafeConsumerClass());
        return new Subscription() { // from class: androidx.window.core.ConsumerAdapter.createSubscriptionNoActivity.1
            @Override // androidx.window.core.ConsumerAdapter.Subscription
            public void dispose() throws IllegalAccessException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }

    public final <T> Subscription createSubscription(final Object obj, ne4<T> ne4Var, String str, String str2, Context context, nl3<? super T, j59> nl3Var) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        obj.getClass();
        ne4Var.getClass();
        str.getClass();
        str2.getClass();
        context.getClass();
        nl3Var.getClass();
        final Object objBuildConsumer = buildConsumer(ne4Var, nl3Var);
        obj.getClass().getMethod(str, Context.class, unsafeConsumerClass()).invoke(obj, context, objBuildConsumer);
        final Method method = obj.getClass().getMethod(str2, unsafeConsumerClass());
        return new Subscription() { // from class: androidx.window.core.ConsumerAdapter.createSubscription.2
            @Override // androidx.window.core.ConsumerAdapter.Subscription
            public void dispose() throws IllegalAccessException, InvocationTargetException {
                method.invoke(obj, objBuildConsumer);
            }
        };
    }
}
