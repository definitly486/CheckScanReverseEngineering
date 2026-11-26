package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.qja;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class zabd implements zabu, zat {
    public final Lock a;
    public final Condition b;
    public final Context l;
    public final GoogleApiAvailabilityLight m;
    public final qja n;
    public final Map o;
    public final ClientSettings q;
    public final Map r;
    public final Api.AbstractClientBuilder s;
    public volatile zaba t;
    public int v;
    public final zaaz w;
    public final zabt x;
    public final HashMap p = new HashMap();
    public ConnectionResult u = null;

    public zabd(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map map, ClientSettings clientSettings, Map map2, Api.AbstractClientBuilder abstractClientBuilder, ArrayList arrayList, zabt zabtVar) {
        this.l = context;
        this.a = lock;
        this.m = googleApiAvailabilityLight;
        this.o = map;
        this.q = clientSettings;
        this.r = map2;
        this.s = abstractClientBuilder;
        this.w = zaazVar;
        this.x = zabtVar;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zas) arrayList.get(i)).zaa(this);
        }
        this.n = new qja(this, looper);
        this.b = lock.newCondition();
        this.t = new zaas(this);
    }

    public final void a(ConnectionResult connectionResult) {
        this.a.lock();
        try {
            this.u = connectionResult;
            this.t = new zaas(this);
            this.t.zaa();
            this.b.signalAll();
        } finally {
            this.a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.a.lock();
        try {
            this.t.zaf(bundle);
        } finally {
            this.a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.a.lock();
        try {
            this.t.zah(i);
        } finally {
            this.a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zat
    public final void zaa(ConnectionResult connectionResult, Api api, boolean z) {
        this.a.lock();
        try {
            this.t.zag(connectionResult, api, z);
        } finally {
            this.a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        apiMethodImpl.zak();
        this.t.zab(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final BaseImplementation.ApiMethodImpl zac(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        apiMethodImpl.zak();
        return this.t.zac(apiMethodImpl);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zad(Api api) {
        Api.AnyClientKey anyClientKeyZac = api.zac();
        Map map = this.o;
        if (!map.containsKey(anyClientKeyZac)) {
            return null;
        }
        if (((Api.Client) map.get(anyClientKeyZac)).isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        HashMap map2 = this.p;
        if (map2.containsKey(anyClientKeyZac)) {
            return (ConnectionResult) map2.get(anyClientKeyZac);
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zae() {
        this.t.zae();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zaf() {
        zae();
        while (this.t instanceof zaar) {
            try {
                this.b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (this.t instanceof zaag) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.u;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zag(long j, TimeUnit timeUnit) {
        zae();
        long nanos = timeUnit.toNanos(j);
        while (this.t instanceof zaar) {
            if (nanos <= 0) {
                zah();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.b.awaitNanos(nanos);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        if (this.t instanceof zaag) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.u;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zah() {
        if (this.t.zad()) {
            this.p.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zai() {
        return this.t instanceof zaag;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zaj() {
        return this.t instanceof zaar;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zak(SignInConnectionListener signInConnectionListener) {
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zal() {
        if (this.t instanceof zaag) {
            zaag zaagVar = (zaag) this.t;
            if (zaagVar.b) {
                zaagVar.b = false;
                zaagVar.a.w.y.zab();
                zaagVar.zad();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zam() {
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zan(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mState=").println(this.t);
        for (Api api : this.r.keySet()) {
            String strValueOf = String.valueOf(str);
            printWriter.append((CharSequence) str).append((CharSequence) api.zad()).println(StringUtils.PROCESS_POSTFIX_DELIMITER);
            ((Api.Client) Preconditions.checkNotNull((Api.Client) this.o.get(api.zac()))).dump(strValueOf.concat("  "), fileDescriptor, printWriter, strArr);
        }
    }
}
