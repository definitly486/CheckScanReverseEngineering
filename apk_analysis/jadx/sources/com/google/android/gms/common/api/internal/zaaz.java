package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.Common;
import com.google.android.gms.common.util.ClientLibraryUtils;
import defpackage.ah;
import defpackage.dg;
import defpackage.gja;
import defpackage.hja;
import defpackage.ija;
import defpackage.jja;
import defpackage.kja;
import defpackage.kq5;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class zaaz extends GoogleApiClient implements zabt {
    public final Lock c;
    public final com.google.android.gms.common.internal.zap d;
    public final int f;
    public final Context g;
    public final Looper h;
    public volatile boolean j;
    public final long k;
    public final long l;
    public final jja m;
    public final GoogleApiAvailability n;
    public zabr o;
    public final Map p;
    public Set q;
    public final ClientSettings r;
    public final Map s;
    public final Api.AbstractClientBuilder t;
    public final ListenerHolders u;
    public final ArrayList v;
    public Integer w;
    public HashSet x;
    public final zact y;
    public zabu e = null;
    public final LinkedList i = new LinkedList();

    public zaaz(Context context, Lock lock, Looper looper, ClientSettings clientSettings, GoogleApiAvailability googleApiAvailability, Api.AbstractClientBuilder abstractClientBuilder, Map map, List list, List list2, Map map2, int i, int i2, ArrayList arrayList) {
        this.k = true != ClientLibraryUtils.isPackageSide() ? 120000L : 10000L;
        this.l = 5000L;
        this.q = new HashSet();
        this.u = new ListenerHolders();
        this.w = null;
        this.x = null;
        kq5 kq5Var = new kq5(this);
        this.g = context;
        this.c = lock;
        this.d = new com.google.android.gms.common.internal.zap(looper, kq5Var);
        this.h = looper;
        this.m = new jja(this, looper);
        this.n = googleApiAvailability;
        this.f = i;
        if (i >= 0) {
            this.w = Integer.valueOf(i2);
        }
        this.s = map;
        this.p = map2;
        this.v = arrayList;
        this.y = new zact();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.d.zaf((GoogleApiClient.ConnectionCallbacks) it.next());
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            this.d.zai((GoogleApiClient.OnConnectionFailedListener) it2.next());
        }
        this.r = clientSettings;
        this.t = abstractClientBuilder;
    }

    public static int zaf(Iterable iterable, boolean z) {
        Iterator it = iterable.iterator();
        boolean zRequiresSignIn = false;
        boolean zProvidesSignIn = false;
        while (it.hasNext()) {
            Api.Client client = (Api.Client) it.next();
            zRequiresSignIn |= client.requiresSignIn();
            zProvidesSignIn |= client.providesSignIn();
        }
        if (zRequiresSignIn) {
            return (zProvidesSignIn && z) ? 2 : 1;
        }
        return 3;
    }

    public final boolean a() {
        if (!this.j) {
            return false;
        }
        this.j = false;
        jja jjaVar = this.m;
        jjaVar.removeMessages(2);
        jjaVar.removeMessages(1);
        zabr zabrVar = this.o;
        if (zabrVar != null) {
            zabrVar.zab();
            this.o = null;
        }
        return true;
    }

    public final String b() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect() {
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        Lock lock = this.c;
        lock.lock();
        try {
            int i = this.f;
            Integer num = this.w;
            if (i >= 0) {
                Preconditions.checkState(num != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (num == null) {
                this.w = Integer.valueOf(zaf(this.p.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            d(((Integer) Preconditions.checkNotNull(this.w)).intValue());
            this.d.zab();
            ConnectionResult connectionResultZaf = ((zabu) Preconditions.checkNotNull(this.e)).zaf();
            lock.unlock();
            return connectionResultZaf;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    public final /* synthetic */ void c() {
        this.c.lock();
        try {
            if (this.j) {
                e();
            }
        } finally {
            this.c.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final PendingResult<Status> clearDefaultAccountAndReconnect() {
        Preconditions.checkState(isConnected(), "GoogleApiClient is not connected yet.");
        Integer num = this.w;
        boolean z = true;
        if (num != null && num.intValue() == 2) {
            z = false;
        }
        Preconditions.checkState(z, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        StatusPendingResult statusPendingResult = new StatusPendingResult(this);
        if (this.p.containsKey(Common.CLIENT_KEY)) {
            Common.zaa.zaa(this).setResultCallback(new ija(this, statusPendingResult, false, this));
            return statusPendingResult;
        }
        AtomicReference atomicReference = new AtomicReference();
        gja gjaVar = new gja(this, atomicReference, statusPendingResult);
        hja hjaVar = new hja(this, statusPendingResult);
        GoogleApiClient.Builder builder = new GoogleApiClient.Builder(this.g);
        builder.addApi(Common.API);
        builder.addConnectionCallbacks(gjaVar);
        builder.addOnConnectionFailedListener(hjaVar);
        builder.setHandler(this.m);
        GoogleApiClient googleApiClientBuild = builder.build();
        atomicReference.set(googleApiClientBuild);
        googleApiClientBuild.connect();
        return statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect() {
        Lock lock = this.c;
        lock.lock();
        try {
            int i = this.f;
            Integer num = this.w;
            int i2 = 2;
            boolean z = false;
            if (i >= 0) {
                Preconditions.checkState(num != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (num == null) {
                this.w = Integer.valueOf(zaf(this.p.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            int iIntValue = ((Integer) Preconditions.checkNotNull(this.w)).intValue();
            lock.lock();
            try {
                if (iIntValue != 3 && iIntValue != 1) {
                    if (iIntValue != 2) {
                        i2 = iIntValue;
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 22);
                    sb.append("Illegal sign-in mode: ");
                    sb.append(i2);
                    Preconditions.checkArgument(z, sb.toString());
                    d(i2);
                    e();
                    lock.unlock();
                    return;
                }
                i2 = iIntValue;
                StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 22);
                sb2.append("Illegal sign-in mode: ");
                sb2.append(i2);
                Preconditions.checkArgument(z, sb2.toString());
                d(i2);
                e();
                lock.unlock();
                return;
            } finally {
                lock.unlock();
            }
            z = true;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    public final void d(int i) {
        String str;
        Integer num = this.w;
        if (num == null) {
            this.w = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            int iIntValue = this.w.intValue();
            String str2 = "SIGN_IN_MODE_REQUIRED";
            if (iIntValue == 1) {
                str = "SIGN_IN_MODE_REQUIRED";
            } else if (iIntValue != 2) {
                str = iIntValue != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE";
            } else {
                str = "SIGN_IN_MODE_OPTIONAL";
            }
            if (i != 1) {
                str2 = i != 2 ? i != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL";
            }
            throw new IllegalStateException(dg.c(new StringBuilder(str.length() + str2.length() + 51), "Cannot use sign-in mode: ", str2, ". Mode was already set to ", str));
        }
        if (this.e != null) {
            return;
        }
        Map map = this.p;
        boolean zRequiresSignIn = false;
        boolean zProvidesSignIn = false;
        for (Api.Client client : map.values()) {
            zRequiresSignIn |= client.requiresSignIn();
            zProvidesSignIn |= client.providesSignIn();
        }
        int iIntValue2 = this.w.intValue();
        if (iIntValue2 != 1) {
            if (iIntValue2 == 2 && zRequiresSignIn) {
                ArrayMap arrayMap = new ArrayMap();
                ArrayMap arrayMap2 = new ArrayMap();
                Api.Client client2 = null;
                for (Map.Entry entry : map.entrySet()) {
                    Api.Client client3 = (Api.Client) entry.getValue();
                    if (true == client3.providesSignIn()) {
                        client2 = client3;
                    }
                    if (client3.requiresSignIn()) {
                        arrayMap.put((Api.AnyClientKey) entry.getKey(), client3);
                    } else {
                        arrayMap2.put((Api.AnyClientKey) entry.getKey(), client3);
                    }
                }
                Preconditions.checkState(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
                ArrayMap arrayMap3 = new ArrayMap();
                ArrayMap arrayMap4 = new ArrayMap();
                Map map2 = this.s;
                for (Api api : map2.keySet()) {
                    Api.AnyClientKey anyClientKeyZac = api.zac();
                    if (arrayMap.containsKey(anyClientKeyZac)) {
                        arrayMap3.put(api, (Boolean) map2.get(api));
                    } else {
                        if (!arrayMap2.containsKey(anyClientKeyZac)) {
                            ah.f("Each API in the isOptionalMap must have a corresponding client in the clients map.");
                            return;
                        }
                        arrayMap4.put(api, (Boolean) map2.get(api));
                    }
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = this.v;
                int size = arrayList3.size();
                for (int i2 = 0; i2 < size; i2++) {
                    zas zasVar = (zas) arrayList3.get(i2);
                    Api api2 = zasVar.zaa;
                    if (arrayMap3.containsKey(api2)) {
                        arrayList.add(zasVar);
                    } else {
                        if (!arrayMap4.containsKey(api2)) {
                            ah.f("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
                            return;
                        }
                        arrayList2.add(zasVar);
                    }
                }
                this.e = new f(this.g, this, this.c, this.h, this.n, arrayMap, arrayMap2, this.r, this.t, client2, arrayList, arrayList2, arrayMap3, arrayMap4);
                return;
            }
        } else if (!zRequiresSignIn) {
            ah.f("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            return;
        } else {
            if (zProvidesSignIn) {
                ah.f("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                return;
            }
            map = map;
        }
        this.e = new zabd(this.g, this, this.c, this.h, this.n, map, this.r, this.s, this.t, this.v, this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void disconnect() {
        Lock lock = this.c;
        lock.lock();
        try {
            this.y.zab();
            zabu zabuVar = this.e;
            if (zabuVar != null) {
                zabuVar.zah();
            }
            this.u.zab();
            LinkedList<BaseImplementation.ApiMethodImpl> linkedList = this.i;
            for (BaseImplementation.ApiMethodImpl apiMethodImpl : linkedList) {
                apiMethodImpl.zan(null);
                apiMethodImpl.cancel();
            }
            linkedList.clear();
            if (this.e != null) {
                a();
                this.d.zaa();
            }
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.g);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.j);
        printWriter.append(" mWorkQueue.size()=").print(this.i.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.y.a.size());
        zabu zabuVar = this.e;
        if (zabuVar != null) {
            zabuVar.zan(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final void e() {
        this.d.zab();
        ((zabu) Preconditions.checkNotNull(this.e)).zae();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        Api<?> api = t.getApi();
        boolean zContainsKey = this.p.containsKey(t.getClientKey());
        String strZad = api != null ? api.zad() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(strZad).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(strZad);
        sb.append(" required for this call.");
        Preconditions.checkArgument(zContainsKey, sb.toString());
        Lock lock = this.c;
        lock.lock();
        try {
            zabu zabuVar = this.e;
            if (zabuVar == null) {
                this.i.add(t);
            } else {
                t = (T) zabuVar.zab(t);
            }
            return t;
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        Map map = this.p;
        Api<?> api = t.getApi();
        boolean zContainsKey = map.containsKey(t.getClientKey());
        String strZad = api != null ? api.zad() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(strZad).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(strZad);
        sb.append(" required for this call.");
        Preconditions.checkArgument(zContainsKey, sb.toString());
        Lock lock = this.c;
        lock.lock();
        try {
            zabu zabuVar = this.e;
            if (zabuVar == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (!this.j) {
                T t2 = (T) zabuVar.zac(t);
                this.c.unlock();
                return t2;
            }
            LinkedList linkedList = this.i;
            linkedList.add(t);
            while (!linkedList.isEmpty()) {
                BaseImplementation.ApiMethodImpl apiMethodImpl = (BaseImplementation.ApiMethodImpl) linkedList.remove();
                zact zactVar = this.y;
                zactVar.a.add(apiMethodImpl);
                apiMethodImpl.zan(zactVar.b);
                apiMethodImpl.setFailedResult(Status.RESULT_INTERNAL_ERROR);
            }
            lock.unlock();
            return t;
        } catch (Throwable th) {
            this.c.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <C extends Api.Client> C getClient(Api.AnyClientKey<C> anyClientKey) {
        C c = (C) this.p.get(anyClientKey);
        Preconditions.checkNotNull(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult getConnectionResult(Api<?> api) {
        ConnectionResult connectionResult;
        Lock lock = this.c;
        lock.lock();
        try {
            if (!isConnected() && !this.j) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.p.containsKey(api.zac())) {
                String strZad = api.zad();
                StringBuilder sb = new StringBuilder(String.valueOf(strZad).length() + 42);
                sb.append(strZad);
                sb.append(" was never registered with GoogleApiClient");
                throw new IllegalArgumentException(sb.toString());
            }
            ConnectionResult connectionResultZad = ((zabu) Preconditions.checkNotNull(this.e)).zad(api);
            if (connectionResultZad != null) {
                lock.unlock();
                return connectionResultZad;
            }
            if (this.j) {
                connectionResult = ConnectionResult.RESULT_SUCCESS;
            } else {
                Log.w("GoogleApiClientImpl", b());
                String strZad2 = api.zad();
                StringBuilder sb2 = new StringBuilder(String.valueOf(strZad2).length() + 100);
                sb2.append(strZad2);
                sb2.append(" requested in getConnectionResult is not connected but is not present in the failed  connections map");
                Log.wtf("GoogleApiClientImpl", sb2.toString(), new Exception());
                connectionResult = new ConnectionResult(8, null);
            }
            lock.unlock();
            return connectionResult;
        } catch (Throwable th) {
            this.c.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.g;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.h;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasApi(Api<?> api) {
        return this.p.containsKey(api.zac());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasConnectedApi(Api<?> api) {
        Api.Client client;
        return isConnected() && (client = (Api.Client) this.p.get(api.zac())) != null && client.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnected() {
        zabu zabuVar = this.e;
        return zabuVar != null && zabuVar.zai();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnecting() {
        zabu zabuVar = this.e;
        return zabuVar != null && zabuVar.zaj();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.d.zag(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.d.zaj(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        zabu zabuVar = this.e;
        return zabuVar != null && zabuVar.zak(signInConnectionListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void maybeSignOut() {
        zabu zabuVar = this.e;
        if (zabuVar != null) {
            zabuVar.zam();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.d.zaf(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.d.zai(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <L> ListenerHolder<L> registerListener(L l) {
        Lock lock = this.c;
        lock.lock();
        try {
            return this.u.zaa(l, this.h, "NO_TYPE");
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void stopAutoManage(FragmentActivity fragmentActivity) {
        LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
        int i = this.f;
        if (i >= 0) {
            zak.zaa(lifecycleActivity).zac(i);
        } else {
            ah.f("Called stopAutoManage but automatic lifecycle management is not enabled.");
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.d.zah(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.d.zak(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zaa(Bundle bundle) {
        while (true) {
            LinkedList linkedList = this.i;
            if (linkedList.isEmpty()) {
                this.d.zac(bundle);
                return;
            }
            execute((BaseImplementation.ApiMethodImpl) linkedList.remove());
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(ConnectionResult connectionResult) {
        if (!this.n.isPlayServicesPossiblyUpdating(this.g, connectionResult.getErrorCode())) {
            a();
        }
        if (this.j) {
            return;
        }
        com.google.android.gms.common.internal.zap zapVar = this.d;
        zapVar.zae(connectionResult);
        zapVar.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zac(int i, boolean z) {
        if (i == 1) {
            if (!z && !this.j) {
                this.j = true;
                if (this.o == null && !ClientLibraryUtils.isPackageSide()) {
                    try {
                        this.o = this.n.zag(this.g.getApplicationContext(), new kja(this));
                    } catch (SecurityException unused) {
                    }
                }
                jja jjaVar = this.m;
                jjaVar.sendMessageDelayed(jjaVar.obtainMessage(1), this.k);
                jjaVar.sendMessageDelayed(jjaVar.obtainMessage(2), this.l);
            }
            i = 1;
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.y.a.toArray(new BasePendingResult[0])) {
            basePendingResult.forceFailureUnlessReady(zact.zaa);
        }
        com.google.android.gms.common.internal.zap zapVar = this.d;
        zapVar.zad(i);
        zapVar.zaa();
        if (i == 2) {
            e();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zao(zacr zacrVar) {
        Lock lock = this.c;
        lock.lock();
        try {
            HashSet hashSet = this.x;
            if (hashSet == null) {
                hashSet = new HashSet();
                this.x = hashSet;
            }
            hashSet.add(zacrVar);
        } finally {
            lock.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zap(zacr zacrVar) {
        Lock lock = this.c;
        lock.lock();
        try {
            HashSet hashSet = this.x;
            if (hashSet == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (hashSet.remove(zacrVar)) {
                lock.lock();
                try {
                    HashSet hashSet2 = this.x;
                    if (hashSet2 == null) {
                        lock.unlock();
                    } else {
                        boolean zIsEmpty = hashSet2.isEmpty();
                        lock.unlock();
                        if (zIsEmpty) {
                        }
                    }
                    zabu zabuVar = this.e;
                    if (zabuVar != null) {
                        zabuVar.zal();
                    }
                } finally {
                    lock.unlock();
                }
            } else {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            }
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        Lock lock = this.c;
        lock.lock();
        try {
            Integer num = this.w;
            if (num == null) {
                this.w = Integer.valueOf(zaf(this.p.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            d(((Integer) Preconditions.checkNotNull(this.w)).intValue());
            this.d.zab();
            ConnectionResult connectionResultZag = ((zabu) Preconditions.checkNotNull(this.e)).zag(j, timeUnit);
            lock.unlock();
            return connectionResultZag;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect(int i) {
        Lock lock = this.c;
        lock.lock();
        boolean z = true;
        if (i != 3 && i != 1) {
            if (i == 2) {
                i = 2;
            } else {
                z = false;
            }
        }
        try {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 22);
            sb.append("Illegal sign-in mode: ");
            sb.append(i);
            Preconditions.checkArgument(z, sb.toString());
            d(i);
            e();
        } finally {
            lock.unlock();
        }
    }
}
