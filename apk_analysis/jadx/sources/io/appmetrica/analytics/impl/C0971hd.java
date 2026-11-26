package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.event.CounterReportApi;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.hd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0971hd implements ModuleEventServiceHandlerReporter {
    public final String a;
    public final boolean b;
    public final C1353w9 c;
    public final C0783a6 d;

    public C0971hd(String str, boolean z, C1353w9 c1353w9, C0783a6 c0783a6) {
        this.a = str;
        this.b = z;
        this.c = c1353w9;
        this.d = c0783a6;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter
    public final String getApiKey() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter
    public final boolean isMain() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter
    public final void report(CounterReportApi counterReportApi) {
        C0783a6 c0783a6D = C0783a6.d(this.d);
        c0783a6D.d = counterReportApi.getType();
        c0783a6D.e = counterReportApi.getCustomType();
        c0783a6D.setName(counterReportApi.getName());
        String value = counterReportApi.getValue();
        if (value != null) {
            c0783a6D.setValue(value);
        }
        byte[] valueBytes = counterReportApi.getValueBytes();
        if (valueBytes != null) {
            c0783a6D.setValueBytes(valueBytes);
        }
        c0783a6D.q = counterReportApi.getValueProtocolVersion();
        c0783a6D.g = counterReportApi.getBytesTruncated();
        C1353w9 c1353w9 = this.c;
        c1353w9.a(c0783a6D, C1030jl.a(c1353w9.c.b(c0783a6D), c0783a6D.i));
    }
}
