package com.google.firebase.inappmessaging.display.internal;

import com.google.firebase.inappmessaging.display.dagger.internal.Factory;
import com.google.firebase.inappmessaging.display.dagger.internal.Provider;
import defpackage.p37;

/* JADX INFO: loaded from: classes4.dex */
public final class FiamImageLoader_Factory implements Factory<FiamImageLoader> {
    private final Provider<p37> requestManagerProvider;

    private FiamImageLoader_Factory(Provider<p37> provider) {
        this.requestManagerProvider = provider;
    }

    public static FiamImageLoader_Factory create(Provider<p37> provider) {
        return new FiamImageLoader_Factory(provider);
    }

    public static FiamImageLoader newInstance(p37 p37Var) {
        return new FiamImageLoader(p37Var);
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Factory, com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public FiamImageLoader get() {
        return newInstance((p37) this.requestManagerProvider.get());
    }
}
