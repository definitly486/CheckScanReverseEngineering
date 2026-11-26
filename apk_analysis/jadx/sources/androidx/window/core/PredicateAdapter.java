package androidx.window.core;

import android.util.Pair;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.c84;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.x07;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes3.dex */
public final class PredicateAdapter {
    private final ClassLoader loader;

    public static abstract class BaseHandler<T> implements InvocationHandler {
        private final ne4<T> clazz;

        public BaseHandler(ne4<T> ne4Var) {
            ne4Var.getClass();
            this.clazz = ne4Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2;
            obj.getClass();
            method.getClass();
            if (isTest(method, objArr)) {
                ne4<T> ne4Var = this.clazz;
                obj2 = objArr != null ? objArr[0] : null;
                c84.g(ne4Var, obj2);
                return Boolean.valueOf(invokeTest(obj, obj2));
            }
            if (isEquals(method, objArr)) {
                obj2 = objArr != null ? objArr[0] : null;
                obj2.getClass();
                return Boolean.valueOf(obj == obj2);
            }
            if (isHashCode(method, objArr)) {
                return Integer.valueOf(hashCode());
            }
            if (isToString(method, objArr)) {
                return toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + objArr);
        }

        public abstract boolean invokeTest(Object obj, T t);

        public final boolean isEquals(Method method, Object[] objArr) {
            method.getClass();
            return aa4.e(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        public final boolean isHashCode(Method method, Object[] objArr) {
            method.getClass();
            return aa4.e(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null;
        }

        public final boolean isTest(Method method, Object[] objArr) {
            method.getClass();
            return aa4.e(method.getName(), "test") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        public final boolean isToString(Method method, Object[] objArr) {
            method.getClass();
            return aa4.e(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null;
        }
    }

    public static final class PairPredicateStubHandler<T, U> extends BaseHandler<Pair<?, ?>> {
        private final ne4<T> clazzT;
        private final ne4<U> clazzU;
        private final bm3<T, U, Boolean> predicate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public PairPredicateStubHandler(ne4<T> ne4Var, ne4<U> ne4Var2, bm3<? super T, ? super U, Boolean> bm3Var) {
            super(x07.a(Pair.class));
            ne4Var.getClass();
            ne4Var2.getClass();
            bm3Var.getClass();
            this.clazzT = ne4Var;
            this.clazzU = ne4Var2;
            this.predicate = bm3Var;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        @Override // androidx.window.core.PredicateAdapter.BaseHandler
        public boolean invokeTest(Object obj, Pair<?, ?> pair) {
            obj.getClass();
            pair.getClass();
            ne4<T> ne4Var = this.clazzT;
            Object obj2 = pair.first;
            c84.g(ne4Var, obj2);
            ne4<U> ne4Var2 = this.clazzU;
            Object obj3 = pair.second;
            c84.g(ne4Var2, obj3);
            return this.predicate.invoke((T) obj2, (U) obj3).booleanValue();
        }

        public String toString() {
            return this.predicate.toString();
        }
    }

    public static final class PredicateStubHandler<T> extends BaseHandler<T> {
        private final nl3<T, Boolean> predicate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public PredicateStubHandler(ne4<T> ne4Var, nl3<? super T, Boolean> nl3Var) {
            super(ne4Var);
            ne4Var.getClass();
            nl3Var.getClass();
            this.predicate = nl3Var;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        @Override // androidx.window.core.PredicateAdapter.BaseHandler
        public boolean invokeTest(Object obj, T t) {
            obj.getClass();
            t.getClass();
            return this.predicate.invoke(t).booleanValue();
        }

        public String toString() {
            return this.predicate.toString();
        }
    }

    public PredicateAdapter(ClassLoader classLoader) {
        classLoader.getClass();
        this.loader = classLoader;
    }

    private final Class<?> predicateClassOrThrow() throws ClassNotFoundException {
        Class<?> clsLoadClass = this.loader.loadClass("java.util.function.Predicate");
        clsLoadClass.getClass();
        return clsLoadClass;
    }

    public final <T, U> Object buildPairPredicate(ne4<T> ne4Var, ne4<U> ne4Var2, bm3<? super T, ? super U, Boolean> bm3Var) {
        ne4Var.getClass();
        ne4Var2.getClass();
        bm3Var.getClass();
        Object objNewProxyInstance = Proxy.newProxyInstance(this.loader, new Class[]{predicateClassOrThrow()}, new PairPredicateStubHandler(ne4Var, ne4Var2, bm3Var));
        objNewProxyInstance.getClass();
        return objNewProxyInstance;
    }

    public final <T> Object buildPredicate(ne4<T> ne4Var, nl3<? super T, Boolean> nl3Var) {
        ne4Var.getClass();
        nl3Var.getClass();
        Object objNewProxyInstance = Proxy.newProxyInstance(this.loader, new Class[]{predicateClassOrThrow()}, new PredicateStubHandler(ne4Var, nl3Var));
        objNewProxyInstance.getClass();
        return objNewProxyInstance;
    }

    public final Class<?> predicateClassOrNull$window_release() {
        try {
            return predicateClassOrThrow();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
