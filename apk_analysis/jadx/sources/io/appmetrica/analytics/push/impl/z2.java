package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public final class z2 extends B2 {
    public final y2 a;

    public z2(Context context, y2 y2Var) {
        this.a = y2Var;
        a(new Z0(context), new I0(context));
    }

    public final void a(B2... b2Arr) {
        for (B2 b2 : b2Arr) {
            this.a.a.add(b2);
        }
    }

    @Override // io.appmetrica.analytics.push.impl.B2
    public final C2 a(PushMessage pushMessage) {
        return this.a.a(pushMessage);
    }
}
