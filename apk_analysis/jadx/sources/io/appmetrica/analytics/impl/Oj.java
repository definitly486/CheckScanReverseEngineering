package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

/* JADX INFO: loaded from: classes5.dex */
public final class Oj implements InterfaceC0788ab {
    public final /* synthetic */ PluginErrorDetails a;

    public Oj(PluginErrorDetails pluginErrorDetails) {
        this.a = pluginErrorDetails;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.getPluginExtension().reportUnhandledException(this.a);
    }
}
