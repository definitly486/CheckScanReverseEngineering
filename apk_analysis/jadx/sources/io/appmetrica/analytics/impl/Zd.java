package io.appmetrica.analytics.impl;

import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class Zd extends qm3 implements nl3 {
    public Zd(Object obj) {
        super(1, obj, C0791ae.class, "markCrashCompletedAndDeleteCompletedCrashes", "markCrashCompletedAndDeleteCompletedCrashes(Ljava/lang/String;)V", 0);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        C0791ae c0791ae = (C0791ae) this.receiver;
        c0791ae.a.markCrashCompleted((String) obj);
        c0791ae.a.deleteCompletedCrashes();
        return j59.a;
    }
}
