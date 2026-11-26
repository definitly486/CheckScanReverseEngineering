package com.google.firebase.inappmessaging.display.internal;

import com.google.firebase.inappmessaging.display.dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class RenewableTimer_Factory implements Factory<RenewableTimer> {

    public static final class InstanceHolder {
        static final RenewableTimer_Factory INSTANCE = new RenewableTimer_Factory();

        private InstanceHolder() {
        }
    }

    public static RenewableTimer_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static RenewableTimer newInstance() {
        return new RenewableTimer();
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Factory, com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public RenewableTimer get() {
        return newInstance();
    }
}
