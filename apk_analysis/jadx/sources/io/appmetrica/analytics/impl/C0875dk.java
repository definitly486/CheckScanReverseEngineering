package io.appmetrica.analytics.impl;

import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.dk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0875dk implements InterfaceC0788ab {
    public final /* synthetic */ String a;
    public final /* synthetic */ Map b;

    public C0875dk(String str, Map map) {
        this.a = str;
        this.b = map;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportEvent(this.a, this.b);
    }
}
