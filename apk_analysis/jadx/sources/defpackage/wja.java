package defpackage;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.IAccountAccessor;

/* JADX INFO: loaded from: classes4.dex */
public final class wja implements Runnable {
    public final /* synthetic */ ConnectionResult b;
    public final /* synthetic */ xja c;

    public wja(xja xjaVar, ConnectionResult connectionResult) {
        this.b = connectionResult;
        this.c = xjaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IAccountAccessor iAccountAccessor;
        xja xjaVar = this.c;
        GoogleApiManager googleApiManager = xjaVar.f;
        Api.Client client = xjaVar.a;
        zabk zabkVar = (zabk) googleApiManager.k.get(xjaVar.b);
        if (zabkVar == null) {
            return;
        }
        ConnectionResult connectionResult = this.b;
        if (!connectionResult.isSuccess()) {
            zabkVar.zac(connectionResult, null);
            return;
        }
        xjaVar.e = true;
        if (client.requiresSignIn()) {
            if (!xjaVar.e || (iAccountAccessor = xjaVar.c) == null) {
                return;
            }
            client.getRemoteService(iAccountAccessor, xjaVar.d);
            return;
        }
        try {
            client.getRemoteService(null, client.getScopesForConnectionlessNonSignIn());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            client.disconnect("Failed to get service from broker.");
            zabkVar.zac(new ConnectionResult(10), null);
        }
    }
}
