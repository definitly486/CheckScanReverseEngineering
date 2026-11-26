package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.ResultReceiver;

/* JADX INFO: loaded from: classes5.dex */
public final class Hi extends L4 {
    public Hi(I4 i4) {
        super(i4);
    }

    @Override // io.appmetrica.analytics.impl.L4
    public final boolean a(C0783a6 c0783a6, G4 g4) {
        Bundle bundle = c0783a6.m;
        this.a.a(bundle != null ? (ResultReceiver) bundle.getParcelable("io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver") : null);
        return false;
    }
}
