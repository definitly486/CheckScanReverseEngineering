package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.el, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0901el {
    public final String a;
    public final Zk b;
    public final C0876dl c;
    public final IBinaryDataHelper d;

    public C0901el(Context context, C0808b5 c0808b5) {
        c0808b5.a();
        this.a = "session_extras";
        this.b = new Zk();
        this.c = new C0876dl();
        this.d = Fa.k().B().a(context, c0808b5);
    }

    public final Map a() {
        try {
            byte[] bArr = this.d.get(this.a);
            if (bArr != null) {
                if (!(bArr.length == 0)) {
                    return this.b.toModel(this.c.toState(bArr));
                }
            }
        } catch (Throwable unused) {
        }
        Zk zk = this.b;
        this.c.getClass();
        return zk.toModel(new C0824bl());
    }
}
