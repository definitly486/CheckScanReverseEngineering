package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.base.zar;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements BackgroundDetector.BackgroundStateChangeListener {
    public final /* synthetic */ GoogleApiManager a;

    public b(GoogleApiManager googleApiManager) {
        this.a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        zar zarVar = this.a.o;
        zarVar.sendMessage(zarVar.obtainMessage(1, boolValueOf));
    }
}
