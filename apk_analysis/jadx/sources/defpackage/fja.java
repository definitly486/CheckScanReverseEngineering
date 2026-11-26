package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.zae;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class fja implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public final /* synthetic */ zaar a;

    public /* synthetic */ fja(zaar zaarVar) {
        this.a = zaarVar;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zaar zaarVar = this.a;
        ((zae) Preconditions.checkNotNull(zaarVar.k)).zaa(new eja(zaarVar));
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zaar zaarVar = this.a;
        Lock lock = zaarVar.b;
        lock.lock();
        try {
            if (zaarVar.l && !connectionResult.hasResolution()) {
                zaarVar.d();
                zaarVar.a();
            } else {
                zaarVar.e(connectionResult);
            }
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
