package io.appmetrica.analytics.impl;

import android.content.Context;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class Ql implements Y2 {
    public final Context a;

    public Ql(Context context) {
        this.a = context;
    }

    public final Context a() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.io.SslSocketFactoryProvider
    public final SSLSocketFactory getSslSocketFactory() {
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Y2, io.appmetrica.analytics.impl.Am
    public final void a(C1341vm c1341vm) {
    }
}
