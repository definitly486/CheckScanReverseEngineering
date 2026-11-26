package com.google.firebase.inappmessaging.internal;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import defpackage.he7;

/* JADX INFO: loaded from: classes4.dex */
public final class Schedulers_Factory implements Factory<Schedulers> {
    private final Provider<he7> computeSchedulerProvider;
    private final Provider<he7> ioSchedulerProvider;
    private final Provider<he7> mainThreadSchedulerProvider;

    private Schedulers_Factory(Provider<he7> provider, Provider<he7> provider2, Provider<he7> provider3) {
        this.ioSchedulerProvider = provider;
        this.computeSchedulerProvider = provider2;
        this.mainThreadSchedulerProvider = provider3;
    }

    public static Schedulers_Factory create(Provider<he7> provider, Provider<he7> provider2, Provider<he7> provider3) {
        return new Schedulers_Factory(provider, provider2, provider3);
    }

    public static Schedulers newInstance(he7 he7Var, he7 he7Var2, he7 he7Var3) {
        return new Schedulers(he7Var, he7Var2, he7Var3);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public Schedulers get() {
        return newInstance((he7) this.ioSchedulerProvider.get(), (he7) this.computeSchedulerProvider.get(), (he7) this.mainThreadSchedulerProvider.get());
    }
}
