package com.google.firebase.inappmessaging.display.internal.injection.modules;

import android.view.LayoutInflater;
import com.google.firebase.inappmessaging.display.dagger.internal.Factory;
import com.google.firebase.inappmessaging.display.dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class InflaterModule_ProvidesInflaterserviceFactory implements Factory<LayoutInflater> {
    private final InflaterModule module;

    private InflaterModule_ProvidesInflaterserviceFactory(InflaterModule inflaterModule) {
        this.module = inflaterModule;
    }

    public static InflaterModule_ProvidesInflaterserviceFactory create(InflaterModule inflaterModule) {
        return new InflaterModule_ProvidesInflaterserviceFactory(inflaterModule);
    }

    public static LayoutInflater providesInflaterservice(InflaterModule inflaterModule) {
        return (LayoutInflater) Preconditions.checkNotNullFromProvides(inflaterModule.providesInflaterservice());
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Factory, com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public LayoutInflater get() {
        return providesInflaterservice(this.module);
    }
}
