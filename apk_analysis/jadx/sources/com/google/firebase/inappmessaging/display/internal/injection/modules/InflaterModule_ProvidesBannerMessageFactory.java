package com.google.firebase.inappmessaging.display.internal.injection.modules;

import com.google.firebase.inappmessaging.display.dagger.internal.Factory;
import com.google.firebase.inappmessaging.display.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.model.InAppMessage;

/* JADX INFO: loaded from: classes4.dex */
public final class InflaterModule_ProvidesBannerMessageFactory implements Factory<InAppMessage> {
    private final InflaterModule module;

    private InflaterModule_ProvidesBannerMessageFactory(InflaterModule inflaterModule) {
        this.module = inflaterModule;
    }

    public static InflaterModule_ProvidesBannerMessageFactory create(InflaterModule inflaterModule) {
        return new InflaterModule_ProvidesBannerMessageFactory(inflaterModule);
    }

    public static InAppMessage providesBannerMessage(InflaterModule inflaterModule) {
        return (InAppMessage) Preconditions.checkNotNullFromProvides(inflaterModule.providesBannerMessage());
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Factory, com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public InAppMessage get() {
        return providesBannerMessage(this.module);
    }
}
