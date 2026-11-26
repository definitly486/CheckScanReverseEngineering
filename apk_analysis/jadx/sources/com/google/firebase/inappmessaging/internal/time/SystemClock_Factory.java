package com.google.firebase.inappmessaging.internal.time;

import com.google.firebase.inappmessaging.dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class SystemClock_Factory implements Factory<SystemClock> {

    public static final class InstanceHolder {
        static final SystemClock_Factory INSTANCE = new SystemClock_Factory();

        private InstanceHolder() {
        }
    }

    public static SystemClock_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static SystemClock newInstance() {
        return new SystemClock();
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public SystemClock get() {
        return newInstance();
    }
}
