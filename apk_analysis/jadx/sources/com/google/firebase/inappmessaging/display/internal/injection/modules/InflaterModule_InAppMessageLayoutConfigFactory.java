package com.google.firebase.inappmessaging.display.internal.injection.modules;

import com.google.firebase.inappmessaging.display.dagger.internal.Factory;
import com.google.firebase.inappmessaging.display.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.display.internal.InAppMessageLayoutConfig;

/* JADX INFO: loaded from: classes4.dex */
public final class InflaterModule_InAppMessageLayoutConfigFactory implements Factory<InAppMessageLayoutConfig> {
    private final InflaterModule module;

    private InflaterModule_InAppMessageLayoutConfigFactory(InflaterModule inflaterModule) {
        this.module = inflaterModule;
    }

    public static InflaterModule_InAppMessageLayoutConfigFactory create(InflaterModule inflaterModule) {
        return new InflaterModule_InAppMessageLayoutConfigFactory(inflaterModule);
    }

    public static InAppMessageLayoutConfig inAppMessageLayoutConfig(InflaterModule inflaterModule) {
        return (InAppMessageLayoutConfig) Preconditions.checkNotNullFromProvides(inflaterModule.inAppMessageLayoutConfig());
    }

    @Override // com.google.firebase.inappmessaging.display.dagger.internal.Factory, com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
    public InAppMessageLayoutConfig get() {
        return inAppMessageLayoutConfig(this.module);
    }
}
