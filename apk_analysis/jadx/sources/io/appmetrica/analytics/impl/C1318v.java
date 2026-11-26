package io.appmetrica.analytics.impl;

import defpackage.qn1;
import defpackage.u96;
import java.util.Collection;
import org.json.JSONArray;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1318v implements InterfaceC1368x {
    public final String a = "yandex";

    public final String a() {
        try {
            return new JSONArray((Collection) qn1.h0(C1169p4.l().m().a(), u96.h(this.a))).toString();
        } catch (Throwable unused) {
            return null;
        }
    }
}
