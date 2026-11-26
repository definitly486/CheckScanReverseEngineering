package io.appmetrica.analytics.impl;

import defpackage.ha1;
import defpackage.u96;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1379xa implements InterfaceC0787aa {
    public final V8 a = new V8();

    public final C1148o9[] a(byte[] bArr) {
        int i = 0;
        if (bArr == null) {
            return new C1148o9[0];
        }
        Map<String, byte[]> model = this.a.toModel(bArr);
        C1148o9[] c1148o9Arr = new C1148o9[model.size()];
        for (Object obj : model.entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            Map.Entry entry = (Map.Entry) obj;
            C1148o9 c1148o9 = new C1148o9();
            c1148o9.a = ((String) entry.getKey()).getBytes(ha1.b);
            c1148o9.b = (byte[]) entry.getValue();
            c1148o9Arr[i] = c1148o9;
            i = i2;
        }
        return c1148o9Arr;
    }
}
