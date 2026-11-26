package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.impl.O0;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public final class O0 {
    public final IHandlerExecutor a = C1169p4.l().g().a();
    public final C0 b;
    public final C0895ef c;
    public final C0973hf d;

    public O0() {
        C0 c0 = new C0();
        this.b = c0;
        this.c = new C0895ef(c0);
        this.d = new C0973hf();
    }

    public final void a(final PluginErrorDetails pluginErrorDetails, final String str) {
        C0895ef c0895ef = this.c;
        c0895ef.a.validate(null);
        c0895ef.b.validate(pluginErrorDetails);
        if (c0895ef.d.validate((Collection) (pluginErrorDetails != null ? pluginErrorDetails.getStacktrace() : null)).isValid()) {
            C0973hf c0973hf = this.d;
            pluginErrorDetails.getClass();
            c0973hf.getClass();
            this.a.execute(new Runnable() { // from class: iq5
                @Override // java.lang.Runnable
                public final void run() {
                    O0.a(this.b, pluginErrorDetails, str);
                }
            });
        }
    }

    public final void a(PluginErrorDetails pluginErrorDetails) {
        C0895ef c0895ef = this.c;
        c0895ef.a.validate(null);
        c0895ef.b.validate(pluginErrorDetails);
        C0973hf c0973hf = this.d;
        pluginErrorDetails.getClass();
        c0973hf.getClass();
        this.a.execute(new defpackage.a2(2, this, pluginErrorDetails));
    }

    public final void a(final String str, final String str2, final PluginErrorDetails pluginErrorDetails) {
        C0895ef c0895ef = this.c;
        c0895ef.a.validate(null);
        c0895ef.c.validate(str);
        C0973hf c0973hf = this.d;
        str.getClass();
        c0973hf.getClass();
        this.a.execute(new Runnable() { // from class: jq5
            @Override // java.lang.Runnable
            public final void run() {
                O0.a(this.b, str, str2, pluginErrorDetails);
            }
        });
    }

    public static final void a(O0 o0, PluginErrorDetails pluginErrorDetails, String str) {
        o0.b.getClass();
        B0 b0 = B0.e;
        b0.getClass();
        C1406yc c1406ycI = b0.f().i();
        c1406ycI.getClass();
        c1406ycI.a.getPluginExtension().reportError(pluginErrorDetails, str);
    }

    public static final void a(O0 o0, String str, String str2, PluginErrorDetails pluginErrorDetails) {
        o0.b.getClass();
        B0 b0 = B0.e;
        b0.getClass();
        C1406yc c1406ycI = b0.f().i();
        c1406ycI.getClass();
        c1406ycI.a.getPluginExtension().reportError(str, str2, pluginErrorDetails);
    }

    public static final void a(O0 o0, PluginErrorDetails pluginErrorDetails) {
        o0.b.getClass();
        B0 b0 = B0.e;
        b0.getClass();
        C1406yc c1406ycI = b0.f().i();
        c1406ycI.getClass();
        c1406ycI.a.getPluginExtension().reportUnhandledException(pluginErrorDetails);
    }
}
