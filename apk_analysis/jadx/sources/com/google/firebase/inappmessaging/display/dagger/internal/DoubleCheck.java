package com.google.firebase.inappmessaging.display.dagger.internal;

import com.google.firebase.inappmessaging.display.dagger.Lazy;
import defpackage.lt0;
import defpackage.ws6;

/* JADX INFO: loaded from: classes4.dex */
public final class DoubleCheck<T> implements Provider<T>, Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    private DoubleCheck(Provider<T> provider) {
        this.provider = provider;
    }

    private synchronized Object getSynchronized() {
        Object obj;
        obj = this.instance;
        if (obj == UNINITIALIZED) {
            obj = this.provider.get();
            this.instance = reentrantCheck(this.instance, obj);
            this.provider = null;
        }
        return obj;
    }

    public static <T> Lazy<T> lazy(Provider<T> provider) {
        return provider instanceof Lazy ? (Lazy) provider : new DoubleCheck((Provider) Preconditions.checkNotNull(provider));
    }

    public static <T> Provider<T> provider(Provider<T> provider) {
        Preconditions.checkNotNull(provider);
        return provider instanceof DoubleCheck ? provider : new DoubleCheck(provider);
    }

    private static Object reentrantCheck(Object obj, Object obj2) {
        if (obj == UNINITIALIZED || obj == obj2) {
            return obj2;
        }
        lt0.g("Scoped provider was invoked recursively returning different results: ", obj, " & ", obj2, ". This is likely due to a circular dependency.");
        return null;
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public T get() {
        T t = (T) this.instance;
        return t == UNINITIALIZED ? (T) getSynchronized() : t;
    }

    @Deprecated
    public static <P extends ws6<T>, T> ws6<T> provider(P p) {
        return provider(Providers.asDaggerProvider(p));
    }

    public static <P extends ws6<T>, T> Lazy<T> lazy(P p) {
        return lazy(Providers.asDaggerProvider(p));
    }
}
