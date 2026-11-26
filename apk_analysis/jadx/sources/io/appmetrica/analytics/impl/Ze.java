package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

/* JADX INFO: loaded from: classes5.dex */
public final class Ze implements Runnable {
    public final /* synthetic */ PluginErrorDetails a;
    public final /* synthetic */ C0844cf b;

    public Ze(C0844cf c0844cf, PluginErrorDetails pluginErrorDetails) {
        this.b = c0844cf;
        this.a = pluginErrorDetails;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((InterfaceC0814bb) this.b.d.get()).getPluginExtension().reportUnhandledException(this.a);
    }
}
