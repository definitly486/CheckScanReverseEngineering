package com.google.firebase.crashlytics.internal.concurrency;

import defpackage.ll3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes4.dex */
public /* synthetic */ class CrashlyticsWorkers$Companion$checkBlockingThread$1 extends qm3 implements ll3<Boolean> {
    public CrashlyticsWorkers$Companion$checkBlockingThread$1(Object obj) {
        super(0, obj, CrashlyticsWorkers.Companion.class, "isBlockingThread", "isBlockingThread()Z", 0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final Boolean invoke() {
        return Boolean.valueOf(((CrashlyticsWorkers.Companion) this.receiver).isBlockingThread());
    }
}
