package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.zad;
import defpackage.kka;
import defpackage.lka;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zacl extends com.google.android.gms.signin.internal.zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public static final Api.AbstractClientBuilder q = zad.zac;
    public final Context a;
    public final Handler b;
    public final Api.AbstractClientBuilder l = q;
    public final Set m;
    public final ClientSettings n;
    public com.google.android.gms.signin.zae o;
    public zack p;

    public zacl(Context context, Handler handler, ClientSettings clientSettings) {
        this.a = context;
        this.b = handler;
        this.n = (ClientSettings) Preconditions.checkNotNull(clientSettings, "ClientSettings must not be null");
        this.m = clientSettings.getRequiredScopes();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.o.zaa(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.p.zaa(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.p.zab(i);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void zab(com.google.android.gms.signin.internal.zak zakVar) {
        this.b.post(new lka(this, zakVar));
    }

    public final void zac(zack zackVar) {
        com.google.android.gms.signin.zae zaeVar = this.o;
        if (zaeVar != null) {
            zaeVar.disconnect();
        }
        Integer numValueOf = Integer.valueOf(System.identityHashCode(this));
        ClientSettings clientSettings = this.n;
        clientSettings.zae(numValueOf);
        Handler handler = this.b;
        this.o = (com.google.android.gms.signin.zae) this.l.buildClient(this.a, handler.getLooper(), clientSettings, clientSettings.zac(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);
        this.p = zackVar;
        Set set = this.m;
        if (set == null || set.isEmpty()) {
            handler.post(new kka(this));
        } else {
            this.o.zad();
        }
    }

    public final void zad() {
        com.google.android.gms.signin.zae zaeVar = this.o;
        if (zaeVar != null) {
            zaeVar.disconnect();
        }
    }
}
