package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

/* JADX INFO: loaded from: classes5.dex */
public final class Pj implements InterfaceC0788ab {
    public final /* synthetic */ PluginErrorDetails a;
    public final /* synthetic */ String b;

    public Pj(PluginErrorDetails pluginErrorDetails, String str) {
        this.a = pluginErrorDetails;
        this.b = str;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.getPluginExtension().reportError(this.a, this.b);
    }
}
