package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Provider;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Collection;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.cf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0844cf implements IPluginReporter {
    public final C0921ff a = new C0921ff();
    public final C0947gf b = new C0947gf();
    public final IHandlerExecutor c = C1169p4.l().g().a();
    public final Provider d;

    public C0844cf(Provider<InterfaceC0814bb> provider) {
        this.d = provider;
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        C0921ff c0921ff = this.a;
        c0921ff.a.validate(pluginErrorDetails);
        if (c0921ff.c.validate((Collection) (pluginErrorDetails != null ? pluginErrorDetails.getStacktrace() : null)).isValid()) {
            this.b.getClass();
            this.c.execute(new RunnableC0792af(this, pluginErrorDetails, str));
        }
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.a.a.validate(pluginErrorDetails);
        this.b.getClass();
        this.c.execute(new Ze(this, pluginErrorDetails));
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.a.b.validate(str);
        this.b.getClass();
        this.c.execute(new RunnableC0818bf(this, str, str2, pluginErrorDetails));
    }
}
