package io.appmetrica.analytics.impl;

import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.mj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1106mj extends Ug {
    public C1106mj(C0989i5 c0989i5) {
        super(c0989i5);
        c0989i5.a().a();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0038  */
    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        Object objRemove;
        for (Map.Entry entry : c0783a6.p.entrySet()) {
            C0798al c0798al = this.a.u;
            String str = (String) entry.getKey();
            byte[] bArr = (byte[]) entry.getValue();
            if (bArr != null) {
                c0798al.getClass();
                if (bArr.length == 0) {
                    objRemove = c0798al.b.remove(str);
                } else {
                    objRemove = c0798al.b.put(str, bArr);
                }
            } else {
                objRemove = c0798al.b.remove(str);
            }
            C0901el c0901el = c0798al.a;
            c0901el.d.insert(c0901el.a, c0901el.c.toByteArray(c0901el.b.fromModel(c0798al.b)));
        }
        return true;
    }
}
