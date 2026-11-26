package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements BaseGmsClient.BaseConnectionCallbacks {
    public final /* synthetic */ ConnectionCallbacks b;

    public a(ConnectionCallbacks connectionCallbacks) {
        this.b = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.b.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.b.onConnectionSuspended(i);
    }
}
