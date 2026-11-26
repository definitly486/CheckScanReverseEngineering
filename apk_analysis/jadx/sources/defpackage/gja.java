package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.Common;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class gja implements GoogleApiClient.ConnectionCallbacks {
    public final /* synthetic */ AtomicReference a;
    public final /* synthetic */ StatusPendingResult b;
    public final /* synthetic */ zaaz l;

    public gja(zaaz zaazVar, AtomicReference atomicReference, StatusPendingResult statusPendingResult) {
        this.a = atomicReference;
        this.b = statusPendingResult;
        this.l = zaazVar;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        GoogleApiClient googleApiClient = (GoogleApiClient) Preconditions.checkNotNull((GoogleApiClient) this.a.get());
        Common.zaa.zaa(googleApiClient).setResultCallback(new ija(this.l, this.b, true, googleApiClient));
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
