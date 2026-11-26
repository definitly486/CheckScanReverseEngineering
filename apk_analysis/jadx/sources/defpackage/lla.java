package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zak;

/* JADX INFO: loaded from: classes4.dex */
public final class lla implements GoogleApiClient.OnConnectionFailedListener {
    public final int a;
    public final GoogleApiClient b;
    public final GoogleApiClient.OnConnectionFailedListener l;
    public final /* synthetic */ zak m;

    public lla(zak zakVar, int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.m = zakVar;
        this.a = i;
        this.b = googleApiClient;
        this.l = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Log.d("AutoManageHelper", "beginFailureResolution for ".concat(String.valueOf(connectionResult)));
        this.m.zaf(connectionResult, this.a);
    }
}
