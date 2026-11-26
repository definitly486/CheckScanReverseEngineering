package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.provider.api.PushServiceController;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.c2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1454c2 implements u2 {
    public final C1450b2 a;

    public C1454c2(C1450b2 c1450b2) {
        this.a = c1450b2;
    }

    @Override // io.appmetrica.analytics.push.impl.u2
    public final boolean a(t2 t2Var) {
        C1450b2 c1450b2 = this.a;
        if (c1450b2 == null) {
            return true;
        }
        String str = t2Var.b;
        if (str == null) {
            str = "";
        }
        PushServiceController pushServiceController = (PushServiceController) c1450b2.b.get(t2Var.a);
        if (pushServiceController != null) {
            return pushServiceController.shouldSendToken(str);
        }
        return false;
    }

    @Override // io.appmetrica.analytics.push.impl.u2
    public final String a() {
        return "shouldSendTokenForProvider";
    }
}
