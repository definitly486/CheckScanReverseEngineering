package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.bja;
import defpackage.cja;
import defpackage.dg;
import defpackage.fja;
import defpackage.xia;
import defpackage.yia;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class zaar implements zaba {
    public final zabd a;
    public final Lock b;
    public final Context c;
    public final GoogleApiAvailabilityLight d;
    public ConnectionResult e;
    public int f;
    public int h;
    public com.google.android.gms.signin.zae k;
    public boolean l;
    public boolean m;
    public boolean n;
    public IAccountAccessor o;
    public boolean p;
    public boolean q;
    public final ClientSettings r;
    public final Map s;
    public final Api.AbstractClientBuilder t;
    public int g = 0;
    public final Bundle i = new Bundle();
    public final HashSet j = new HashSet();
    public final ArrayList u = new ArrayList();

    public zaar(zabd zabdVar, ClientSettings clientSettings, Map map, GoogleApiAvailabilityLight googleApiAvailabilityLight, Api.AbstractClientBuilder abstractClientBuilder, Lock lock, Context context) {
        this.a = zabdVar;
        this.r = clientSettings;
        this.s = map;
        this.d = googleApiAvailabilityLight;
        this.t = abstractClientBuilder;
        this.b = lock;
        this.c = context;
    }

    public final void a() {
        if (this.h != 0) {
            return;
        }
        if (!this.m || this.n) {
            ArrayList arrayList = new ArrayList();
            this.g = 1;
            zabd zabdVar = this.a;
            Map map = zabdVar.o;
            this.h = map.size();
            for (Api.AnyClientKey anyClientKey : map.keySet()) {
                if (!zabdVar.p.containsKey(anyClientKey)) {
                    arrayList.add((Api.Client) map.get(anyClientKey));
                } else if (h()) {
                    b();
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.u.add(zabe.zaa().submit(new cja(this, arrayList)));
        }
    }

    public final void b() {
        zabd zabdVar = this.a;
        zabdVar.a.lock();
        try {
            zabdVar.w.a();
            zabdVar.t = new zaag(zabdVar);
            zabdVar.t.zaa();
            zabdVar.b.signalAll();
            zabdVar.a.unlock();
            zabe.zaa().execute(new xia(this));
            com.google.android.gms.signin.zae zaeVar = this.k;
            if (zaeVar != null) {
                if (this.p) {
                    zaeVar.zab((IAccountAccessor) Preconditions.checkNotNull(this.o), this.q);
                }
                f(false);
            }
            Iterator it = zabdVar.p.keySet().iterator();
            while (it.hasNext()) {
                ((Api.Client) Preconditions.checkNotNull((Api.Client) zabdVar.o.get((Api.AnyClientKey) it.next()))).disconnect();
            }
            Bundle bundle = this.i;
            if (true == bundle.isEmpty()) {
                bundle = null;
            }
            zabdVar.x.zaa(bundle);
        } catch (Throwable th) {
            zabdVar.a.unlock();
            throw th;
        }
    }

    public final void c(ConnectionResult connectionResult, Api api, boolean z) {
        int priority = api.zaa().getPriority();
        if ((!z || connectionResult.hasResolution() || this.d.getErrorResolutionIntent(connectionResult.getErrorCode()) != null) && (this.e == null || priority < this.f)) {
            this.e = connectionResult;
            this.f = priority;
        }
        this.a.p.put(api.zac(), connectionResult);
    }

    public final void d() {
        this.m = false;
        zabd zabdVar = this.a;
        zabdVar.w.q = Collections.EMPTY_SET;
        for (Api.AnyClientKey anyClientKey : this.j) {
            HashMap map = zabdVar.p;
            if (!map.containsKey(anyClientKey)) {
                map.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    public final void e(ConnectionResult connectionResult) {
        ArrayList arrayList = this.u;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Future) arrayList.get(i)).cancel(true);
        }
        arrayList.clear();
        f(!connectionResult.hasResolution());
        zabd zabdVar = this.a;
        zabdVar.a(connectionResult);
        zabdVar.x.zab(connectionResult);
    }

    public final void f(boolean z) {
        com.google.android.gms.signin.zae zaeVar = this.k;
        if (zaeVar != null) {
            if (zaeVar.isConnected() && z) {
                zaeVar.zac();
            }
            zaeVar.disconnect();
            this.o = null;
        }
    }

    public final boolean g(int i) {
        if (this.g == i) {
            return true;
        }
        Log.w("GACConnecting", this.a.w.b());
        Log.w("GACConnecting", "Unexpected callback in ".concat(toString()));
        int i2 = this.h;
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 22);
        sb.append("mRemainingConnections=");
        sb.append(i2);
        Log.w("GACConnecting", sb.toString());
        String str = this.g != 0 ? "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
        String str2 = i != 0 ? "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
        Log.e("GACConnecting", dg.c(new StringBuilder(str2.length() + str.length() + 70), "GoogleApiClient connecting is in step ", str, " but received callback for step ", str2), new Exception());
        e(new ConnectionResult(8, null));
        return false;
    }

    public final boolean h() {
        int i = this.h - 1;
        this.h = i;
        if (i > 0) {
            return false;
        }
        zabd zabdVar = this.a;
        if (i < 0) {
            Log.w("GACConnecting", zabdVar.w.b());
            Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            e(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.e;
        if (connectionResult == null) {
            return true;
        }
        zabdVar.v = this.f;
        e(connectionResult);
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaa() {
        zabd zabdVar = this.a;
        HashMap map = zabdVar.p;
        Map map2 = zabdVar.o;
        map.clear();
        this.m = false;
        this.e = null;
        this.g = 0;
        this.l = true;
        this.n = false;
        this.p = false;
        HashMap map3 = new HashMap();
        Map map4 = this.s;
        boolean z = false;
        for (Api api : map4.keySet()) {
            Api.Client client = (Api.Client) Preconditions.checkNotNull((Api.Client) map2.get(api.zac()));
            z |= api.zaa().getPriority() == 1;
            boolean zBooleanValue = ((Boolean) map4.get(api)).booleanValue();
            if (client.requiresSignIn()) {
                this.m = true;
                if (zBooleanValue) {
                    this.j.add(api.zac());
                } else {
                    this.l = false;
                }
            }
            map3.put(client, new yia(this, api, zBooleanValue));
        }
        if (z) {
            this.m = false;
        }
        if (this.m) {
            ClientSettings clientSettings = this.r;
            Preconditions.checkNotNull(clientSettings);
            Api.AbstractClientBuilder abstractClientBuilder = this.t;
            Preconditions.checkNotNull(abstractClientBuilder);
            zaaz zaazVar = zabdVar.w;
            clientSettings.zae(Integer.valueOf(System.identityHashCode(zaazVar)));
            fja fjaVar = new fja(this);
            this.k = (com.google.android.gms.signin.zae) abstractClientBuilder.buildClient(this.c, zaazVar.getLooper(), clientSettings, clientSettings.zac(), (GoogleApiClient.ConnectionCallbacks) fjaVar, (GoogleApiClient.OnConnectionFailedListener) fjaVar);
        }
        this.h = map2.size();
        this.u.add(zabe.zaa().submit(new bja(this, map3)));
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        this.a.w.i.add(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final BaseImplementation.ApiMethodImpl zac(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final boolean zad() {
        ArrayList arrayList = this.u;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Future) arrayList.get(i)).cancel(true);
        }
        arrayList.clear();
        f(true);
        this.a.a(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zae() {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zaf(Bundle bundle) {
        if (g(1)) {
            if (bundle != null) {
                this.i.putAll(bundle);
            }
            if (h()) {
                b();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zag(ConnectionResult connectionResult, Api api, boolean z) {
        if (g(1)) {
            c(connectionResult, api, z);
            if (h()) {
                b();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    public final void zah(int i) {
        e(new ConnectionResult(8, null));
    }
}
