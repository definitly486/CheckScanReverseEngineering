package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zan;
import com.google.android.gms.internal.base.zar;
import defpackage.ema;
import defpackage.gma;
import defpackage.ima;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements zabu {
    public final Context a;
    public final zaaz b;
    public final Looper l;
    public final zabd m;
    public final zabd n;
    public final Map o;
    public final Api.Client q;
    public Bundle r;
    public final Lock v;
    public final Set p = Collections.newSetFromMap(new WeakHashMap());
    public ConnectionResult s = null;
    public ConnectionResult t = null;
    public boolean u = false;
    public int w = 0;

    public f(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, ArrayMap arrayMap, ArrayMap arrayMap2, ClientSettings clientSettings, Api.AbstractClientBuilder abstractClientBuilder, Api.Client client, ArrayList arrayList, ArrayList arrayList2, ArrayMap arrayMap3, ArrayMap arrayMap4) {
        this.a = context;
        this.b = zaazVar;
        this.v = lock;
        this.l = looper;
        this.q = client;
        this.m = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, arrayMap2, null, arrayMap4, null, arrayList2, new gma(this));
        this.n = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, arrayMap, clientSettings, arrayMap3, abstractClientBuilder, arrayList, new ima(this));
        ArrayMap arrayMap5 = new ArrayMap();
        Iterator it = arrayMap2.keySet().iterator();
        while (it.hasNext()) {
            arrayMap5.put((Api.AnyClientKey) it.next(), this.m);
        }
        Iterator it2 = arrayMap.keySet().iterator();
        while (it2.hasNext()) {
            arrayMap5.put((Api.AnyClientKey) it2.next(), this.n);
        }
        this.o = Collections.unmodifiableMap(arrayMap5);
    }

    public final void a() {
        Set set = this.p;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((SignInConnectionListener) it.next()).onComplete();
        }
        set.clear();
    }

    public final boolean b() {
        ConnectionResult connectionResult = this.t;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    public final PendingIntent c() {
        Api.Client client = this.q;
        if (client == null) {
            return null;
        }
        return zan.zaa(this.a, System.identityHashCode(this.b), client.getSignInIntent(), zan.zaa | 134217728);
    }

    public final void d() {
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        ConnectionResult connectionResult3 = this.s;
        zabd zabdVar = this.m;
        if (connectionResult3 == null || !connectionResult3.isSuccess()) {
            ConnectionResult connectionResult4 = this.s;
            zabd zabdVar2 = this.n;
            if (connectionResult4 != null && (connectionResult2 = this.t) != null && connectionResult2.isSuccess()) {
                zabdVar2.zah();
                e((ConnectionResult) Preconditions.checkNotNull(this.s));
                return;
            }
            ConnectionResult connectionResult5 = this.s;
            if (connectionResult5 == null || (connectionResult = this.t) == null) {
                return;
            }
            if (zabdVar2.v < zabdVar.v) {
                connectionResult5 = connectionResult;
            }
            e(connectionResult5);
            return;
        }
        ConnectionResult connectionResult6 = this.t;
        if ((connectionResult6 == null || !connectionResult6.isSuccess()) && !b()) {
            ConnectionResult connectionResult7 = this.t;
            if (connectionResult7 != null) {
                if (this.w == 1) {
                    a();
                    return;
                } else {
                    e(connectionResult7);
                    zabdVar.zah();
                    return;
                }
            }
            return;
        }
        int i = this.w;
        if (i == 1) {
            a();
        } else if (i != 2) {
            Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
        } else {
            ((zaaz) Preconditions.checkNotNull(this.b)).zaa(this.r);
            a();
        }
        this.w = 0;
    }

    public final void e(ConnectionResult connectionResult) {
        int i = this.w;
        if (i == 1) {
            a();
        } else if (i != 2) {
            Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
        } else {
            this.b.zab(connectionResult);
            a();
        }
        this.w = 0;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zabd zabdVar = (zabd) this.o.get(apiMethodImpl.getClientKey());
        Preconditions.checkNotNull(zabdVar, "GoogleApiClient is not configured to use the API required for this call.");
        zabd zabdVar2 = this.n;
        if (!zabdVar.equals(zabdVar2)) {
            this.m.zab(apiMethodImpl);
            return apiMethodImpl;
        }
        if (b()) {
            apiMethodImpl.setFailedResult(new Status(4, (String) null, c()));
            return apiMethodImpl;
        }
        zabdVar2.zab(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final BaseImplementation.ApiMethodImpl zac(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zabd zabdVar = (zabd) this.o.get(apiMethodImpl.getClientKey());
        Preconditions.checkNotNull(zabdVar, "GoogleApiClient is not configured to use the API required for this call.");
        zabd zabdVar2 = this.n;
        if (!zabdVar.equals(zabdVar2)) {
            return this.m.zac(apiMethodImpl);
        }
        if (!b()) {
            return zabdVar2.zac(apiMethodImpl);
        }
        apiMethodImpl.setFailedResult(new Status(4, (String) null, c()));
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zad(Api api) {
        Object obj = this.o.get(api.zac());
        zabd zabdVar = this.n;
        if (Objects.equal(obj, zabdVar)) {
            return b() ? new ConnectionResult(4, c()) : zabdVar.zad(api);
        }
        return this.m.zad(api);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zae() {
        this.w = 2;
        this.u = false;
        this.t = null;
        this.s = null;
        this.m.zae();
        this.n.zae();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zaf() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zag(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zah() {
        this.t = null;
        this.s = null;
        this.w = 0;
        this.m.zah();
        this.n.zah();
        a();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zai() {
        Lock lock = this.v;
        lock.lock();
        try {
            boolean z = false;
            if (this.m.zai() && (this.n.zai() || b() || this.w == 1)) {
                z = true;
            }
            return z;
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zaj() {
        Lock lock = this.v;
        lock.lock();
        try {
            return this.w == 2;
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zak(SignInConnectionListener signInConnectionListener) {
        Lock lock = this.v;
        lock.lock();
        try {
            boolean z = false;
            if (zaj() || zai()) {
                zabd zabdVar = this.n;
                if (!zabdVar.zai()) {
                    this.p.add(signInConnectionListener);
                    z = true;
                    if (this.w == 0) {
                        this.w = 1;
                    }
                    this.t = null;
                    zabdVar.zae();
                }
            }
            return z;
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zal() {
        this.m.zal();
        this.n.zal();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zam() {
        Lock lock = this.v;
        lock.lock();
        try {
            boolean zZaj = zaj();
            this.n.zah();
            this.t = new ConnectionResult(4);
            if (zZaj) {
                new zar(this.l).post(new ema(this));
            } else {
                a();
            }
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zan(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(StringUtils.PROCESS_POSTFIX_DELIMITER);
        this.n.zan(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(StringUtils.PROCESS_POSTFIX_DELIMITER);
        this.m.zan(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }
}
