package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.api.internal.zack;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class xja implements BaseGmsClient.ConnectionProgressReportCallbacks, zack {
    public final Api.Client a;
    public final ApiKey b;
    public IAccountAccessor c;
    public Set d;
    public boolean e;
    public final /* synthetic */ GoogleApiManager f;

    public xja(GoogleApiManager googleApiManager, Api.Client client, ApiKey apiKey) {
        Objects.requireNonNull(googleApiManager);
        this.f = googleApiManager;
        this.c = null;
        this.d = null;
        this.e = false;
        this.a = client;
        this.b = apiKey;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        this.f.o.post(new wja(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zack
    public final void zaa(ConnectionResult connectionResult) {
        zabk zabkVar = (zabk) this.f.k.get(this.b);
        if (zabkVar != null) {
            zabkVar.zab(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zack
    public final void zab(int i) {
        zabk zabkVar = (zabk) this.f.k.get(this.b);
        if (zabkVar != null) {
            if (zabkVar.r) {
                zabkVar.zab(new ConnectionResult(17));
            } else {
                zabkVar.onConnectionSuspended(i);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zack
    public final void zac(IAccountAccessor iAccountAccessor, Set set) {
        if (iAccountAccessor == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            zaa(new ConnectionResult(4));
            return;
        }
        this.c = iAccountAccessor;
        this.d = set;
        if (this.e) {
            this.a.getRemoteService(iAccountAccessor, set);
        }
    }
}
