package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.StartupParamsCallback;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.dm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0877dm implements O6 {
    public final /* synthetic */ StartupParamsCallback a;
    public final /* synthetic */ C0902em b;

    public C0877dm(C0902em c0902em, StartupParamsCallback startupParamsCallback) {
        this.b = c0902em;
        this.a = startupParamsCallback;
    }

    @Override // io.appmetrica.analytics.impl.O6
    public final void a(int i, Bundle bundle) {
        this.b.b(bundle, this.a);
    }
}
