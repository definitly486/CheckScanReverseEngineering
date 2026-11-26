package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.api.internal.zaaz;

/* JADX INFO: loaded from: classes4.dex */
public final class hja implements GoogleApiClient.OnConnectionFailedListener {
    public final /* synthetic */ StatusPendingResult a;

    public hja(zaaz zaazVar, StatusPendingResult statusPendingResult) {
        this.a = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.a.setResult(new Status(8));
    }
}
