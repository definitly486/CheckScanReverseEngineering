package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.af, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0792af implements Runnable {
    public final /* synthetic */ PluginErrorDetails a;
    public final /* synthetic */ String b;
    public final /* synthetic */ C0844cf c;

    public RunnableC0792af(C0844cf c0844cf, PluginErrorDetails pluginErrorDetails, String str) {
        this.c = c0844cf;
        this.a = pluginErrorDetails;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((InterfaceC0814bb) this.c.d.get()).getPluginExtension().reportError(this.a, this.b);
    }
}
